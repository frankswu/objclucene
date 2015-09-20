//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/ForwardBytesReader.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/ForwardBytesReader.h"

@interface OrgApacheLuceneUtilFstForwardBytesReader () {
 @public
  IOSByteArray *bytes_;
  jint pos_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstForwardBytesReader, bytes_, IOSByteArray *)

@implementation OrgApacheLuceneUtilFstForwardBytesReader

- (instancetype)initWithByteArray:(IOSByteArray *)bytes {
  OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(self, bytes);
  return self;
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

- (void)skipBytesWithLong:(jlong)count {
  pos_ += count;
}

- (jlong)getPosition {
  return pos_;
}

- (void)setPositionWithLong:(jlong)pos {
  self->pos_ = (jint) pos;
}

- (jboolean)reversed {
  return false;
}

- (void)dealloc {
  RELEASE_(bytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:", "ForwardBytesReader", NULL, 0x1, NULL, NULL },
    { "readByte", NULL, "B", 0x1, NULL, NULL },
    { "readBytesWithByteArray:withInt:withInt:", "readBytes", "V", 0x1, NULL, NULL },
    { "skipBytesWithLong:", "skipBytes", "V", 0x1, NULL, NULL },
    { "getPosition", NULL, "J", 0x1, NULL, NULL },
    { "setPositionWithLong:", "setPosition", "V", 0x1, NULL, NULL },
    { "reversed", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bytes_", NULL, 0x12, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstForwardBytesReader = { 2, "ForwardBytesReader", "org.apache.lucene.util.fst", NULL, 0x10, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilFstForwardBytesReader;
}

@end

void OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(OrgApacheLuceneUtilFstForwardBytesReader *self, IOSByteArray *bytes) {
  OrgApacheLuceneUtilFstFST_BytesReader_init(self);
  JreStrongAssign(&self->bytes_, bytes);
}

OrgApacheLuceneUtilFstForwardBytesReader *new_OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(IOSByteArray *bytes) {
  OrgApacheLuceneUtilFstForwardBytesReader *self = [OrgApacheLuceneUtilFstForwardBytesReader alloc];
  OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(self, bytes);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstForwardBytesReader)
