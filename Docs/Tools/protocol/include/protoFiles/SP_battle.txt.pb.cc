// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_battle.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "SP_battle.txt.pb.h"
#ifdef _MSC_VER
#  pragma warning(push)
#  pragma warning(disable: 4127 4244 4267 4996)
#endif

#include <algorithm>

#include <google/protobuf/stubs/common.h>
#include <google/protobuf/stubs/once.h>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/wire_format_lite_inl.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// @@protoc_insertion_point(includes)

namespace {

const ::google::protobuf::Descriptor* SM_ChallengeReturn_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_ChallengeReturn_reflection_ = NULL;
const ::google::protobuf::Descriptor* GM_CenterGmidVServer_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_CenterGmidVServer_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_SP_5fbattle_2etxt() {
  protobuf_AddDesc_SP_5fbattle_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "SP_battle.txt");
  GOOGLE_CHECK(file != NULL);
  SM_ChallengeReturn_descriptor_ = file->message_type(0);
  static const int SM_ChallengeReturn_offsets_[8] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, rolelist_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, fballplayernum_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, m_fbip_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, m_addfbid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, m_fbtypeid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, m_roleinfo_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, m_playway_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, m_playercount_),
  };
  SM_ChallengeReturn_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_ChallengeReturn_descriptor_,
      SM_ChallengeReturn::default_instance_,
      SM_ChallengeReturn_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_ChallengeReturn, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_ChallengeReturn));
  GM_CenterGmidVServer_descriptor_ = file->message_type(1);
  static const int GM_CenterGmidVServer_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_CenterGmidVServer, m_serverid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_CenterGmidVServer, m_rolegmid_),
  };
  GM_CenterGmidVServer_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_CenterGmidVServer_descriptor_,
      GM_CenterGmidVServer::default_instance_,
      GM_CenterGmidVServer_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_CenterGmidVServer, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_CenterGmidVServer, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_CenterGmidVServer));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_SP_5fbattle_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_ChallengeReturn_descriptor_, &SM_ChallengeReturn::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_CenterGmidVServer_descriptor_, &GM_CenterGmidVServer::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_SP_5fbattle_2etxt() {
  delete SM_ChallengeReturn::default_instance_;
  delete SM_ChallengeReturn_reflection_;
  delete GM_CenterGmidVServer::default_instance_;
  delete GM_CenterGmidVServer_reflection_;
}

void protobuf_AddDesc_SP_5fbattle_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\rSP_battle.txt\"\312\001\n\022SM_ChallengeReturn\022\020"
    "\n\010roleList\030\001 \003(\r\022\026\n\016fbAllPlayerNum\030\002 \002(\r"
    "\022\016\n\006m_fbIp\030\003 \001(\t\022\021\n\tm_addfbid\030\004 \001(\005\022\022\n\nm"
    "_fbtypeid\030\005 \001(\005\022)\n\nm_roleinfo\030\006 \003(\0132\025.GM"
    "_CenterGmidVServer\022\021\n\tm_playWay\030\007 \001(\t\022\025\n"
    "\rm_playerCount\030\010 \001(\005\">\n\024GM_CenterGmidVSe"
    "rver\022\022\n\nm_serverId\030\001 \002(\005\022\022\n\nm_rolegmid\030\002"
    " \001(\005", 284);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SP_battle.txt", &protobuf_RegisterTypes);
  SM_ChallengeReturn::default_instance_ = new SM_ChallengeReturn();
  GM_CenterGmidVServer::default_instance_ = new GM_CenterGmidVServer();
  SM_ChallengeReturn::default_instance_->InitAsDefaultInstance();
  GM_CenterGmidVServer::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_SP_5fbattle_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_SP_5fbattle_2etxt {
  StaticDescriptorInitializer_SP_5fbattle_2etxt() {
    protobuf_AddDesc_SP_5fbattle_2etxt();
  }
} static_descriptor_initializer_SP_5fbattle_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int SM_ChallengeReturn::kRoleListFieldNumber;
const int SM_ChallengeReturn::kFbAllPlayerNumFieldNumber;
const int SM_ChallengeReturn::kMFbIpFieldNumber;
const int SM_ChallengeReturn::kMAddfbidFieldNumber;
const int SM_ChallengeReturn::kMFbtypeidFieldNumber;
const int SM_ChallengeReturn::kMRoleinfoFieldNumber;
const int SM_ChallengeReturn::kMPlayWayFieldNumber;
const int SM_ChallengeReturn::kMPlayerCountFieldNumber;
#endif  // !_MSC_VER

