//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from: ActivityConfig.proto
namespace Configuration
{
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"ActivityConfig")]
  public partial class ActivityConfig : global::ProtoBuf.IExtensible
  {
    public ActivityConfig() {}
    
    private int _id;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"id", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int id
    {
      get { return _id; }
      set { _id = value; }
    }
    private string _title;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"title", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string title
    {
      get { return _title; }
      set { _title = value; }
    }
    private int _order;
    [global::ProtoBuf.ProtoMember(3, IsRequired = true, Name=@"order", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int order
    {
      get { return _order; }
      set { _order = value; }
    }
    private int _titleTag;
    [global::ProtoBuf.ProtoMember(4, IsRequired = true, Name=@"titleTag", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int titleTag
    {
      get { return _titleTag; }
      set { _titleTag = value; }
    }
    private string _description;
    [global::ProtoBuf.ProtoMember(5, IsRequired = true, Name=@"description", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string description
    {
      get { return _description; }
      set { _description = value; }
    }
    private string _action;
    [global::ProtoBuf.ProtoMember(6, IsRequired = true, Name=@"action", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string action
    {
      get { return _action; }
      set { _action = value; }
    }
    private string _rule;
    [global::ProtoBuf.ProtoMember(7, IsRequired = true, Name=@"rule", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string rule
    {
      get { return _rule; }
      set { _rule = value; }
    }
    private int _redFlag;
    [global::ProtoBuf.ProtoMember(8, IsRequired = true, Name=@"redFlag", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int redFlag
    {
      get { return _redFlag; }
      set { _redFlag = value; }
    }
    private int _type;
    [global::ProtoBuf.ProtoMember(9, IsRequired = true, Name=@"type", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int type
    {
      get { return _type; }
      set { _type = value; }
    }
    private int _missionID;
    [global::ProtoBuf.ProtoMember(10, IsRequired = true, Name=@"missionID", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int missionID
    {
      get { return _missionID; }
      set { _missionID = value; }
    }
    private string _beginValidTime;
    [global::ProtoBuf.ProtoMember(11, IsRequired = true, Name=@"beginValidTime", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string beginValidTime
    {
      get { return _beginValidTime; }
      set { _beginValidTime = value; }
    }
    private string _endValidTime;
    [global::ProtoBuf.ProtoMember(12, IsRequired = true, Name=@"endValidTime", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string endValidTime
    {
      get { return _endValidTime; }
      set { _endValidTime = value; }
    }
    private string _beginShowTime;
    [global::ProtoBuf.ProtoMember(13, IsRequired = true, Name=@"beginShowTime", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string beginShowTime
    {
      get { return _beginShowTime; }
      set { _beginShowTime = value; }
    }
    private string _endShowTime;
    [global::ProtoBuf.ProtoMember(14, IsRequired = true, Name=@"endShowTime", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string endShowTime
    {
      get { return _endShowTime; }
      set { _endShowTime = value; }
    }
    private string _banner;
    [global::ProtoBuf.ProtoMember(15, IsRequired = true, Name=@"banner", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string banner
    {
      get { return _banner; }
      set { _banner = value; }
    }
    private string _awardList;
    [global::ProtoBuf.ProtoMember(16, IsRequired = true, Name=@"awardList", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string awardList
    {
      get { return _awardList; }
      set { _awardList = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
}