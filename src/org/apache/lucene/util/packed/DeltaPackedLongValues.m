//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/DeltaPackedLongValues.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/DeltaPackedLongValues.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PackedLongValues.h"

inline jlong OrgApacheLuceneUtilPackedDeltaPackedLongValues_get_BASE_RAM_BYTES_USED();
static jlong OrgApacheLuceneUtilPackedDeltaPackedLongValues_BASE_RAM_BYTES_USED;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilPackedDeltaPackedLongValues, BASE_RAM_BYTES_USED, jlong)

inline jlong OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_get_BASE_RAM_BYTES_USED();
static jlong OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_BASE_RAM_BYTES_USED;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder, BASE_RAM_BYTES_USED, jlong)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPackedDeltaPackedLongValues)

@implementation OrgApacheLuceneUtilPackedDeltaPackedLongValues

- (instancetype)initWithInt:(jint)pageShift
                    withInt:(jint)pageMask
withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(IOSObjectArray *)values
              withLongArray:(IOSLongArray *)mins
                   withLong:(jlong)size
                   withLong:(jlong)ramBytesUsed {
  OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(self, pageShift, pageMask, values, mins, size, ramBytesUsed);
  return self;
}

- (jlong)getWithInt:(jint)block
            withInt:(jint)element {
  return IOSLongArray_Get(nil_chk(mins_), block) + [((OrgApacheLuceneUtilPackedPackedInts_Reader *) nil_chk(IOSObjectArray_Get(nil_chk(values_), block))) getWithInt:element];
}

- (jint)decodeBlockWithInt:(jint)block
             withLongArray:(IOSLongArray *)dest {
  jint count = [super decodeBlockWithInt:block withLongArray:dest];
  jlong min = IOSLongArray_Get(nil_chk(mins_), block);
  for (jint i = 0; i < count; ++i) {
    *IOSLongArray_GetRef(nil_chk(dest), i) += min;
  }
  return count;
}

- (void)dealloc {
  RELEASE_(mins_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPackedDeltaPackedLongValues class]) {
    OrgApacheLuceneUtilPackedDeltaPackedLongValues_BASE_RAM_BYTES_USED = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(OrgApacheLuceneUtilPackedDeltaPackedLongValues_class_());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPackedDeltaPackedLongValues)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:withLongArray:withLong:withLong:", "DeltaPackedLongValues", NULL, 0x0, NULL, NULL },
    { "getWithInt:withInt:", "get", "J", 0x0, NULL, NULL },
    { "decodeBlockWithInt:withLongArray:", "decodeBlock", "I", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BASE_RAM_BYTES_USED", "BASE_RAM_BYTES_USED", 0x1a, "J", &OrgApacheLuceneUtilPackedDeltaPackedLongValues_BASE_RAM_BYTES_USED, NULL, .constantValue.asLong = 0 },
    { "mins_", NULL, 0x10, "[J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.packed.DeltaPackedLongValues$Builder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDeltaPackedLongValues = { 2, "DeltaPackedLongValues", "org.apache.lucene.util.packed", NULL, 0x0, 3, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDeltaPackedLongValues;
}

@end

void OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(OrgApacheLuceneUtilPackedDeltaPackedLongValues *self, jint pageShift, jint pageMask, IOSObjectArray *values, IOSLongArray *mins, jlong size, jlong ramBytesUsed) {
  OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(self, pageShift, pageMask, values, size, ramBytesUsed);
  JreAssert((((IOSObjectArray *) nil_chk(values))->size_ == ((IOSLongArray *) nil_chk(mins))->size_), (@"org/apache/lucene/util/packed/DeltaPackedLongValues.java:33 condition failed: assert values.length == mins.length;"));
  JreStrongAssign(&self->mins_, mins);
}

OrgApacheLuceneUtilPackedDeltaPackedLongValues *new_OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(jint pageShift, jint pageMask, IOSObjectArray *values, IOSLongArray *mins, jlong size, jlong ramBytesUsed) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDeltaPackedLongValues, initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_, pageShift, pageMask, values, mins, size, ramBytesUsed)
}

