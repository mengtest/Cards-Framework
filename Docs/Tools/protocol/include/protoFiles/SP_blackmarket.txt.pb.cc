// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_blackmarket.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "SP_blackmarket.txt.pb.h"
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

const ::google::protobuf::Descriptor* SM_BlackMarket_DB_Return_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_BlackMarket_DB_Return_reflection_ = NULL;
const ::google::protobuf::Descriptor* SM_BlackMarketObj_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_BlackMarketObj_reflection_ = NULL;
const ::google::protobuf::Descriptor* SM_BlackMarket_Obj_DB_Return_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_BlackMarket_Obj_DB_Return_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_SP_5fblackmarket_2etxt() {
  protobuf_AddDesc_SP_5fblackmarket_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "SP_blackmarket.txt");
  GOOGLE_CHECK(file != NULL);
  SM_BlackMarket_DB_Return_descriptor_ = file->message_type(0);
  static const int SM_BlackMarket_DB_Return_offsets_[4] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_DB_Return, m_roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_DB_Return, m_refreshcount_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_DB_Return, m_spar_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_DB_Return, m_count_),
  };
  SM_BlackMarket_DB_Return_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_BlackMarket_DB_Return_descriptor_,
      SM_BlackMarket_DB_Return::default_instance_,
      SM_BlackMarket_DB_Return_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_DB_Return, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_DB_Return, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_BlackMarket_DB_Return));
  SM_BlackMarketObj_descriptor_ = file->message_type(1);
  static const int SM_BlackMarketObj_offsets_[5] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarketObj, m_roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarketObj, m_objpos_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarketObj, m_objid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarketObj, m_objbuy_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarketObj, m_objnum_),
  };
  SM_BlackMarketObj_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_BlackMarketObj_descriptor_,
      SM_BlackMarketObj::default_instance_,
      SM_BlackMarketObj_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarketObj, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarketObj, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_BlackMarketObj));
  SM_BlackMarket_Obj_DB_Return_descriptor_ = file->message_type(2);
  static const int SM_BlackMarket_Obj_DB_Return_offsets_[3] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_Obj_DB_Return, m_roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_Obj_DB_Return, m_count_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_Obj_DB_Return, m_blackmarketobj_),
  };
  SM_BlackMarket_Obj_DB_Return_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_BlackMarket_Obj_DB_Return_descriptor_,
      SM_BlackMarket_Obj_DB_Return::default_instance_,
      SM_BlackMarket_Obj_DB_Return_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_Obj_DB_Return, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_BlackMarket_Obj_DB_Return, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_BlackMarket_Obj_DB_Return));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_SP_5fblackmarket_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_BlackMarket_DB_Return_descriptor_, &SM_BlackMarket_DB_Return::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_BlackMarketObj_descriptor_, &SM_BlackMarketObj::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_BlackMarket_Obj_DB_Return_descriptor_, &SM_BlackMarket_Obj_DB_Return::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_SP_5fblackmarket_2etxt() {
  delete SM_BlackMarket_DB_Return::default_instance_;
  delete SM_BlackMarket_DB_Return_reflection_;
  delete SM_BlackMarketObj::default_instance_;
  delete SM_BlackMarketObj_reflection_;
  delete SM_BlackMarket_Obj_DB_Return::default_instance_;
  delete SM_BlackMarket_Obj_DB_Return_reflection_;
}

