using UnityEngine;
using System.Collections;

public class InitEffectLayer : MonoBehaviour {
    private int initLayer = 3005;
	// Use this for initialization
	void Start () 
    {
        InitEffect();
	}
    void InitEffect()
    {
        if (transform != null)
        {
            Renderer[] tempArray = transform.GetComponentsInChildren<Renderer>();
            for (int i = 0; i < tempArray.Length; i++)
            {
                tempArray[i].material.renderQueue = initLayer;
            }
        }
    }
}