SM_ChallengeReturn::SM_ChallengeReturn()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_ChallengeReturn::InitAsDefaultInstance() {
}

SM_ChallengeReturn::SM_ChallengeReturn(const SM_ChallengeReturn& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_ChallengeReturn::SharedCtor() {
  _cached_size_ = 0;
  fballplayernum_ = 0u;
  m_fbip_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  m_addfbid_ = 0;
  m_fbtypeid_ = 0;
  m_playway_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  m_playercount_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_ChallengeReturn::~SM_ChallengeReturn() {
  SharedDtor();
}

void SM_ChallengeReturn::SharedDtor() {
  if (m_fbip_ != &::google::protobuf::internal::kEmptyString) {
    delete m_fbip_;
  }
  if (m_playway_ != &::google::protobuf::internal::kEmptyString) {
    delete m_playway_;
  }
  if (this != default_instance_) {
  }
}

void SM_ChallengeReturn::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_ChallengeReturn::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_ChallengeReturn_descriptor_;
}

const SM_ChallengeReturn& SM_ChallengeReturn::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fbattle_2etxt();
  return *default_instance_;
}

SM_ChallengeReturn* SM_ChallengeReturn::default_instance_ = NULL;

SM_ChallengeReturn* SM_ChallengeReturn::New() const {
  return new SM_ChallengeReturn;
}

void SM_ChallengeReturn::Clear() {
  if (_has_bits_[1 / 32] & (0xffu << (1 % 32))) {
    fballplayernum_ = 0u;
    if (has_m_fbip()) {
      if (m_fbip_ != &::google::protobuf::internal::kEmptyString) {
        m_fbip_->clear();
      }
    }
    m_addfbid_ = 0;
    m_fbtypeid_ = 0;
    if (has_m_playway()) {
      if (m_playway_ != &::google::protobuf::internal::kEmptyString) {
        m_playway_->clear();
      }
    }
    m_playercount_ = 0;
  }
  rolelist_.Clear();
  m_roleinfo_.Clear();
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_ChallengeReturn::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // repeated uint32 roleList = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_roleList:
          DO_((::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitive<
                   ::google::protobuf::uint32, ::google::protobuf::internal::WireFormatLite::TYPE_UINT32>(
                 1, 8, input, this->mutable_rolelist())));
        } else if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag)
                   == ::google::protobuf::internal::WireFormatLite::
                      WIRETYPE_LENGTH_DELIMITED) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<
                   ::google::protobuf::uint32, ::google::protobuf::internal::WireFormatLite::TYPE_UINT32>(
                 input, this->mutable_rolelist())));
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(8)) goto parse_roleList;
        if (input->ExpectTag(16)) goto parse_fbAllPlayerNum;
        break;
      }

      // required uint32 fbAllPlayerNum = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_fbAllPlayerNum:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::uint32, ::google::protobuf::internal::WireFormatLite::TYPE_UINT32>(
                 input, &fballplayernum_)));
          set_has_fballplayernum();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(26)) goto parse_m_fbIp;
        break;
      }

      // optional string m_fbIp = 3;
      case 3: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
         parse_m_fbIp:
          DO_(::google::protobuf::internal::WireFormatLite::ReadString(
                input, this->mutable_m_fbip()));
          ::google::protobuf::internal::WireFormat::VerifyUTF8String(
            this->m_fbip().data(), this->m_fbip().length(),
            ::google::protobuf::internal::WireFormat::PARSE);
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(32)) goto parse_m_addfbid;
        break;
      }

      // optional int32 m_addfbid = 4;
      case 4: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_addfbid:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_addfbid_)));
          set_has_m_addfbid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(40)) goto parse_m_fbtypeid;
        break;
      }

      // optional int32 m_fbtypeid = 5;
      case 5: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_fbtypeid:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_fbtypeid_)));
          set_has_m_fbtypeid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(50)) goto parse_m_roleinfo;
        break;
      }

      // repeated .GM_CenterGmidVServer m_roleinfo = 6;
      case 6: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
         parse_m_roleinfo:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
                input, add_m_roleinfo()));
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(50)) goto parse_m_roleinfo;
        if (input->ExpectTag(58)) goto parse_m_playWay;
        break;
      }

      // optional string m_playWay = 7;
      case 7: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
         parse_m_playWay:
          DO_(::google::protobuf::internal::WireFormatLite::ReadString(
                input, this->mutable_m_playway()));
          ::google::protobuf::internal::WireFormat::VerifyUTF8String(
            this->m_playway().data(), this->m_playway().length(),
            ::google::protobuf::internal::WireFormat::PARSE);
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(64)) goto parse_m_playerCount;
        break;
      }

      // optional int32 m_playerCount = 8;
      case 8: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_playerCount:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_playercount_)));
          set_has_m_playercount();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectAtEnd()) return true;
        break;
      }

      default: {
      handle_uninterpreted:
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_END_GROUP) {
          return true;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, mutable_unknown_fields()));
        break;
      }
    }
  }
  return true;