void protobuf_AddDesc_SP_5fblackmarket_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\022SP_blackmarket.txt\"e\n\030SM_BlackMarket_D"
    "B_Return\022\020\n\010m_roleid\030\001 \002(\005\022\026\n\016m_refreshC"
    "ount\030\002 \001(\005\022\016\n\006m_spar\030\003 \001(\005\022\017\n\007m_count\030\004 "
    "\001(\005\"l\n\021SM_BlackMarketObj\022\020\n\010m_RoleId\030\001 \002"
    "(\005\022\020\n\010m_ObjPos\030\002 \001(\005\022\017\n\007m_ObjId\030\003 \001(\005\022\020\n"
    "\010m_ObjBuy\030\004 \001(\005\022\020\n\010m_ObjNum\030\005 \001(\005\"o\n\034SM_"
    "BlackMarket_Obj_DB_Return\022\020\n\010m_roleid\030\001 "
    "\002(\005\022\017\n\007m_Count\030\002 \001(\005\022,\n\020m_blackMarketObj"
    "\030\003 \003(\0132\022.SM_BlackMarketObj", 346);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SP_blackmarket.txt", &protobuf_RegisterTypes);
  SM_BlackMarket_DB_Return::default_instance_ = new SM_BlackMarket_DB_Return();
  SM_BlackMarketObj::default_instance_ = new SM_BlackMarketObj();
  SM_BlackMarket_Obj_DB_Return::default_instance_ = new SM_BlackMarket_Obj_DB_Return();
  SM_BlackMarket_DB_Return::default_instance_->InitAsDefaultInstance();
  SM_BlackMarketObj::default_instance_->InitAsDefaultInstance();
  SM_BlackMarket_Obj_DB_Return::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_SP_5fblackmarket_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_SP_5fblackmarket_2etxt {
  StaticDescriptorInitializer_SP_5fblackmarket_2etxt() {
    protobuf_AddDesc_SP_5fblackmarket_2etxt();
  }
} static_descriptor_initializer_SP_5fblackmarket_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int SM_BlackMarket_DB_Return::kMRoleidFieldNumber;
const int SM_BlackMarket_DB_Return::kMRefreshCountFieldNumber;
const int SM_BlackMarket_DB_Return::kMSparFieldNumber;
const int SM_BlackMarket_DB_Return::kMCountFieldNumber;
#endif  // !_MSC_VER

SM_BlackMarket_DB_Return::SM_BlackMarket_DB_Return()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_BlackMarket_DB_Return::InitAsDefaultInstance() {
}

SM_BlackMarket_DB_Return::SM_BlackMarket_DB_Return(const SM_BlackMarket_DB_Return& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_BlackMarket_DB_Return::SharedCtor() {
  _cached_size_ = 0;
  m_roleid_ = 0;
  m_refreshcount_ = 0;
  m_spar_ = 0;
  m_count_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_BlackMarket_DB_Return::~SM_BlackMarket_DB_Return() {
  SharedDtor();
}

void SM_BlackMarket_DB_Return::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SM_BlackMarket_DB_Return::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_BlackMarket_DB_Return::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_BlackMarket_DB_Return_descriptor_;
}

const SM_BlackMarket_DB_Return& SM_BlackMarket_DB_Return::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fblackmarket_2etxt();
  return *default_instance_;
}

SM_BlackMarket_DB_Return* SM_BlackMarket_DB_Return::default_instance_ = NULL;

SM_BlackMarket_DB_Return* SM_BlackMarket_DB_Return::New() const {
  return new SM_BlackMarket_DB_Return;
}

void SM_BlackMarket_DB_Return::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_roleid_ = 0;
    m_refreshcount_ = 0;
    m_spar_ = 0;
    m_count_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_BlackMarket_DB_Return::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_roleid = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_roleid_)));
          set_has_m_roleid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_m_refreshCount;
        break;
      }

      // optional int32 m_refreshCount = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_refreshCount:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_refreshcount_)));
          set_has_m_refreshcount();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(24)) goto parse_m_spar;
        break;
      }

      // optional int32 m_spar = 3;
      case 3: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_spar:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_spar_)));
          set_has_m_spar();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(32)) goto parse_m_count;
        break;
      }

      // optional int32 m_count = 4;
      case 4: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_count:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_count_)));
          set_has_m_count();
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

void SM_BlackMarket_DB_Return::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_roleid = 1;
  if (has_m_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_roleid(), output);
  }

  // optional int32 m_refreshCount = 2;
  if (has_m_refreshcount()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->m_refreshcount(), output);
  }

  // optional int32 m_spar = 3;
  if (has_m_spar()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(3, this->m_spar(), output);
  }

  // optional int32 m_count = 4;
  if (has_m_count()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(4, this->m_count(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_BlackMarket_DB_Return::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_roleid = 1;
  if (has_m_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_roleid(), target);
  }

  // optional int32 m_refreshCount = 2;
  if (has_m_refreshcount()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->m_refreshcount(), target);
  }

  // optional int32 m_spar = 3;
  if (has_m_spar()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(3, this->m_spar(), target);
  }

  // optional int32 m_count = 4;
  if (has_m_count()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(4, this->m_count(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_BlackMarket_DB_Return::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_roleid = 1;
    if (has_m_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_roleid());
    }

    // optional int32 m_refreshCount = 2;
    if (has_m_refreshcount()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_refreshcount());
    }

    // optional int32 m_spar = 3;
    if (has_m_spar()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_spar());
    }

    // optional int32 m_count = 4;
    if (has_m_count()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_count());
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

void SM_BlackMarket_DB_Return::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_BlackMarket_DB_Return* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_BlackMarket_DB_Return*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_BlackMarket_DB_Return::MergeFrom(const SM_BlackMarket_DB_Return& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_roleid()) {
      set_m_roleid(from.m_roleid());
    }
    if (from.has_m_refreshcount()) {
      set_m_refreshcount(from.m_refreshcount());
    }
    if (from.has_m_spar()) {
      set_m_spar(from.m_spar());
    }
    if (from.has_m_count()) {
      set_m_count(from.m_count());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_BlackMarket_DB_Return::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_BlackMarket_DB_Return::CopyFrom(const SM_BlackMarket_DB_Return& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_BlackMarket_DB_Return::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void SM_BlackMarket_DB_Return::Swap(SM_BlackMarket_DB_Return* other) {
  if (other != this) {
    std::swap(m_roleid_, other->m_roleid_);
    std::swap(m_refreshcount_, other->m_refreshcount_);
    std::swap(m_spar_, other->m_spar_);
    std::swap(m_count_, other->m_count_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_BlackMarket_DB_Return::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_BlackMarket_DB_Return_descriptor_;
  metadata.reflection = SM_BlackMarket_DB_Return_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int SM_BlackMarketObj::kMRoleIdFieldNumber;
const int SM_BlackMarketObj::kMObjPosFieldNumber;
const int SM_BlackMarketObj::kMObjIdFieldNumber;
const int SM_BlackMarketObj::kMObjBuyFieldNumber;
const int SM_BlackMarketObj::kMObjNumFieldNumber;
#endif  // !_MSC_VER

SM_BlackMarketObj::SM_BlackMarketObj()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_BlackMarketObj::InitAsDefaultInstance() {
}

SM_BlackMarketObj::SM_BlackMarketObj(const SM_BlackMarketObj& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_BlackMarketObj::SharedCtor() {
  _cached_size_ = 0;
  m_roleid_ = 0;
  m_objpos_ = 0;
  m_objid_ = 0;
  m_objbuy_ = 0;
  m_objnum_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_BlackMarketObj::~SM_BlackMarketObj() {
  SharedDtor();
}

void SM_BlackMarketObj::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SM_BlackMarketObj::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_BlackMarketObj::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_BlackMarketObj_descriptor_;
}

const SM_BlackMarketObj& SM_BlackMarketObj::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fblackmarket_2etxt();
  return *default_instance_;
}

SM_BlackMarketObj* SM_BlackMarketObj::default_instance_ = NULL;

SM_BlackMarketObj* SM_BlackMarketObj::New() const {
  return new SM_BlackMarketObj;
}

void SM_BlackMarketObj::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_roleid_ = 0;
    m_objpos_ = 0;
    m_objid_ = 0;
    m_objbuy_ = 0;
    m_objnum_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_BlackMarketObj::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_RoleId = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_roleid_)));
          set_has_m_roleid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_m_ObjPos;
        break;
      }

      // optional int32 m_ObjPos = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_ObjPos:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_objpos_)));
          set_has_m_objpos();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(24)) goto parse_m_ObjId;
        break;
      }

      // optional int32 m_ObjId = 3;
      case 3: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_ObjId:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_objid_)));
          set_has_m_objid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(32)) goto parse_m_ObjBuy;
        break;
      }

      // optional int32 m_ObjBuy = 4;
      case 4: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_ObjBuy:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_objbuy_)));
          set_has_m_objbuy();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(40)) goto parse_m_ObjNum;
        break;
      }

      // optional int32 m_ObjNum = 5;
      case 5: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_ObjNum:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_objnum_)));
          set_has_m_objnum();
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

void SM_BlackMarketObj::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_RoleId = 1;
  if (has_m_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_roleid(), output);
  }

  // optional int32 m_ObjPos = 2;
  if (has_m_objpos()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->m_objpos(), output);
  }

  // optional int32 m_ObjId = 3;
  if (has_m_objid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(3, this->m_objid(), output);
  }

  // optional int32 m_ObjBuy = 4;
  if (has_m_objbuy()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(4, this->m_objbuy(), output);
  }

  // optional int32 m_ObjNum = 5;
  if (has_m_objnum()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(5, this->m_objnum(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_BlackMarketObj::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_RoleId = 1;
  if (has_m_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_roleid(), target);
  }

  // optional int32 m_ObjPos = 2;
  if (has_m_objpos()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->m_objpos(), target);
  }

  // optional int32 m_ObjId = 3;
  if (has_m_objid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(3, this->m_objid(), target);
  }

  // optional int32 m_ObjBuy = 4;
  if (has_m_objbuy()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(4, this->m_objbuy(), target);
  }

  // optional int32 m_ObjNum = 5;
  if (has_m_objnum()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(5, this->m_objnum(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_BlackMarketObj::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_RoleId = 1;
    if (has_m_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_roleid());
    }

    // optional int32 m_ObjPos = 2;
    if (has_m_objpos()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_objpos());
    }

    // optional int32 m_ObjId = 3;
    if (has_m_objid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_objid());
    }

    // optional int32 m_ObjBuy = 4;
    if (has_m_objbuy()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_objbuy());
    }

    // optional int32 m_ObjNum = 5;
    if (has_m_objnum()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_objnum());
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

void SM_BlackMarketObj::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_BlackMarketObj* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_BlackMarketObj*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_BlackMarketObj::MergeFrom(const SM_BlackMarketObj& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_roleid()) {
      set_m_roleid(from.m_roleid());
    }
    if (from.has_m_objpos()) {
      set_m_objpos(from.m_objpos());
    }
    if (from.has_m_objid()) {
      set_m_objid(from.m_objid());
    }
    if (from.has_m_objbuy()) {
      set_m_objbuy(from.m_objbuy());
    }
    if (from.has_m_objnum()) {
      set_m_objnum(from.m_objnum());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_BlackMarketObj::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_BlackMarketObj::CopyFrom(const SM_BlackMarketObj& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_BlackMarketObj::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void SM_BlackMarketObj::Swap(SM_BlackMarketObj* other) {
  if (other != this) {
    std::swap(m_roleid_, other->m_roleid_);
    std::swap(m_objpos_, other->m_objpos_);
    std::swap(m_objid_, other->m_objid_);
    std::swap(m_objbuy_, other->m_objbuy_);
    std::swap(m_objnum_, other->m_objnum_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_BlackMarketObj::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_BlackMarketObj_descriptor_;
  metadata.reflection = SM_BlackMarketObj_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int SM_BlackMarket_Obj_DB_Return::kMRoleidFieldNumber;
const int SM_BlackMarket_Obj_DB_Return::kMCountFieldNumber;
const int SM_BlackMarket_Obj_DB_Return::kMBlackMarketObjFieldNumber;
#endif  // !_MSC_VER

SM_BlackMarket_Obj_DB_Return::SM_BlackMarket_Obj_DB_Return()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_BlackMarket_Obj_DB_Return::InitAsDefaultInstance() {
}

SM_BlackMarket_Obj_DB_Return::SM_BlackMarket_Obj_DB_Return(const SM_BlackMarket_Obj_DB_Return& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_BlackMarket_Obj_DB_Return::SharedCtor() {
  _cached_size_ = 0;
  m_roleid_ = 0;
  m_count_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_BlackMarket_Obj_DB_Return::~SM_BlackMarket_Obj_DB_Return() {
  SharedDtor();
}

void SM_BlackMarket_Obj_DB_Return::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SM_BlackMarket_Obj_DB_Return::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_BlackMarket_Obj_DB_Return::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_BlackMarket_Obj_DB_Return_descriptor_;
}

const SM_BlackMarket_Obj_DB_Return& SM_BlackMarket_Obj_DB_Return::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fblackmarket_2etxt();
  return *default_instance_;
}

SM_BlackMarket_Obj_DB_Return* SM_BlackMarket_Obj_DB_Return::default_instance_ = NULL;

SM_BlackMarket_Obj_DB_Return* SM_BlackMarket_Obj_DB_Return::New() const {
  return new SM_BlackMarket_Obj_DB_Return;
}

void SM_BlackMarket_Obj_DB_Return::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_roleid_ = 0;
    m_count_ = 0;
  }
  m_blackmarketobj_.Clear();
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_BlackMarket_Obj_DB_Return::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_roleid = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_roleid_)));
          set_has_m_roleid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_m_Count;
        break;
      }

      // optional int32 m_Count = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_Count:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_count_)));
          set_has_m_count();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(26)) goto parse_m_blackMarketObj;
        break;
      }

      // repeated .SM_BlackMarketObj m_blackMarketObj = 3;
      case 3: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
         parse_m_blackMarketObj:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
                input, add_m_blackmarketobj()));
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(26)) goto parse_m_blackMarketObj;
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

void SM_BlackMarket_Obj_DB_Return::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_roleid = 1;
  if (has_m_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_roleid(), output);
  }

  // optional int32 m_Count = 2;
  if (has_m_count()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->m_count(), output);
  }

  // repeated .SM_BlackMarketObj m_blackMarketObj = 3;
  for (int i = 0; i < this->m_blackmarketobj_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      3, this->m_blackmarketobj(i), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_BlackMarket_Obj_DB_Return::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_roleid = 1;
  if (has_m_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_roleid(), target);
  }

  // optional int32 m_Count = 2;
  if (has_m_count()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->m_count(), target);
  }

  // repeated .SM_BlackMarketObj m_blackMarketObj = 3;
  for (int i = 0; i < this->m_blackmarketobj_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        3, this->m_blackmarketobj(i), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_BlackMarket_Obj_DB_Return::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_roleid = 1;
    if (has_m_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_roleid());
    }

    // optional int32 m_Count = 2;
    if (has_m_count()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_count());
    }

  }
  // repeated .SM_BlackMarketObj m_blackMarketObj = 3;
  total_size += 1 * this->m_blackmarketobj_size();
  for (int i = 0; i < this->m_blackmarketobj_size(); i++) {
    total_size +=
      ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
        this->m_blackmarketobj(i));
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

void SM_BlackMarket_Obj_DB_Return::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_BlackMarket_Obj_DB_Return* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_BlackMarket_Obj_DB_Return*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_BlackMarket_Obj_DB_Return::MergeFrom(const SM_BlackMarket_Obj_DB_Return& from) {
  GOOGLE_CHECK_NE(&from, this);
  m_blackmarketobj_.MergeFrom(from.m_blackmarketobj_);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_roleid()) {
      set_m_roleid(from.m_roleid());
    }
    if (from.has_m_count()) {
      set_m_count(from.m_count());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_BlackMarket_Obj_DB_Return::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_BlackMarket_Obj_DB_Return::CopyFrom(const SM_BlackMarket_Obj_DB_Return& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_BlackMarket_Obj_DB_Return::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  for (int i = 0; i < m_blackmarketobj_size(); i++) {
    if (!this->m_blackmarketobj(i).IsInitialized()) return false;
  }
  return true;
}

void SM_BlackMarket_Obj_DB_Return::Swap(SM_BlackMarket_Obj_DB_Return* other) {
  if (other != this) {
    std::swap(m_roleid_, other->m_roleid_);
    std::swap(m_count_, other->m_count_);
    m_blackmarketobj_.Swap(&other->m_blackmarketobj_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_BlackMarket_Obj_DB_Return::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_BlackMarket_Obj_DB_Return_descriptor_;
  metadata.reflection = SM_BlackMarket_Obj_DB_Return_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif
