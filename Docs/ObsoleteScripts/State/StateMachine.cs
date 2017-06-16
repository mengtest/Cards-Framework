/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: StateMachine.cs
            // Describle:  
            // Created By:  Wells Hsu
            // Date&Time:  2015/09/09 17:34:18
            // Modify History:
            //
//----------------------------------------------------------------*/

using System.Collections.Generic;

public class StateMachine
{
    protected Dictionary<string, State> m_States;
    protected State m_LastState;
    protected State m_CurrentState;
    protected State m_NextState;

    public StateMachine()
    {
        m_States = new Dictionary<string, State>();
        m_CurrentState = null;
        m_NextState = null;
    }

    public virtual void Update()
    {
        if (m_CurrentState != null)
        {
            m_CurrentState.Update();
        }
        if (m_NextState != null)
        {
            if (m_CurrentState != null)
            {
                m_CurrentState.End();
            }
            m_CurrentState = m_NextState;
            m_NextState = null;
            m_CurrentState.Begin();
        }
    }

    /// <summary>
    /// get state with statename
    /// </summary>
    /// <param name="stateName"></param>
    /// <returns></returns>
    public State GetState(string stateName)
    {
        State state = null;
        if (m_States.TryGetValue(stateName, out state))
        {
            return state;
        }
        return null;
    }

    /// <summary>
    /// register a new state to state machine
    /// </summary>
    /// <param name="state"></param>
    /// <returns></returns>
    public bool RegisterState(State state)
    {
        if (state == null)
        {
            return false;
        }
        string stateName = state.Name;
        if (m_States.ContainsKey(stateName) == true)
        {
            return false;
        }
        state.Machine = this;
        m_States.Add(stateName, state);
        return true;
    }

    /// <summary>
    /// unregister state with name
    /// </summary>
    /// <param name="stateName"></param>
    /// <returns></returns>
    public bool UnRegisterState(string stateName)
    {
        State state = null;
        if (m_States.TryGetValue(stateName, out state) == false)
        {
            return false;
        }
        state.Machine = null;
        m_States.Remove(stateName);
        return true;
    }

    /// <summary>
    /// change state
    /// </summary>
    /// <param name="stateName"></param>
    /// <returns></returns>
    public virtual bool SetNextState(string stateName)
    {
        if (string.IsNullOrEmpty(stateName))
        {
            return false;
        }
        State state = GetState(stateName);
        if (state == null)
        {
            return false;
        }
        m_LastState = m_CurrentState;
        if (state == m_NextState)
        {
            return false;
        }
        m_NextState = state;
        return true;
    }

    /// <summary>
    /// get state that will be executed in next frame
    /// </summary>
    /// <returns></returns>
    public State GetNextState()
    {
        return m_NextState;
    }

    /// <summary>
    /// get current executing state
    /// </summary>
    /// <returns></returns>
    public State GetCurrentState()
    {
        return m_CurrentState;
    }

    /// <summary>
    /// get last executed state
    /// </summary>
    /// <returns></returns>
    public State GetLastState()
    {
        return m_LastState;
    }
}

