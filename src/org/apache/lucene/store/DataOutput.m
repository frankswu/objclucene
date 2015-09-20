//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/DataOutput.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/BitUtil.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneStoreDataOutput () {
 @public
  IOSByteArray *copyBuffer_;
}

- (void)writeSignedVLongWithLong:(jlong)i;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreDataOutput, copyBuffer_, IOSByteArray *)

static jint OrgApacheLuceneStoreDataOutput_COPY_BUFFER_SIZE_ = 16384;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneStoreDataOutput, COPY_BUFFER_SIZE_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgApacheLuceneStoreDataOutput, COPY_BUFFER_SIZE_, jint)
__attribute__((unused)) static void OrgApacheLuceneStoreDataOutput_writeVIntWithInt_(OrgApacheLuceneStoreDataOutput *self, jint i);

__attribute__((unused)) static void OrgApacheLuceneStoreDataOutput_writeSignedVLongWithLong_(OrgApacheLuceneStoreDataOutput *self, jlong i);

@implementation OrgApacheLuceneStoreDataOutput

- (void)writeByteWithByte:(jbyte)b {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)length {
  [self writeBytesWithByteArray:b withInt:0 withInt:length];
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)length {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)writeIntWithInt:(jint)i {
  [self writeByteWithByte:(jbyte) (JreRShift32(i, 24))];
  [self writeByteWithByte:(jbyte) (JreRShift32(i, 16))];
  [self writeByteWithByte:(jbyte) (JreRShift32(i, 8))];
  [self writeByteWithByte:(jbyte) i];
}

- (void)writeShortWithShort:(jshort)i {
  [self writeByteWithByte:(jbyte) (JreRShift32(i, 8))];
  [self writeByteWithByte:(jbyte) i];
}

- (void)writeVIntWithInt:(jint)i {
  OrgApacheLuceneStoreDataOutput_writeVIntWithInt_(self, i);
}

- (void)writeZIntWithInt:(jint)i {
  OrgApacheLuceneStoreDataOutput_writeVIntWithInt_(self, OrgApacheLuceneUtilBitUtil_zigZagEncodeWithInt_(i));
}

- (void)writeLongWithLong:(jlong)i {
  [self writeIntWithInt:(jint) (JreRShift64(i, 32))];
  [self writeIntWithInt:(jint) i];
}

- (void)writeVLongWithLong:(jlong)i {
  if (i < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$JC", @"cannot write negative vLong (got: ", i, ')')) autorelease];
  }
  OrgApacheLuceneStoreDataOutput_writeSignedVLongWithLong_(self, i);
}

- (void)writeSignedVLongWithLong:(jlong)i {
  OrgApacheLuceneStoreDataOutput_writeSignedVLongWithLong_(self, i);
}

- (void)writeZLongWithLong:(jlong)i {
  OrgApacheLuceneStoreDataOutput_writeSignedVLongWithLong_(self, OrgApacheLuceneUtilBitUtil_zigZagEncodeWithLong_(i));
}

- (void)writeStringWithNSString:(NSString *)s {
  OrgApacheLuceneUtilBytesRef *utf8Result = [new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(s) autorelease];
  OrgApacheLuceneStoreDataOutput_writeVIntWithInt_(self, utf8Result->length_);
  [self writeBytesWithByteArray:utf8Result->bytes_ withInt:utf8Result->offset_ withInt:utf8Result->length_];
}

- (void)copyBytesWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input
                                          withLong:(jlong)numBytes {
  JreAssert((numBytes >= 0), (JreStrcat("$J", @"numBytes=", numBytes)));
  jlong left = numBytes;
  if (copyBuffer_ == nil) JreStrongAssignAndConsume(&copyBuffer_, [IOSByteArray newArrayWithLength:OrgApacheLuceneStoreDataOutput_COPY_BUFFER_SIZE_]);
  while (left > 0) {
    jint toCopy;
    if (left > OrgApacheLuceneStoreDataOutput_COPY_BUFFER_SIZE_) toCopy = OrgApacheLuceneStoreDataOutput_COPY_BUFFER_SIZE_;
    else toCopy = (jint) left;
    [((OrgApacheLuceneStoreDataInput *) nil_chk(input)) readBytesWithByteArray:copyBuffer_ withInt:0 withInt:toCopy];
    [self writeBytesWithByteArray:copyBuffer_ withInt:0 withInt:toCopy];
    left -= toCopy;
  }
}

- (void)writeStringStringMapWithJavaUtilMap:(id<JavaUtilMap>)map {
  if (map == nil) {
    [self writeIntWithInt:0];
  }
  else {
    [self writeIntWithInt:[map size]];
    for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([map entrySet])) {
      [self writeStringWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]];
      [self writeStringWithNSString:[entry_ getValue]];
    }
  }
}

- (void)writeMapOfStringsWithJavaUtilMap:(id<JavaUtilMap>)map {
  OrgApacheLuceneStoreDataOutput_writeVIntWithInt_(self, [((id<JavaUtilMap>) nil_chk(map)) size]);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([map entrySet])) {
    [self writeStringWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]];
    [self writeStringWithNSString:[entry_ getValue]];
  }
}

- (void)writeStringSetWithJavaUtilSet:(id<JavaUtilSet>)set {
  if (set == nil) {
    [self writeIntWithInt:0];
  }
  else {
    [self writeIntWithInt:[set size]];
    for (NSString * __strong value in set) {
      [self writeStringWithNSString:value];
    }
  }
}

- (void)writeSetOfStringsWithJavaUtilSet:(id<JavaUtilSet>)set {
  OrgApacheLuceneStoreDataOutput_writeVIntWithInt_(self, [((id<JavaUtilSet>) nil_chk(set)) size]);
  for (NSString * __strong value in set) {
    [self writeStringWithNSString:value];
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreDataOutput_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(copyBuffer_);
  [super dealloc];
}

+ (IOSObjectArray *)__annotations_writeStringStringMapWithJavaUtilMap_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_writeStringSetWithJavaUtilSet_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "writeByteWithByte:", "writeByte", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "writeBytesWithByteArray:withInt:", "writeBytes", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeBytesWithByteArray:withInt:withInt:", "writeBytes", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "writeIntWithInt:", "writeInt", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeShortWithShort:", "writeShort", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeVIntWithInt:", "writeVInt", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "writeZIntWithInt:", "writeZInt", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "writeLongWithLong:", "writeLong", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeVLongWithLong:", "writeVLong", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "writeSignedVLongWithLong:", "writeSignedVLong", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "writeZLongWithLong:", "writeZLong", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "writeStringWithNSString:", "writeString", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "copyBytesWithOrgApacheLuceneStoreDataInput:withLong:", "copyBytes", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeStringStringMapWithJavaUtilMap:", "writeStringStringMap", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeMapOfStringsWithJavaUtilMap:", "writeMapOfStrings", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeStringSetWithJavaUtilSet:", "writeStringSet", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeSetOfStringsWithJavaUtilSet:", "writeSetOfStrings", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "COPY_BUFFER_SIZE_", NULL, 0xa, "I", &OrgApacheLuceneStoreDataOutput_COPY_BUFFER_SIZE_, NULL, .constantValue.asLong = 0 },
    { "copyBuffer_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreDataOutput = { 2, "DataOutput", "org.apache.lucene.store", NULL, 0x401, 18, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreDataOutput;
}

@end

void OrgApacheLuceneStoreDataOutput_writeVIntWithInt_(OrgApacheLuceneStoreDataOutput *self, jint i) {
  while ((i & ~(jint) 0x7F) != 0) {
    [self writeByteWithByte:(jbyte) ((i & (jint) 0x7F) | (jint) 0x80)];
    JreURShiftAssignInt(&i, 7);
  }
  [self writeByteWithByte:(jbyte) i];
}

void OrgApacheLuceneStoreDataOutput_writeSignedVLongWithLong_(OrgApacheLuceneStoreDataOutput *self, jlong i) {
  while ((i & ~(jlong) 0x7FLL) != 0LL) {
    [self writeByteWithByte:(jbyte) ((i & (jlong) 0x7FLL) | (jlong) 0x80LL)];
    JreURShiftAssignLong(&i, 7);
  }
  [self writeByteWithByte:(jbyte) i];
}

void OrgApacheLuceneStoreDataOutput_init(OrgApacheLuceneStoreDataOutput *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreDataOutput)