#undef DO_
}

void SM_ChallengeReturn::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // repeated uint32 roleList = 1;
  for (int i = 0; i < this->rolelist_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteUInt32(
      1, this->rolelist(i), output);
  }

  // required uint32 fbAllPlayerNum = 2;
  if (has_fballplayernum()) {
    ::google::protobuf::internal::WireFormatLite::WriteUInt32(2, this->fballplayernum(), output);
  }

  // optional string m_fbIp = 3;
  if (has_m_fbip()) {
    ::google::protobuf::internal::WireFormat::VerifyUTF8String(
      this->m_fbip().data(), this->m_fbip().length(),
      ::google::protobuf::internal::WireFormat::SERIALIZE);
    ::google::protobuf::internal::WireFormatLite::WriteString(
      3, this->m_fbip(), output);
  }

  // optional int32 m_addfbid = 4;
  if (has_m_addfbid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(4, this->m_addfbid(), output);
  }

  // optional int32 m_fbtypeid = 5;
  if (has_m_fbtypeid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(5, this->m_fbtypeid(), output);
  }

  // repeated .GM_CenterGmidVServer m_roleinfo = 6;
  for (int i = 0; i < this->m_roleinfo_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      6, this->m_roleinfo(i), output);
  }

  // optional string m_playWay = 7;
  if (has_m_playway()) {
    ::google::protobuf::internal::WireFormat::VerifyUTF8String(
      this->m_playway().data(), this->m_playway().length(),
      ::google::protobuf::internal::WireFormat::SERIALIZE);
    ::google::protobuf::internal::WireFormatLite::WriteString(
      7, this->m_playway(), output);
  }

  // optional int32 m_playerCount = 8;
  if (has_m_playercount()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(8, this->m_playercount(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_ChallengeReturn::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // repeated uint32 roleList = 1;
  for (int i = 0; i < this->rolelist_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteUInt32ToArray(1, this->rolelist(i), target);
  }

  // required uint32 fbAllPlayerNum = 2;
  if (has_fballplayernum()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteUInt32ToArray(2, this->fballplayernum(), target);
  }

  // optional string m_fbIp = 3;
  if (has_m_fbip()) {
    ::google::protobuf::internal::WireFormat::VerifyUTF8String(
      this->m_fbip().data(), this->m_fbip().length(),
      ::google::protobuf::internal::WireFormat::SERIALIZE);
    target =
      ::google::protobuf::internal::WireFormatLite::WriteStringToArray(
        3, this->m_fbip(), target);
  }

  // optional int32 m_addfbid = 4;
  if (has_m_addfbid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(4, this->m_addfbid(), target);
  }

  // optional int32 m_fbtypeid = 5;
  if (has_m_fbtypeid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(5, this->m_fbtypeid(), target);
  }

  // repeated .GM_CenterGmidVServer m_roleinfo = 6;
  for (int i = 0; i < this->m_roleinfo_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        6, this->m_roleinfo(i), target);
  }

  // optional string m_playWay = 7;
  if (has_m_playway()) {
    ::google::protobuf::internal::WireFormat::VerifyUTF8String(
      this->m_playway().data(), this->m_playway().length(),
      ::google::protobuf::internal::WireFormat::SERIALIZE);
    target =
      ::google::protobuf::internal::WireFormatLite::WriteStringToArray(
        7, this->m_playway(), target);
  }

  // optional int32 m_playerCount = 8;
  if (has_m_playercount()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(8, this->m_playercount(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_ChallengeReturn::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[1 / 32] & (0xffu << (1 % 32))) {
    // required uint32 fbAllPlayerNum = 2;
    if (has_fballplayernum()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::UInt32Size(
          this->fballplayernum());
    }

    // optional string m_fbIp = 3;
    if (has_m_fbip()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::StringSize(
          this->m_fbip());
    }

    // optional int32 m_addfbid = 4;
    if (has_m_addfbid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_addfbid());
    }

    // optional int32 m_fbtypeid = 5;
    if (has_m_fbtypeid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_fbtypeid());
    }

    // optional string m_playWay = 7;
    if (has_m_playway()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::StringSize(
          this->m_playway());
    }

    // optional int32 m_playerCount = 8;
    if (has_m_playercount()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_playercount());
    }

  }
  // repeated uint32 roleList = 1;
  {
    int data_size = 0;
    for (int i = 0; i < this->rolelist_size(); i++) {
      data_size += ::google::protobuf::internal::WireFormatLite::
        UInt32Size(this->rolelist(i));
    }
    total_size += 1 * this->rolelist_size() + data_size;
  }

  // repeated .GM_CenterGmidVServer m_roleinfo = 6;
  total_size += 1 * this->m_roleinfo_size();
  for (int i = 0; i < this->m_roleinfo_size(); i++) {
    total_size +=
      ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
        this->m_roleinfo(i));
  }

  if (!unknown_fields().empty()) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        unknown_fields());
  }
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = total_size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
  return total_size;
}

