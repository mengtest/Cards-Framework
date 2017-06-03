using System.Collections;
using UnityEngine;

namespace NCSpeedLight
{
    public class HttpListener
    {
        public enum Status
        {
            None = 0,
            HostOK = 1,
            NetworkError = 2,
            HostError = 3,
        }

        public delegate void StatusDelegate(Status last, Status current, WWW www);

        private StatusDelegate Handler;
        private string URL;
        private Status LastStatus;
        private Status CurrentStatus;
        private float Interval;

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
            Game.Instance.StartCoroutine(ProcessCheck());
        }

        public void Stop()
        {
            Game.Instance.StopCoroutine(ProcessCheck());
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
                    using (WWW www = new WWW(URL))
                    {
                        yield return www;
                        if (www.isDone && string.IsNullOrEmpty(www.error))
                        {
                            SwitchStatus(Status.HostOK, www);
                        }
                        else
                        {
                            SwitchStatus(Status.HostError, www);
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

