using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public class UIManager
    {
        public class UIInfo { }

        static Stack<UIInfo> Windows = new Stack<UIInfo>();

        static Stack<UIInfo> Dialogs = new Stack<UIInfo>();

        static UIManager()
        {
            Windows = new Stack<UIInfo>();
            Dialogs = new Stack<UIInfo>();
        }

        public void Open()
        {

        }

        public void Close()
        {

        }
    }
}

