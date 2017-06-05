using System.Collections;
using System.Net;
using System.Text;
using UnityEngine;

namespace NCSpeedLight
{
    public class HttpListener
    {
        public enum Status
        {
            None = 0,
            OK = 1,
            NetworkError = 2,
            HostError = 3,
        }

        public delegate void StatusDelegate(Status last, Status current, WWW www);

        private StatusDelegate Handler;
        private string URL;
        public Status LastStatus;
        public Status CurrentStatus;
        private float Interval;
        private Coroutine CR;

        public HttpListener(string url, float interval, StatusDelegate handler)
        {
            URL = url;
            Interval = interval;
            Handler = handler;
            LastStatus = Status.None;
            CurrentStatus = Status.None;
        }

        public void Start()
        {
            CR = Loom.StartCR(ProcessCheck());
        }

        public void Stop()
        {
            Loom.StopCR(CR);
        }

        private IEnumerator ProcessCheck()
        {
            while (true)
            {
                if (Application.internetReachability == NetworkReachability.NotReachable)
                {
                    SwitchStatus(Status.NetworkError, null);
                    yield return null;
                }
                else
                {
                    int elapseTime = 0;
                    using (WWW www = new WWW(URL))
                    {
                        while (www.isDone == false)
                        {
                            yield return new WaitForSeconds(0.1f);
                            elapseTime++;
                            if (elapseTime > 50) // time out. 
                            {
                                SwitchStatus(Status.HostError, null);
                                yield return null;
                            }
                        }
                        yield return new WaitUntil(() => { return www.isDone; });
                        if (string.IsNullOrEmpty(www.error))
                        {
                            SwitchStatus(Status.OK, www);
                        }
                        else
                        {
                            SwitchStatus(Status.HostError, null);
                        }
                    }
                }
                yield return new WaitForSeconds(Interval);
            }
        }

        public void SwitchStatus(Status status, WWW www)
        {
            if (status != CurrentStatus)
            {
                LastStatus = CurrentStatus;
                CurrentStatus = status;
                if (Handler != null)
                {
                    Handler(LastStatus, CurrentStatus, www);
                }
            }
        }
    }
}

