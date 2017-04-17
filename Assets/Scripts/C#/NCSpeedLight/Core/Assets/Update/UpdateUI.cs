using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

namespace NCSpeedLight
{
    public class UpdateUI : MonoBehaviour
    {
        public enum Status
        {
            Check,
            Download,
            EnterGame,
        }
        public UIProgressBar ProgressBar;
        public UILabel Tips;
        public Status CurrentStatus = Status.Check;
        public GameObject StatusCheck;
        public GameObject StatusDownload;
        public GameObject StatusEnterGame;

        private float CostTime = 0f;
        private bool Done = false;

        public LabelDotsAnimation LableAnimation;

        public FileUpdate FileUpdate;
        void Awake()
        {
            FileUpdate = new FileUpdate(this);
        }

        void Start()
        {
        }

        void Update()
        {
            //CostTime += Time.deltaTime;
            //if (Done == false)
            //{
            //    float deltaValue = Time.deltaTime / 20;
            //    ProgressBar.value += deltaValue;
            //}
            //else
            //{
            //    float deltaValue = Time.deltaTime;
            //    ProgressBar.value += deltaValue;
            //}
        }
        public void StartUpdate()
        {
            CostTime = 0;
            Done = false;
            StartCoroutine(ProcessUpdate());
        }
        public void SwitchStatus(string tips)
        {
            LableAnimation.SetContent(tips);
        }

        private IEnumerator ProcessUpdate()
        {
            SwitchStatus("正在检查资源文件");
            if (Application.isEditor)
            {
                if (Constants.SCRIPT_BUNDLE_MODE)
                {
                    yield return StartCoroutine(FileUpdate.UpdateScript());
                    if (Constants.ASSET_BUNDLE_MODE)
                    {
                        yield return StartCoroutine(FileUpdate.UpdateAsset());
                        yield return StartCoroutine(StartGame());
                    }
                    else
                    {
                        yield return StartCoroutine(StartGame());
                    }
                }
                else
                {
                    if (Constants.ASSET_BUNDLE_MODE)
                    {
                        yield return StartCoroutine(FileUpdate.UpdateAsset());
                        yield return StartCoroutine(StartGame());
                    }
                    else
                    {
                        yield return StartCoroutine(StartGame());
                    }
                }
            }
            else
            {
                yield return StartCoroutine(FileUpdate.UpdateScript());
                yield return StartCoroutine(FileUpdate.UpdateAsset());
                yield return StartCoroutine(StartGame());
            }
            //yield return StartCoroutine(CheckNetStatus());
            //yield return StartCoroutine(RequestJson());
            //yield return StartCoroutine(StartGame());
        }

        private IEnumerator CheckNetStatus()
        {
            Helper.Log("UIUpdate.CheckNetStatus: done.");
            yield return 0;
        }

        private IEnumerator RequestJson()
        {
            SwitchStatus("正在检查更新");
            yield return 0;
        }

        private IEnumerator StartGame()
        {
            Done = true;
            SwitchStatus("正在进入游戏");
            LuaManager.Initialize();// 加载内置的bundle
            Game.Instance.StartGame();
            yield return new WaitForSeconds(0.1f);
            gameObject.SetActive(false);
            yield return 0;
        }
    }
}

