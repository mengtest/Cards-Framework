//----------------------------------------------
//            NGUI: Next-Gen UI kit
// Copyright © 2011-2014 Tasharen Entertainment
//----------------------------------------------

using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Sends a message to the remote object when something happens.
/// </summary>

[AddComponentMenu("NGUI/Interaction/Button Message Extended")]
public class UIButtonMessageExtended : MonoBehaviour
{
	public enum Trigger
	{
		OnClick,
		OnMouseOver,
		OnMouseOut,
		OnPress,
		OnRelease,
		OnDoubleClick,
	}
	
	//public GameObject target;
	//public string functionName;
	public Trigger trigger = Trigger.OnPress;
	//public bool includeChildren = false;
	
	static public UIButtonMessageExtended current;
	public List<EventDelegate> eventDelegates = new List<EventDelegate>();
	
	bool mStarted = false;
	
	void Start () { mStarted = true; }
	
	void OnEnable () { if (mStarted) OnHover(UICamera.IsHighlighted(gameObject)); }
	
	void OnHover (bool isOver)
	{
		if (enabled)
		{
			if (((isOver && trigger == Trigger.OnMouseOver) ||
			     (!isOver && trigger == Trigger.OnMouseOut))) {
				//Send();
				current = this;
				EventDelegate.Execute(eventDelegates);
				current = null;
			}
		}
	}
	
	void OnPress (bool isPressed)
	{
		if (enabled)
		{
			if (((isPressed && trigger == Trigger.OnPress) ||
			     (!isPressed && trigger == Trigger.OnRelease))) {
				//Send();
				current = this;
				EventDelegate.Execute(eventDelegates);
				current = null;
			}
		}
	}
	
	void OnSelect (bool isSelected)
	{
		if (enabled && (!isSelected || UICamera.currentScheme == UICamera.ControlScheme.Controller))
			OnHover(isSelected);
	}
	
	void OnClick () {
		if (enabled && trigger == Trigger.OnClick) {
			//Send();
			current = this;
			EventDelegate.Execute(eventDelegates);
			current = null;
		}
	}
	
	void OnDoubleClick () {
		if (enabled && trigger == Trigger.OnDoubleClick) {
			//Send();
			current = this;
			EventDelegate.Execute(eventDelegates);
			current = null;
		}
	}
	/*
    void Send ()
    {
        if (string.IsNullOrEmpty(functionName)) return;
        if (target == null) target = gameObject;

        if (includeChildren)
        {
            Transform[] transforms = target.GetComponentsInChildren<Transform>();

            for (int i = 0, imax = transforms.Length; i < imax; ++i)
            {
                Transform t = transforms[i];
                t.gameObject.SendMessage(functionName, gameObject, SendMessageOptions.DontRequireReceiver);
            }
        }
        else
        {
            target.SendMessage(functionName, gameObject, SendMessageOptions.DontRequireReceiver);
        }
    }
    */
}