using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public class InternalUI : MonoBehaviour
    {
        public static InternalUI Instance;

        public GameObject Dialog;
        public UILabel DialogTitle;
        public UILabel DialogContent;

        public UpdateUI UpdateUI;

        public GameObject BG;

        private void Awake()
        {
            Instance = this;
        }

        private void OnDestroy()
        {
            Instance = null;
        }

        public void OpenBG()
        {
            BG.SetActive(true);
        }

        public void CloseBG()
        {
            BG.SetActive(false);
        }

        public void OpenUpdate()
        {
            UpdateUI.gameObject.SetActive(true);
        }

        public void CloseUpdate()
        {
            UpdateUI.gameObject.SetActive(false);
        }

        public void OpenDialog(bool doubleButton, string title, string content, Action onClickOK = null, Action onClickCancel = null)
        {
            DialogTitle.text = title;
            DialogContent.text = content;
            if (doubleButton)
            {
                UIHelper.SetActiveState(Dialog.transform, "DoubleBtn", true);
                UIHelper.SetActiveState(Dialog.transform, "SingleBtn", false);
                UIHelper.SetButtonEvent(Dialog.transform, "DoubleBtn/OK", (obj) =>
                {
                    Dialog.SetActive(false);
                    if (onClickOK != null)
                    {
                        onClickOK();
                    }
                });
                UIHelper.SetButtonEvent(Dialog.transform, "DoubleBtn/Cancel", (obj) =>
                {
                    Dialog.SetActive(false);
                    if (onClickCancel != null)
                    {
                        onClickCancel();
                    }
                });
            }
            else
            {
                UIHelper.SetActiveState(Dialog.transform, "DoubleBtn", false);
                UIHelper.SetActiveState(Dialog.transform, "SingleBtn", true);
                UIHelper.SetButtonEvent(Dialog.transform, "DoubleBtn/OK", (obj) =>
                {
                    Dialog.SetActive(false);
                    if (onClickOK != null)
                    {
                        onClickOK();
                    }
                });
            }
            Dialog.SetActive(true);
        }

        public void CloseDialog()
        {
            Dialog.SetActive(false);
        }
    }
}

