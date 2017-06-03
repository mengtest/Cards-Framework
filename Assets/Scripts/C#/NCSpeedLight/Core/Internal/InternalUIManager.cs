using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public class InternalUIManager : MonoBehaviour
    {
        public static InternalUIManager Instance;

        public GameObject BG;

        public UpdateUI UpdateUI;

        public GameObject Confirm;

        public GameObject Progress;

        public GameObject Tips;

        private void Awake()
        {
            Instance = this;
        }

        private void Update()
        {
            if (Application.platform == RuntimePlatform.Android && Input.GetKeyDown(KeyCode.Escape))
            {
                OpenConfirmDialog("你确定退出游戏吗？", true, () => { Application.Quit(); });
            }
        }

        private void OnDestroy()
        {
            Instance = null;
        }

        public static void OpenBG()
        {
            Instance.BG.SetActive(true);
        }

        public static void CloseBG()
        {
            Instance.BG.SetActive(false);
        }

        public static void OpenUpdate()
        {
            Instance.UpdateUI.gameObject.SetActive(true);
        }

        public static void CloseUpdate()
        {
            Instance.UpdateUI.gameObject.SetActive(false);
        }

        public static void OpenConfirmDialog(string content, bool doubleButton, Action onClickOK = null, Action onClickCancel = null)
        {
            UIHelper.SetLabelText(Instance.Confirm.transform, "LB_Content", content);
            if (doubleButton)
            {
                UIHelper.SetActiveState(Instance.Confirm.transform, "GRP_DoubleBtn", true);
                UIHelper.SetActiveState(Instance.Confirm.transform, "GRP_SingleBtn", false);
                UIHelper.SetButtonEvent(Instance.Confirm.transform, "GRP_DoubleBtn/OK", (obj) =>
                {
                    Instance.Confirm.SetActive(false);
                    if (onClickOK != null)
                    {
                        onClickOK();
                    }
                });
                UIHelper.SetButtonEvent(Instance.Confirm.transform, "GRP_DoubleBtn/Cancel", (obj) =>
                {
                    Instance.Confirm.SetActive(false);
                    if (onClickCancel != null)
                    {
                        onClickCancel();
                    }
                });
            }
            else
            {
                UIHelper.SetActiveState(Instance.Confirm.transform, "GRP_DoubleBtn", false);
                UIHelper.SetActiveState(Instance.Confirm.transform, "GRP_SingleBtn", true);
                UIHelper.SetButtonEvent(Instance.Confirm.transform, "GRP_SingleBtn/OK", (obj) =>
                {
                    Instance.Confirm.SetActive(false);
                    if (onClickOK != null)
                    {
                        onClickOK();
                    }
                });
            }
            Instance.Confirm.SetActive(true);
        }

        public static void CloseConfirmDialog()
        {
            Instance.Confirm.SetActive(false);
        }

        public static void OpenProgressDialog(string content)
        {
            UIHelper.SetLabelText(Instance.Progress.transform, "LB_Content", content);
            UIHelper.SetActiveState(Instance.Progress.transform, true);
        }

        public static void CloseProgressDialog()
        {
            UIHelper.SetActiveState(Instance.Progress.transform, false);
        }

        public static void OpenTipsDialog(string content)
        {
            NGUITools.AddChild(Instance.Tips);
        }
    }
}

