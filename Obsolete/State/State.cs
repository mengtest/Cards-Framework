/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: State.cs
            // Describle:   
            // Created By:  Wells Hsu
            // Date&Time:  2015/3/25 12:15:18
            // Modify History:
            //
//----------------------------------------------------------------*/

public abstract class State
{
    private string m_Name;
    protected StateMachine m_Machine;
    public string Name
    {
        get { return m_Name; }
        set { m_Name = value; }
    }
    public StateMachine Machine
    {
        get { return m_Machine; }
        set { m_Machine = value; }
    }
    public State(string stateName) { m_Name = stateName; }
    public virtual void OnCreated() { }
    public virtual void Begin() { }
    public virtual void Update() { }
    public virtual void End() { }
    public virtual void OnDestroy() { }
}
