//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/IntSequenceOutputs.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/fst/IntSequenceOutputs.h"
#include "org/apache/lucene/util/fst/Outputs.h"

@interface OrgApacheLuceneUtilFstIntSequenceOutputs ()

- (instancetype)init;

@end

static OrgApacheLuceneUtilIntsRef *OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstIntSequenceOutputs, NO_OUTPUT_, OrgApacheLuceneUtilIntsRef *)

static OrgApacheLuceneUtilFstIntSequenceOutputs *OrgApacheLuceneUtilFstIntSequenceOutputs_singleton_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstIntSequenceOutputs, singleton_, OrgApacheLuceneUtilFstIntSequenceOutputs *)

static jlong OrgApacheLuceneUtilFstIntSequenceOutputs_BASE_NUM_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstIntSequenceOutputs, BASE_NUM_BYTES_, jlong)

__attribute__((unused)) static void OrgApacheLuceneUtilFstIntSequenceOutputs_init(OrgApacheLuceneUtilFstIntSequenceOutputs *self);

__attribute__((unused)) static OrgApacheLuceneUtilFstIntSequenceOutputs *new_OrgApacheLuceneUtilFstIntSequenceOutputs_init() NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilFstIntSequenceOutputs)

@implementation OrgApacheLuceneUtilFstIntSequenceOutputs

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilFstIntSequenceOutputs_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilFstIntSequenceOutputs *)getSingleton {
  return OrgApacheLuceneUtilFstIntSequenceOutputs_getSingleton();
}