void SM_ChallengeReturn::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_ChallengeReturn* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_ChallengeReturn*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_ChallengeReturn::MergeFrom(const SM_ChallengeReturn& from) {
  GOOGLE_CHECK_NE(&from, this);
  rolelist_.MergeFrom(from.rolelist_);
  m_roleinfo_.MergeFrom(from.m_roleinfo_);
  if (from._has_bits_[1 / 32] & (0xffu << (1 % 32))) {
    if (from.has_fballplayernum()) {
      set_fballplayernum(from.fballplayernum());
    }
    if (from.has_m_fbip()) {
      set_m_fbip(from.m_fbip());
    }
    if (from.has_m_addfbid()) {
      set_m_addfbid(from.m_addfbid());
    }
    if (from.has_m_fbtypeid()) {
      set_m_fbtypeid(from.m_fbtypeid());
    }
    if (from.has_m_playway()) {
      set_m_playway(from.m_playway());
    }
    if (from.has_m_playercount()) {
      set_m_playercount(from.m_playercount());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_ChallengeReturn::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_ChallengeReturn::CopyFrom(const SM_ChallengeReturn& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_ChallengeReturn::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000002) != 0x00000002) return false;

  for (int i = 0; i < m_roleinfo_size(); i++) {
    if (!this->m_roleinfo(i).IsInitialized()) return false;
  }
  return true;
}

void SM_ChallengeReturn::Swap(SM_ChallengeReturn* other) {
  if (other != this) {
    rolelist_.Swap(&other->rolelist_);
    std::swap(fballplayernum_, other->fballplayernum_);
    std::swap(m_fbip_, other->m_fbip_);
    std::swap(m_addfbid_, other->m_addfbid_);
    std::swap(m_fbtypeid_, other->m_fbtypeid_);
    m_roleinfo_.Swap(&other->m_roleinfo_);
    std::swap(m_playway_, other->m_playway_);
    std::swap(m_playercount_, other->m_playercount_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_ChallengeReturn::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_ChallengeReturn_descriptor_;
  metadata.reflection = SM_ChallengeReturn_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int GM_CenterGmidVServer::kMServerIdFieldNumber;
const int GM_CenterGmidVServer::kMRolegmidFieldNumber;
#endif  // !_MSC_VER

GM_CenterGmidVServer::GM_CenterGmidVServer()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_CenterGmidVServer::InitAsDefaultInstance() {
}

GM_CenterGmidVServer::GM_CenterGmidVServer(const GM_CenterGmidVServer& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_CenterGmidVServer::SharedCtor() {
  _cached_size_ = 0;
  m_serverid_ = 0;
  m_rolegmid_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_CenterGmidVServer::~GM_CenterGmidVServer() {
  SharedDtor();
}

void GM_CenterGmidVServer::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_CenterGmidVServer::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_CenterGmidVServer::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_CenterGmidVServer_descriptor_;
}

const GM_CenterGmidVServer& GM_CenterGmidVServer::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fbattle_2etxt();
  return *default_instance_;
}

GM_CenterGmidVServer* GM_CenterGmidVServer::default_instance_ = NULL;

GM_CenterGmidVServer* GM_CenterGmidVServer::New() const {
  return new GM_CenterGmidVServer;
}

void GM_CenterGmidVServer::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_serverid_ = 0;
    m_rolegmid_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_CenterGmidVServer::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_serverId = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_serverid_)));
          set_has_m_serverid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_m_rolegmid;
        break;
      }

      // optional int32 m_rolegmid = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_rolegmid:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_rolegmid_)));
          set_has_m_rolegmid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectAtEnd()) return true;
        break;
      }

      default: {
      handle_uninterpreted:
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_END_GROUP) {
          return true;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, mutable_unknown_fields()));
        break;
      }
    }
  }
  return true;
