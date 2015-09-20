//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/CharSequenceOutputs.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/CharsRef.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/fst/CharSequenceOutputs.h"
#include "org/apache/lucene/util/fst/Outputs.h"

@interface OrgApacheLuceneUtilFstCharSequenceOutputs ()

- (instancetype)init;

@end

static OrgApacheLuceneUtilCharsRef *OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstCharSequenceOutputs, NO_OUTPUT_, OrgApacheLuceneUtilCharsRef *)

static OrgApacheLuceneUtilFstCharSequenceOutputs *OrgApacheLuceneUtilFstCharSequenceOutputs_singleton_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstCharSequenceOutputs, singleton_, OrgApacheLuceneUtilFstCharSequenceOutputs *)

static jlong OrgApacheLuceneUtilFstCharSequenceOutputs_BASE_NUM_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstCharSequenceOutputs, BASE_NUM_BYTES_, jlong)

__attribute__((unused)) static void OrgApacheLuceneUtilFstCharSequenceOutputs_init(OrgApacheLuceneUtilFstCharSequenceOutputs *self);

__attribute__((unused)) static OrgApacheLuceneUtilFstCharSequenceOutputs *new_OrgApacheLuceneUtilFstCharSequenceOutputs_init() NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilFstCharSequenceOutputs)

@implementation OrgApacheLuceneUtilFstCharSequenceOutputs

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilFstCharSequenceOutputs_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilFstCharSequenceOutputs *)getSingleton {
  return OrgApacheLuceneUtilFstCharSequenceOutputs_getSingleton();
}

- (OrgApacheLuceneUtilCharsRef *)commonWithId:(OrgApacheLuceneUtilCharsRef *)output1
                                       withId:(OrgApacheLuceneUtilCharsRef *)output2 {
  JreAssert((output1 != nil), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:48 condition failed: assert output1 != null;"));
  JreAssert((output2 != nil), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:49 condition failed: assert output2 != null;"));
  jint pos1 = ((OrgApacheLuceneUtilCharsRef *) nil_chk(output1))->offset_;
  jint pos2 = ((OrgApacheLuceneUtilCharsRef *) nil_chk(output2))->offset_;
  jint stopAt1 = pos1 + JavaLangMath_minWithInt_withInt_(output1->length_, output2->length_);
  while (pos1 < stopAt1) {
    if (IOSCharArray_Get(nil_chk(output1->chars_), pos1) != IOSCharArray_Get(output2->chars_, pos2)) {
      break;
    }
    pos1++;
    pos2++;
  }
  if (pos1 == output1->offset_) {
    return OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_;
  }
  else if (pos1 == output1->offset_ + output1->length_) {
    return output1;
  }
  else if (pos2 == output2->offset_ + output2->length_) {
    return output2;
  }
  else {
    return [new_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(output1->chars_, output1->offset_, pos1 - output1->offset_) autorelease];
  }
}

- (OrgApacheLuceneUtilCharsRef *)subtractWithId:(OrgApacheLuceneUtilCharsRef *)output
                                         withId:(OrgApacheLuceneUtilCharsRef *)inc {
  JreAssert((output != nil), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:78 condition failed: assert output != null;"));
  JreAssert((inc != nil), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:79 condition failed: assert inc != null;"));
  if (inc == OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_) {
    return output;
  }
  else if (((OrgApacheLuceneUtilCharsRef *) nil_chk(inc))->length_ == ((OrgApacheLuceneUtilCharsRef *) nil_chk(output))->length_) {
    return OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_;
  }
  else {
    JreAssert((inc->length_ < output->length_), (JreStrcat("$I$I", @"inc.length=", inc->length_, @" vs output.length=", output->length_)));
    JreAssert((inc->length_ > 0), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:88 condition failed: assert inc.length > 0;"));
    return [new_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(output->chars_, output->offset_ + inc->length_, output->length_ - inc->length_) autorelease];
  }
}

- (OrgApacheLuceneUtilCharsRef *)addWithId:(OrgApacheLuceneUtilCharsRef *)prefix
                                    withId:(OrgApacheLuceneUtilCharsRef *)output {
  JreAssert((prefix != nil), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:95 condition failed: assert prefix != null;"));
  JreAssert((output != nil), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:96 condition failed: assert output != null;"));
  if (prefix == OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_) {
    return output;
  }
  else if (output == OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_) {
    return prefix;
  }
  else {
    JreAssert((((OrgApacheLuceneUtilCharsRef *) nil_chk(prefix))->length_ > 0), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:102 condition failed: assert prefix.length > 0;"));
    JreAssert((((OrgApacheLuceneUtilCharsRef *) nil_chk(output))->length_ > 0), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:103 condition failed: assert output.length > 0;"));
    OrgApacheLuceneUtilCharsRef *result = [new_OrgApacheLuceneUtilCharsRef_initWithInt_(prefix->length_ + output->length_) autorelease];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(prefix->chars_, prefix->offset_, result->chars_, 0, prefix->length_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(output->chars_, output->offset_, result->chars_, prefix->length_, output->length_);
    result->length_ = prefix->length_ + output->length_;
    return result;
  }
}

- (void)writeWithId:(OrgApacheLuceneUtilCharsRef *)prefix
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  JreAssert((prefix != nil), (@"org/apache/lucene/util/fst/CharSequenceOutputs.java:114 condition failed: assert prefix != null;"));
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVIntWithInt:((OrgApacheLuceneUtilCharsRef *) nil_chk(prefix))->length_];
  for (jint idx = 0; idx < prefix->length_; idx++) {
    [outArg writeVIntWithInt:IOSCharArray_Get(nil_chk(prefix->chars_), prefix->offset_ + idx)];
  }
}

- (OrgApacheLuceneUtilCharsRef *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jint len = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  if (len == 0) {
    return OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_;
  }
  else {
    OrgApacheLuceneUtilCharsRef *output = [new_OrgApacheLuceneUtilCharsRef_initWithInt_(len) autorelease];
    for (jint idx = 0; idx < len; idx++) {
      *IOSCharArray_GetRef(nil_chk(output->chars_), idx) = (jchar) [inArg readVInt];
    }
    output->length_ = len;
    return output;
  }
}

- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jint len = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  for (jint idx = 0; idx < len; idx++) {
    [inArg readVInt];
  }
}

- (OrgApacheLuceneUtilCharsRef *)getNoOutput {
  return OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_;
}

- (NSString *)outputToStringWithId:(OrgApacheLuceneUtilCharsRef *)output {
  return [((OrgApacheLuceneUtilCharsRef *) nil_chk(output)) description];
}

- (jlong)ramBytesUsedWithId:(OrgApacheLuceneUtilCharsRef *)output {
  return OrgApacheLuceneUtilFstCharSequenceOutputs_BASE_NUM_BYTES_ + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithCharArray_(((OrgApacheLuceneUtilCharsRef *) nil_chk(output))->chars_);
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilFstCharSequenceOutputs class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_, new_OrgApacheLuceneUtilCharsRef_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilFstCharSequenceOutputs_singleton_, new_OrgApacheLuceneUtilFstCharSequenceOutputs_init());
    OrgApacheLuceneUtilFstCharSequenceOutputs_BASE_NUM_BYTES_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilFstCharSequenceOutputs)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CharSequenceOutputs", NULL, 0x2, NULL, NULL },
    { "getSingleton", NULL, "Lorg.apache.lucene.util.fst.CharSequenceOutputs;", 0x9, NULL, NULL },
    { "commonWithId:withId:", "common", "Lorg.apache.lucene.util.CharsRef;", 0x1, NULL, NULL },
    { "subtractWithId:withId:", "subtract", "Lorg.apache.lucene.util.CharsRef;", 0x1, NULL, NULL },
    { "addWithId:withId:", "add", "Lorg.apache.lucene.util.CharsRef;", 0x1, NULL, NULL },
    { "writeWithId:withOrgApacheLuceneStoreDataOutput:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "readWithOrgApacheLuceneStoreDataInput:", "read", "Lorg.apache.lucene.util.CharsRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "skipOutputWithOrgApacheLuceneStoreDataInput:", "skipOutput", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getNoOutput", NULL, "Lorg.apache.lucene.util.CharsRef;", 0x1, NULL, NULL },
    { "outputToStringWithId:", "outputToString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "ramBytesUsedWithId:", "ramBytesUsed", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NO_OUTPUT_", NULL, 0x1a, "Lorg.apache.lucene.util.CharsRef;", &OrgApacheLuceneUtilFstCharSequenceOutputs_NO_OUTPUT_, NULL, .constantValue.asLong = 0 },
    { "singleton_", NULL, 0x1a, "Lorg.apache.lucene.util.fst.CharSequenceOutputs;", &OrgApacheLuceneUtilFstCharSequenceOutputs_singleton_, NULL, .constantValue.asLong = 0 },
    { "BASE_NUM_BYTES_", NULL, 0x1a, "J", &OrgApacheLuceneUtilFstCharSequenceOutputs_BASE_NUM_BYTES_, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.util.CharsRef;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstCharSequenceOutputs = { 2, "CharSequenceOutputs", "org.apache.lucene.util.fst", NULL, 0x11, 11, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/fst/Outputs<Lorg/apache/lucene/util/CharsRef;>;" };
  return &_OrgApacheLuceneUtilFstCharSequenceOutputs;
}

@end

void OrgApacheLuceneUtilFstCharSequenceOutputs_init(OrgApacheLuceneUtilFstCharSequenceOutputs *self) {
  OrgApacheLuceneUtilFstOutputs_init(self);
}

OrgApacheLuceneUtilFstCharSequenceOutputs *new_OrgApacheLuceneUtilFstCharSequenceOutputs_init() {
  OrgApacheLuceneUtilFstCharSequenceOutputs *self = [OrgApacheLuceneUtilFstCharSequenceOutputs alloc];
  OrgApacheLuceneUtilFstCharSequenceOutputs_init(self);
  return self;
}

OrgApacheLuceneUtilFstCharSequenceOutputs *OrgApacheLuceneUtilFstCharSequenceOutputs_getSingleton() {
  OrgApacheLuceneUtilFstCharSequenceOutputs_initialize();
  return OrgApacheLuceneUtilFstCharSequenceOutputs_singleton_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstCharSequenceOutputs)