- (OrgApacheLuceneUtilIntsRef *)commonWithId:(OrgApacheLuceneUtilIntsRef *)output1
                                      withId:(OrgApacheLuceneUtilIntsRef *)output2 {
  JreAssert((output1 != nil), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:48 condition failed: assert output1 != null;"));
  JreAssert((output2 != nil), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:49 condition failed: assert output2 != null;"));
  jint pos1 = ((OrgApacheLuceneUtilIntsRef *) nil_chk(output1))->offset_;
  jint pos2 = ((OrgApacheLuceneUtilIntsRef *) nil_chk(output2))->offset_;
  jint stopAt1 = pos1 + JavaLangMath_minWithInt_withInt_(output1->length_, output2->length_);
  while (pos1 < stopAt1) {
    if (IOSIntArray_Get(nil_chk(output1->ints_), pos1) != IOSIntArray_Get(output2->ints_, pos2)) {
      break;
    }
    pos1++;
    pos2++;
  }
  if (pos1 == output1->offset_) {
    return OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_;
  }
  else if (pos1 == output1->offset_ + output1->length_) {
    return output1;
  }
  else if (pos2 == output2->offset_ + output2->length_) {
    return output2;
  }
  else {
    return [new_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(output1->ints_, output1->offset_, pos1 - output1->offset_) autorelease];
  }
}

- (OrgApacheLuceneUtilIntsRef *)subtractWithId:(OrgApacheLuceneUtilIntsRef *)output
                                        withId:(OrgApacheLuceneUtilIntsRef *)inc {
  JreAssert((output != nil), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:78 condition failed: assert output != null;"));
  JreAssert((inc != nil), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:79 condition failed: assert inc != null;"));
  if (inc == OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_) {
    return output;
  }
  else if (((OrgApacheLuceneUtilIntsRef *) nil_chk(inc))->length_ == ((OrgApacheLuceneUtilIntsRef *) nil_chk(output))->length_) {
    return OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_;
  }
  else {
    JreAssert((inc->length_ < output->length_), (JreStrcat("$I$I", @"inc.length=", inc->length_, @" vs output.length=", output->length_)));
    JreAssert((inc->length_ > 0), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:88 condition failed: assert inc.length > 0;"));
    return [new_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(output->ints_, output->offset_ + inc->length_, output->length_ - inc->length_) autorelease];
  }
}

- (OrgApacheLuceneUtilIntsRef *)addWithId:(OrgApacheLuceneUtilIntsRef *)prefix
                                   withId:(OrgApacheLuceneUtilIntsRef *)output {
  JreAssert((prefix != nil), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:95 condition failed: assert prefix != null;"));
  JreAssert((output != nil), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:96 condition failed: assert output != null;"));
  if (prefix == OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_) {
    return output;
  }
  else if (output == OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_) {
    return prefix;
  }
  else {
    JreAssert((((OrgApacheLuceneUtilIntsRef *) nil_chk(prefix))->length_ > 0), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:102 condition failed: assert prefix.length > 0;"));
    JreAssert((((OrgApacheLuceneUtilIntsRef *) nil_chk(output))->length_ > 0), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:103 condition failed: assert output.length > 0;"));
    OrgApacheLuceneUtilIntsRef *result = [new_OrgApacheLuceneUtilIntsRef_initWithInt_(prefix->length_ + output->length_) autorelease];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(prefix->ints_, prefix->offset_, result->ints_, 0, prefix->length_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(output->ints_, output->offset_, result->ints_, prefix->length_, output->length_);
    result->length_ = prefix->length_ + output->length_;
    return result;
  }
}

- (void)writeWithId:(OrgApacheLuceneUtilIntsRef *)prefix
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  JreAssert((prefix != nil), (@"org/apache/lucene/util/fst/IntSequenceOutputs.java:114 condition failed: assert prefix != null;"));
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVIntWithInt:((OrgApacheLuceneUtilIntsRef *) nil_chk(prefix))->length_];
  for (jint idx = 0; idx < prefix->length_; idx++) {
    [outArg writeVIntWithInt:IOSIntArray_Get(nil_chk(prefix->ints_), prefix->offset_ + idx)];
  }
}

- (OrgApacheLuceneUtilIntsRef *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jint len = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  if (len == 0) {
    return OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_;
  }
  else {
    OrgApacheLuceneUtilIntsRef *output = [new_OrgApacheLuceneUtilIntsRef_initWithInt_(len) autorelease];
    for (jint idx = 0; idx < len; idx++) {
      *IOSIntArray_GetRef(nil_chk(output->ints_), idx) = [inArg readVInt];
    }
    output->length_ = len;
    return output;
  }
}

- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jint len = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  if (len == 0) {
    return;
  }
  for (jint idx = 0; idx < len; idx++) {
    [inArg readVInt];
  }
}

- (OrgApacheLuceneUtilIntsRef *)getNoOutput {
  return OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_;
}

- (NSString *)outputToStringWithId:(OrgApacheLuceneUtilIntsRef *)output {
  return [((OrgApacheLuceneUtilIntsRef *) nil_chk(output)) description];
}

- (jlong)ramBytesUsedWithId:(OrgApacheLuceneUtilIntsRef *)output {
  return OrgApacheLuceneUtilFstIntSequenceOutputs_BASE_NUM_BYTES_ + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(((OrgApacheLuceneUtilIntsRef *) nil_chk(output))->ints_);
}

- (NSString *)description {
  return @"IntSequenceOutputs";
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilFstIntSequenceOutputs class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_, new_OrgApacheLuceneUtilIntsRef_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilFstIntSequenceOutputs_singleton_, new_OrgApacheLuceneUtilFstIntSequenceOutputs_init());
    OrgApacheLuceneUtilFstIntSequenceOutputs_BASE_NUM_BYTES_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilFstIntSequenceOutputs)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "IntSequenceOutputs", NULL, 0x2, NULL, NULL },
    { "getSingleton", NULL, "Lorg.apache.lucene.util.fst.IntSequenceOutputs;", 0x9, NULL, NULL },
    { "commonWithId:withId:", "common", "Lorg.apache.lucene.util.IntsRef;", 0x1, NULL, NULL },
    { "subtractWithId:withId:", "subtract", "Lorg.apache.lucene.util.IntsRef;", 0x1, NULL, NULL },
    { "addWithId:withId:", "add", "Lorg.apache.lucene.util.IntsRef;", 0x1, NULL, NULL },
    { "writeWithId:withOrgApacheLuceneStoreDataOutput:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "readWithOrgApacheLuceneStoreDataInput:", "read", "Lorg.apache.lucene.util.IntsRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "skipOutputWithOrgApacheLuceneStoreDataInput:", "skipOutput", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getNoOutput", NULL, "Lorg.apache.lucene.util.IntsRef;", 0x1, NULL, NULL },
    { "outputToStringWithId:", "outputToString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "ramBytesUsedWithId:", "ramBytesUsed", "J", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NO_OUTPUT_", NULL, 0x1a, "Lorg.apache.lucene.util.IntsRef;", &OrgApacheLuceneUtilFstIntSequenceOutputs_NO_OUTPUT_, NULL, .constantValue.asLong = 0 },
    { "singleton_", NULL, 0x1a, "Lorg.apache.lucene.util.fst.IntSequenceOutputs;", &OrgApacheLuceneUtilFstIntSequenceOutputs_singleton_, NULL, .constantValue.asLong = 0 },
    { "BASE_NUM_BYTES_", NULL, 0x1a, "J", &OrgApacheLuceneUtilFstIntSequenceOutputs_BASE_NUM_BYTES_, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.util.IntsRef;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstIntSequenceOutputs = { 2, "IntSequenceOutputs", "org.apache.lucene.util.fst", NULL, 0x11, 12, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/fst/Outputs<Lorg/apache/lucene/util/IntsRef;>;" };
  return &_OrgApacheLuceneUtilFstIntSequenceOutputs;
}

@end

void OrgApacheLuceneUtilFstIntSequenceOutputs_init(OrgApacheLuceneUtilFstIntSequenceOutputs *self) {
  OrgApacheLuceneUtilFstOutputs_init(self);
}

OrgApacheLuceneUtilFstIntSequenceOutputs *new_OrgApacheLuceneUtilFstIntSequenceOutputs_init() {
  OrgApacheLuceneUtilFstIntSequenceOutputs *self = [OrgApacheLuceneUtilFstIntSequenceOutputs alloc];
  OrgApacheLuceneUtilFstIntSequenceOutputs_init(self);
  return self;
}

OrgApacheLuceneUtilFstIntSequenceOutputs *OrgApacheLuceneUtilFstIntSequenceOutputs_getSingleton() {
  OrgApacheLuceneUtilFstIntSequenceOutputs_initialize();
  return OrgApacheLuceneUtilFstIntSequenceOutputs_singleton_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstIntSequenceOutputs)