OrgApacheLuceneUtilPackedDeltaPackedLongValues *create_OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(jint pageShift, jint pageMask, IOSObjectArray *values, IOSLongArray *mins, jlong size, jlong ramBytesUsed) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDeltaPackedLongValues, initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_, pageShift, pageMask, values, mins, size, ramBytesUsed)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDeltaPackedLongValues)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder)

@implementation OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder

- (instancetype)initWithInt:(jint)pageSize
                  withFloat:(jfloat)acceptableOverheadRatio {
  OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_initWithInt_withFloat_(self, pageSize, acceptableOverheadRatio);
  return self;
}

- (jlong)baseRamBytesUsed {
  return OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_BASE_RAM_BYTES_USED;
}

- (OrgApacheLuceneUtilPackedDeltaPackedLongValues *)build {
  [self finish];
  JreStrongAssign(&pending_, nil);
  IOSObjectArray *values = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->values_, valuesOff_);
  IOSLongArray *mins = JavaUtilArrays_copyOfWithLongArray_withInt_(self->mins_, valuesOff_);
  jlong ramBytesUsed = JreLoadStatic(OrgApacheLuceneUtilPackedDeltaPackedLongValues, BASE_RAM_BYTES_USED) + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(values) + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(mins);
  return create_OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(pageShift_, pageMask_, values, mins, size_, ramBytesUsed);
}

- (void)packWithLongArray:(IOSLongArray *)values
                  withInt:(jint)numValues
                  withInt:(jint)block
                withFloat:(jfloat)acceptableOverheadRatio {
  jlong min = IOSLongArray_Get(nil_chk(values), 0);
  for (jint i = 1; i < numValues; ++i) {
    min = JavaLangMath_minWithLong_withLong_(min, IOSLongArray_Get(values, i));
  }
  for (jint i = 0; i < numValues; ++i) {
    *IOSLongArray_GetRef(values, i) -= min;
  }
  [super packWithLongArray:values withInt:numValues withInt:block withFloat:acceptableOverheadRatio];
  *IOSLongArray_GetRef(nil_chk(mins_), block) = min;
}

- (void)growWithInt:(jint)newBlockCount {
  [super growWithInt:newBlockCount];
  ramBytesUsed_ -= OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(mins_);
  JreStrongAssign(&mins_, JavaUtilArrays_copyOfWithLongArray_withInt_(mins_, newBlockCount));
  ramBytesUsed_ += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(mins_);
}

- (void)dealloc {
  RELEASE_(mins_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder class]) {
    OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_BASE_RAM_BYTES_USED = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_class_());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withFloat:", "Builder", NULL, 0x0, NULL, NULL },
    { "baseRamBytesUsed", NULL, "J", 0x0, NULL, NULL },
    { "build", NULL, "Lorg.apache.lucene.util.packed.DeltaPackedLongValues;", 0x1, NULL, NULL },
    { "packWithLongArray:withInt:withInt:withFloat:", "pack", "V", 0x0, NULL, NULL },
    { "growWithInt:", "grow", "V", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BASE_RAM_BYTES_USED", "BASE_RAM_BYTES_USED", 0x1a, "J", &OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_BASE_RAM_BYTES_USED, NULL, .constantValue.asLong = 0 },
    { "mins_", NULL, 0x0, "[J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder = { 2, "Builder", "org.apache.lucene.util.packed", "DeltaPackedLongValues", 0x8, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder;
}

@end

void OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_initWithInt_withFloat_(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *self, jint pageSize, jfloat acceptableOverheadRatio) {
  OrgApacheLuceneUtilPackedPackedLongValues_Builder_initWithInt_withFloat_(self, pageSize, acceptableOverheadRatio);
  JreStrongAssignAndConsume(&self->mins_, [IOSLongArray newArrayWithLength:((IOSObjectArray *) nil_chk(self->values_))->size_]);
  self->ramBytesUsed_ += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->mins_);
}

OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *new_OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_initWithInt_withFloat_(jint pageSize, jfloat acceptableOverheadRatio) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder, initWithInt_withFloat_, pageSize, acceptableOverheadRatio)
}

OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *create_OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_initWithInt_withFloat_(jint pageSize, jfloat acceptableOverheadRatio) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder, initWithInt_withFloat_, pageSize, acceptableOverheadRatio)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder)
