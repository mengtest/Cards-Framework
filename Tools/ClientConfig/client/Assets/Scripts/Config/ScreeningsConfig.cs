//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from: ScreeningsConfig.proto
namespace Configuration
{
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"ScreeningsConfig")]
  public partial class ScreeningsConfig : global::ProtoBuf.IExtensible
  {
    public ScreeningsConfig() {}
    
    private int _id;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"id", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int id
    {
      get { return _id; }
      set { _id = value; }
    }
    private string _Screenings;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"Screenings", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string Screenings
    {
      get { return _Screenings; }
      set { _Screenings = value; }
    }
    private int _SceneID;
    [global::ProtoBuf.ProtoMember(3, IsRequired = true, Name=@"SceneID", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int SceneID
    {
      get { return _SceneID; }
      set { _SceneID = value; }
    }
    private int _PlayMode;
    [global::ProtoBuf.ProtoMember(4, IsRequired = true, Name=@"PlayMode", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int PlayMode
    {
      get { return _PlayMode; }
      set { _PlayMode = value; }
    }
    private int _RoomType;
    [global::ProtoBuf.ProtoMember(5, IsRequired = true, Name=@"RoomType", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int RoomType
    {
      get { return _RoomType; }
      set { _RoomType = value; }
    }
    private string _BaseScore;
    [global::ProtoBuf.ProtoMember(6, IsRequired = true, Name=@"BaseScore", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string BaseScore
    {
      get { return _BaseScore; }
      set { _BaseScore = value; }
    }
    private int _BeanLow;
    [global::ProtoBuf.ProtoMember(7, IsRequired = true, Name=@"BeanLow", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int BeanLow
    {
      get { return _BeanLow; }
      set { _BeanLow = value; }
    }
    private int _BeanUp;
    [global::ProtoBuf.ProtoMember(8, IsRequired = true, Name=@"BeanUp", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int BeanUp
    {
      get { return _BeanUp; }
      set { _BeanUp = value; }
    }
    private int _BeanShowLow;
    [global::ProtoBuf.ProtoMember(9, IsRequired = true, Name=@"BeanShowLow", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int BeanShowLow
    {
      get { return _BeanShowLow; }
      set { _BeanShowLow = value; }
    }
    private int _BeanShowUp;
    [global::ProtoBuf.ProtoMember(10, IsRequired = true, Name=@"BeanShowUp", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int BeanShowUp
    {
      get { return _BeanShowUp; }
      set { _BeanShowUp = value; }
    }
    private int _CanTalk;
    [global::ProtoBuf.ProtoMember(11, IsRequired = true, Name=@"CanTalk", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int CanTalk
    {
      get { return _CanTalk; }
      set { _CanTalk = value; }
    }
    private string _SceneName;
    [global::ProtoBuf.ProtoMember(12, IsRequired = true, Name=@"SceneName", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string SceneName
    {
      get { return _SceneName; }
      set { _SceneName = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
}