#undef DO_
}

void GM_CenterGmidVServer::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_serverId = 1;
  if (has_m_serverid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_serverid(), output);
  }

  // optional int32 m_rolegmid = 2;
  if (has_m_rolegmid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->m_rolegmid(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_CenterGmidVServer::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_serverId = 1;
  if (has_m_serverid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_serverid(), target);
  }

  // optional int32 m_rolegmid = 2;
  if (has_m_rolegmid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->m_rolegmid(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_CenterGmidVServer::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_serverId = 1;
    if (has_m_serverid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_serverid());
    }

    // optional int32 m_rolegmid = 2;
    if (has_m_rolegmid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_rolegmid());
    }

  }
  if (!unknown_fields().empty()) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        unknown_fields());
  }
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = total_size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
  return total_size;
}

void GM_CenterGmidVServer::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_CenterGmidVServer* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_CenterGmidVServer*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_CenterGmidVServer::MergeFrom(const GM_CenterGmidVServer& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_serverid()) {
      set_m_serverid(from.m_serverid());
    }
    if (from.has_m_rolegmid()) {
      set_m_rolegmid(from.m_rolegmid());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_CenterGmidVServer::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_CenterGmidVServer::CopyFrom(const GM_CenterGmidVServer& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_CenterGmidVServer::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void GM_CenterGmidVServer::Swap(GM_CenterGmidVServer* other) {
  if (other != this) {
    std::swap(m_serverid_, other->m_serverid_);
    std::swap(m_rolegmid_, other->m_rolegmid_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_CenterGmidVServer::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_CenterGmidVServer_descriptor_;
  metadata.reflection = GM_CenterGmidVServer_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif