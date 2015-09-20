//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/ByteArrayDataInput.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "org/apache/lucene/store/ByteArrayDataInput.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneStoreByteArrayDataInput () {
 @public
  IOSByteArray *bytes_;
  jint pos_;
  jint limit_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreByteArrayDataInput, bytes_, IOSByteArray *)

@implementation OrgApacheLuceneStoreByteArrayDataInput

- (instancetype)initWithByteArray:(IOSByteArray *)bytes {
  OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_(self, bytes);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)bytes
                          withInt:(jint)offset
                          withInt:(jint)len {
  OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(self, bytes, offset, len);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreByteArrayDataInput_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)resetWithByteArray:(IOSByteArray *)bytes {
  [self resetWithByteArray:bytes withInt:0 withInt:((IOSByteArray *) nil_chk(bytes))->size_];
}

- (void)rewind {
  pos_ = 0;
}

- (jint)getPosition {
  return pos_;
}

- (void)setPositionWithInt:(jint)pos {
  self->pos_ = pos;
}

- (void)resetWithByteArray:(IOSByteArray *)bytes
                   withInt:(jint)offset
                   withInt:(jint)len {
  JreStrongAssign(&self->bytes_, bytes);
  pos_ = offset;
  limit_ = offset + len;
}

- (jint)length {
  return limit_;
}

- (jboolean)eof {
  return pos_ == limit_;
}

- (void)skipBytesWithLong:(jlong)count {
  pos_ += count;
}

- (jshort)readShort {
  jint unseq$1 = pos_++;
  return (jshort) ((JreLShift32((IOSByteArray_Get(nil_chk(bytes_), unseq$1) & (jint) 0xFF), 8)) | (IOSByteArray_Get(bytes_, pos_++) & (jint) 0xFF));
}

- (jint)readInt {
  jint unseq$1 = pos_++;
  jint unseq$2 = pos_++;
  jint unseq$3 = pos_++;
  return (JreLShift32((IOSByteArray_Get(nil_chk(bytes_), unseq$1) & (jint) 0xFF), 24)) | (JreLShift32((IOSByteArray_Get(bytes_, unseq$2) & (jint) 0xFF), 16)) | (JreLShift32((IOSByteArray_Get(bytes_, unseq$3) & (jint) 0xFF), 8)) | (IOSByteArray_Get(bytes_, pos_++) & (jint) 0xFF);
}

- (jlong)readLong {
  jint unseq$1 = pos_++;
  jint unseq$2 = pos_++;
  jint unseq$3 = pos_++;
  jint i1 = (JreLShift32((IOSByteArray_Get(nil_chk(bytes_), unseq$1) & (jint) 0xff), 24)) | (JreLShift32((IOSByteArray_Get(bytes_, unseq$2) & (jint) 0xff), 16)) | (JreLShift32((IOSByteArray_Get(bytes_, unseq$3) & (jint) 0xff), 8)) | (IOSByteArray_Get(bytes_, pos_++) & (jint) 0xff);
  jint unseq$4 = pos_++;
  jint unseq$5 = pos_++;
  jint unseq$6 = pos_++;
  jint i2 = (JreLShift32((IOSByteArray_Get(bytes_, unseq$4) & (jint) 0xff), 24)) | (JreLShift32((IOSByteArray_Get(bytes_, unseq$5) & (jint) 0xff), 16)) | (JreLShift32((IOSByteArray_Get(bytes_, unseq$6) & (jint) 0xff), 8)) | (IOSByteArray_Get(bytes_, pos_++) & (jint) 0xff);
  return (JreLShift64(((jlong) i1), 32)) | (i2 & (jlong) 0xFFFFFFFFLL);
}

- (jint)readVInt {
  jbyte b = IOSByteArray_Get(nil_chk(bytes_), pos_++);
  if (b >= 0) return b;
  jint i = b & (jint) 0x7F;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift32((b & (jint) 0x7F), 7);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift32((b & (jint) 0x7F), 14);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift32((b & (jint) 0x7F), 21);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift32((b & (jint) 0x0F), 28);
  if ((b & (jint) 0xF0) == 0) return i;
  @throw [new_JavaLangRuntimeException_initWithNSString_(@"Invalid vInt detected (too many bits)") autorelease];
}

- (jlong)readVLong {
  jbyte b = IOSByteArray_Get(nil_chk(bytes_), pos_++);
  if (b >= 0) return b;
  jlong i = b & (jlong) 0x7FLL;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift64((b & (jlong) 0x7FLL), 7);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift64((b & (jlong) 0x7FLL), 14);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift64((b & (jlong) 0x7FLL), 21);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift64((b & (jlong) 0x7FLL), 28);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift64((b & (jlong) 0x7FLL), 35);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift64((b & (jlong) 0x7FLL), 42);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift64((b & (jlong) 0x7FLL), 49);
  if (b >= 0) return i;
  b = IOSByteArray_Get(bytes_, pos_++);
  i |= JreLShift64((b & (jlong) 0x7FLL), 56);
  if (b >= 0) return i;
  @throw [new_JavaLangRuntimeException_initWithNSString_(@"Invalid vLong detected (negative values disallowed)") autorelease];
}

- (jbyte)readByte {
  return IOSByteArray_Get(nil_chk(bytes_), pos_++);
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes_, pos_, b, offset, len);
  pos_ += len;
}

- (void)dealloc {
  RELEASE_(bytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:", "ByteArrayDataInput", NULL, 0x1, NULL, NULL },
    { "initWithByteArray:withInt:withInt:", "ByteArrayDataInput", NULL, 0x1, NULL, NULL },
    { "init", "ByteArrayDataInput", NULL, 0x1, NULL, NULL },
    { "resetWithByteArray:", "reset", "V", 0x1, NULL, NULL },
    { "rewind", NULL, "V", 0x1, NULL, NULL },
    { "getPosition", NULL, "I", 0x1, NULL, NULL },
    { "setPositionWithInt:", "setPosition", "V", 0x1, NULL, NULL },
    { "resetWithByteArray:withInt:withInt:", "reset", "V", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "eof", NULL, "Z", 0x1, NULL, NULL },
    { "skipBytesWithLong:", "skipBytes", "V", 0x1, NULL, NULL },
    { "readShort", NULL, "S", 0x1, NULL, NULL },
    { "readInt", NULL, "I", 0x1, NULL, NULL },
    { "readLong", NULL, "J", 0x1, NULL, NULL },
    { "readVInt", NULL, "I", 0x1, NULL, NULL },
    { "readVLong", NULL, "J", 0x1, NULL, NULL },
    { "readByte", NULL, "B", 0x1, NULL, NULL },
    { "readBytesWithByteArray:withInt:withInt:", "readBytes", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bytes_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "limit_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreByteArrayDataInput = { 2, "ByteArrayDataInput", "org.apache.lucene.store", NULL, 0x11, 18, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreByteArrayDataInput;
}

@end

void OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_(OrgApacheLuceneStoreByteArrayDataInput *self, IOSByteArray *bytes) {
  OrgApacheLuceneStoreDataInput_init(self);
  [self resetWithByteArray:bytes];
}

OrgApacheLuceneStoreByteArrayDataInput *new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_(IOSByteArray *bytes) {
  OrgApacheLuceneStoreByteArrayDataInput *self = [OrgApacheLuceneStoreByteArrayDataInput alloc];
  OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_(self, bytes);
  return self;
}

void OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(OrgApacheLuceneStoreByteArrayDataInput *self, IOSByteArray *bytes, jint offset, jint len) {
  OrgApacheLuceneStoreDataInput_init(self);
  [self resetWithByteArray:bytes withInt:offset withInt:len];
}

OrgApacheLuceneStoreByteArrayDataInput *new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint len) {
  OrgApacheLuceneStoreByteArrayDataInput *self = [OrgApacheLuceneStoreByteArrayDataInput alloc];
  OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(self, bytes, offset, len);
  return self;
}

void OrgApacheLuceneStoreByteArrayDataInput_init(OrgApacheLuceneStoreByteArrayDataInput *self) {
  OrgApacheLuceneStoreDataInput_init(self);
  [self resetWithByteArray:JreLoadStatic(OrgApacheLuceneUtilBytesRef, EMPTY_BYTES_)];
}

OrgApacheLuceneStoreByteArrayDataInput *new_OrgApacheLuceneStoreByteArrayDataInput_init() {
  OrgApacheLuceneStoreByteArrayDataInput *self = [OrgApacheLuceneStoreByteArrayDataInput alloc];
  OrgApacheLuceneStoreByteArrayDataInput_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreByteArrayDataInput)
