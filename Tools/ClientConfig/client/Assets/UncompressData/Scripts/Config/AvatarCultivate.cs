//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from: AvatarCultivate.proto
namespace Configuration
{
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"AvatarCultivate")]
  public partial class AvatarCultivate : global::ProtoBuf.IExtensible
  {
    public AvatarCultivate() {}
    
    private int _AvatarID;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"AvatarID", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int AvatarID
    {
      get { return _AvatarID; }
      set { _AvatarID = value; }
    }
    private int _Lv;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"Lv", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int Lv
    {
      get { return _Lv; }
      set { _Lv = value; }
    }
    private int _PayNum;
    [global::ProtoBuf.ProtoMember(3, IsRequired = true, Name=@"PayNum", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int PayNum
    {
      get { return _PayNum; }
      set { _PayNum = value; }
    }
    private int _Paytype;
    [global::ProtoBuf.ProtoMember(4, IsRequired = true, Name=@"Paytype", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int Paytype
    {
      get { return _Paytype; }
      set { _Paytype = value; }
    }
    private int _SkillID;
    [global::ProtoBuf.ProtoMember(5, IsRequired = true, Name=@"SkillID", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int SkillID
    {
      get { return _SkillID; }
      set { _SkillID = value; }
    }
    private int _Pro_Takeoff;
    [global::ProtoBuf.ProtoMember(6, IsRequired = true, Name=@"Pro_Takeoff", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int Pro_Takeoff
    {
      get { return _Pro_Takeoff; }
      set { _Pro_Takeoff = value; }
    }
    private int _Pro_Impact;
    [global::ProtoBuf.ProtoMember(7, IsRequired = true, Name=@"Pro_Impact", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int Pro_Impact
    {
      get { return _Pro_Impact; }
      set { _Pro_Impact = value; }
    }
    private int _Pro_Flight;
    [global::ProtoBuf.ProtoMember(8, IsRequired = true, Name=@"Pro_Flight", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int Pro_Flight
    {
      get { return _Pro_Flight; }
      set { _Pro_Flight = value; }
    }
    private int _Pro_Arrive;
    [global::ProtoBuf.ProtoMember(9, IsRequired = true, Name=@"Pro_Arrive", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int Pro_Arrive
    {
      get { return _Pro_Arrive; }
      set { _Pro_Arrive = value; }
    }
    private int _Pro_Leap;
    [global::ProtoBuf.ProtoMember(10, IsRequired = true, Name=@"Pro_Leap", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int Pro_Leap
    {
      get { return _Pro_Leap; }
      set { _Pro_Leap = value; }
    }
    private int _Pro_Pile;
    [global::ProtoBuf.ProtoMember(11, IsRequired = true, Name=@"Pro_Pile", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int Pro_Pile
    {
      get { return _Pro_Pile; }
      set { _Pro_Pile = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
}