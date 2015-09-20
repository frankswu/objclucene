//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/PairOutputs.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/fst/Outputs.h"
#include "org/apache/lucene/util/fst/PairOutputs.h"

@interface OrgApacheLuceneUtilFstPairOutputs () {
 @public
  OrgApacheLuceneUtilFstPairOutputs_Pair *NO_OUTPUT_;
  OrgApacheLuceneUtilFstOutputs *outputs1_;
  OrgApacheLuceneUtilFstOutputs *outputs2_;
}

- (jboolean)validWithOrgApacheLuceneUtilFstPairOutputs_Pair:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstPairOutputs, NO_OUTPUT_, OrgApacheLuceneUtilFstPairOutputs_Pair *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstPairOutputs, outputs1_, OrgApacheLuceneUtilFstOutputs *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstPairOutputs, outputs2_, OrgApacheLuceneUtilFstOutputs *)

static jlong OrgApacheLuceneUtilFstPairOutputs_BASE_NUM_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstPairOutputs, BASE_NUM_BYTES_, jlong)

__attribute__((unused)) static jboolean OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(OrgApacheLuceneUtilFstPairOutputs *self, OrgApacheLuceneUtilFstPairOutputs_Pair *pair);

@interface OrgApacheLuceneUtilFstPairOutputs_Pair ()

- (instancetype)initWithId:(id)output1
                    withId:(id)output2;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(OrgApacheLuceneUtilFstPairOutputs_Pair *self, id output1, id output2);

__attribute__((unused)) static OrgApacheLuceneUtilFstPairOutputs_Pair *new_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(id output1, id output2) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilFstPairOutputs)

@implementation OrgApacheLuceneUtilFstPairOutputs

- (instancetype)initWithOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs1
                    withOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs2 {
  OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(self, outputs1, outputs2);
  return self;
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)newPairWithId:(id)a
                                                   withId:(id)b {
  if ([nil_chk(a) isEqual:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) getNoOutput]]) {
    a = [outputs1_ getNoOutput];
  }
  if ([nil_chk(b) isEqual:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) getNoOutput]]) {
    b = [outputs2_ getNoOutput];
  }
  if (a == [outputs1_ getNoOutput] && b == [outputs2_ getNoOutput]) {
    return NO_OUTPUT_;
  }
  else {
    OrgApacheLuceneUtilFstPairOutputs_Pair *p = [new_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(a, b) autorelease];
    JreAssert((OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, p)), (@"org/apache/lucene/util/fst/PairOutputs.java:91 condition failed: assert valid(p);"));
    return p;
  }
}

- (jboolean)validWithOrgApacheLuceneUtilFstPairOutputs_Pair:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair {
  return OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, pair);
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)commonWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair1
                                                  withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair2 {
  JreAssert((OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, pair1)), (@"org/apache/lucene/util/fst/PairOutputs.java:122 condition failed: assert valid(pair1);"));
  JreAssert((OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, pair2)), (@"org/apache/lucene/util/fst/PairOutputs.java:123 condition failed: assert valid(pair2);"));
  return [self newPairWithId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) commonWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(pair1))->output1_ withId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(pair2))->output1_] withId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) commonWithId:pair1->output2_ withId:pair2->output2_]];
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)subtractWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output
                                                    withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)inc {
  JreAssert((OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, output)), (@"org/apache/lucene/util/fst/PairOutputs.java:130 condition failed: assert valid(output);"));
  JreAssert((OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, inc)), (@"org/apache/lucene/util/fst/PairOutputs.java:131 condition failed: assert valid(inc);"));
  return [self newPairWithId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) subtractWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_ withId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(inc))->output1_] withId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) subtractWithId:output->output2_ withId:inc->output2_]];
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)addWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)prefix
                                               withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output {
  JreAssert((OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, prefix)), (@"org/apache/lucene/util/fst/PairOutputs.java:138 condition failed: assert valid(prefix);"));
  JreAssert((OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, output)), (@"org/apache/lucene/util/fst/PairOutputs.java:139 condition failed: assert valid(output);"));
  return [self newPairWithId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) addWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(prefix))->output1_ withId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_] withId:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) addWithId:prefix->output2_ withId:output->output2_]];
}

- (void)writeWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)writer {
  JreAssert((OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, output)), (@"org/apache/lucene/util/fst/PairOutputs.java:146 condition failed: assert valid(output);"));
  [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) writeWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_ withOrgApacheLuceneStoreDataOutput:writer];
  [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) writeWithId:output->output2_ withOrgApacheLuceneStoreDataOutput:writer];
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  id output1 = [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) readWithOrgApacheLuceneStoreDataInput:inArg];
  id output2 = [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) readWithOrgApacheLuceneStoreDataInput:inArg];
  return [self newPairWithId:output1 withId:output2];
}

- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) skipOutputWithOrgApacheLuceneStoreDataInput:inArg];
  [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) skipOutputWithOrgApacheLuceneStoreDataInput:inArg];
}

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)getNoOutput {
  return NO_OUTPUT_;
}

- (NSString *)outputToStringWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output {
  JreAssert((OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(self, output)), (@"org/apache/lucene/util/fst/PairOutputs.java:171 condition failed: assert valid(output);"));
  return JreStrcat("$$C$C", @"<pair:", [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) outputToStringWithId:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_], ',', [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) outputToStringWithId:output->output2_], '>');
}

- (NSString *)description {
  return JreStrcat("$@C@C", @"PairOutputs<", outputs1_, ',', outputs2_, '>');
}

- (jlong)ramBytesUsedWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output {
  jlong ramBytesUsed = OrgApacheLuceneUtilFstPairOutputs_BASE_NUM_BYTES_;
  if (((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(output))->output1_ != nil) {
    ramBytesUsed += [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1_)) ramBytesUsedWithId:output->output1_];
  }
  if (output->output2_ != nil) {
    ramBytesUsed += [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2_)) ramBytesUsedWithId:output->output2_];
  }
  return ramBytesUsed;
}

- (void)dealloc {
  RELEASE_(NO_OUTPUT_);
  RELEASE_(outputs1_);
  RELEASE_(outputs2_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilFstPairOutputs class]) {
    OrgApacheLuceneUtilFstPairOutputs_BASE_NUM_BYTES_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_([new_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(nil, nil) autorelease]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilFstPairOutputs)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilFstOutputs:withOrgApacheLuceneUtilFstOutputs:", "PairOutputs", NULL, 0x1, NULL, NULL },
    { "newPairWithId:withId:", "newPair", "Lorg.apache.lucene.util.fst.PairOutputs$Pair;", 0x1, NULL, "(TA;TB;)Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;" },
    { "validWithOrgApacheLuceneUtilFstPairOutputs_Pair:", "valid", "Z", 0x2, NULL, NULL },
    { "commonWithId:withId:", "common", "Lorg.apache.lucene.util.fst.PairOutputs$Pair;", 0x1, NULL, NULL },
    { "subtractWithId:withId:", "subtract", "Lorg.apache.lucene.util.fst.PairOutputs$Pair;", 0x1, NULL, NULL },
    { "addWithId:withId:", "add", "Lorg.apache.lucene.util.fst.PairOutputs$Pair;", 0x1, NULL, NULL },
    { "writeWithId:withOrgApacheLuceneStoreDataOutput:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "readWithOrgApacheLuceneStoreDataInput:", "read", "Lorg.apache.lucene.util.fst.PairOutputs$Pair;", 0x1, "Ljava.io.IOException;", NULL },
    { "skipOutputWithOrgApacheLuceneStoreDataInput:", "skipOutput", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getNoOutput", NULL, "Lorg.apache.lucene.util.fst.PairOutputs$Pair;", 0x1, NULL, NULL },
    { "outputToStringWithId:", "outputToString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "ramBytesUsedWithId:", "ramBytesUsed", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NO_OUTPUT_", NULL, 0x12, "Lorg.apache.lucene.util.fst.PairOutputs$Pair;", NULL, "Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;", .constantValue.asLong = 0 },
    { "outputs1_", NULL, 0x12, "Lorg.apache.lucene.util.fst.Outputs;", NULL, "Lorg/apache/lucene/util/fst/Outputs<TA;>;", .constantValue.asLong = 0 },
    { "outputs2_", NULL, 0x12, "Lorg.apache.lucene.util.fst.Outputs;", NULL, "Lorg/apache/lucene/util/fst/Outputs<TB;>;", .constantValue.asLong = 0 },
    { "BASE_NUM_BYTES_", NULL, 0x1a, "J", &OrgApacheLuceneUtilFstPairOutputs_BASE_NUM_BYTES_, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.util.fst.PairOutputs$Pair;"};
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.fst.PairOutputs$Pair;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstPairOutputs = { 2, "PairOutputs", "org.apache.lucene.util.fst", NULL, 0x1, 13, methods, 4, fields, 1, superclass_type_args, 1, inner_classes, NULL, "<A:Ljava/lang/Object;B:Ljava/lang/Object;>Lorg/apache/lucene/util/fst/Outputs<Lorg/apache/lucene/util/fst/PairOutputs$Pair<TA;TB;>;>;" };
  return &_OrgApacheLuceneUtilFstPairOutputs;
}

@end

void OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstPairOutputs *self, OrgApacheLuceneUtilFstOutputs *outputs1, OrgApacheLuceneUtilFstOutputs *outputs2) {
  OrgApacheLuceneUtilFstOutputs_init(self);
  JreStrongAssign(&self->outputs1_, outputs1);
  JreStrongAssign(&self->outputs2_, outputs2);
  JreStrongAssignAndConsume(&self->NO_OUTPUT_, new_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_([((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs1)) getNoOutput], [((OrgApacheLuceneUtilFstOutputs *) nil_chk(outputs2)) getNoOutput]));
}

OrgApacheLuceneUtilFstPairOutputs *new_OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstOutputs *outputs1, OrgApacheLuceneUtilFstOutputs *outputs2) {
  OrgApacheLuceneUtilFstPairOutputs *self = [OrgApacheLuceneUtilFstPairOutputs alloc];
  OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(self, outputs1, outputs2);
  return self;
}

jboolean OrgApacheLuceneUtilFstPairOutputs_validWithOrgApacheLuceneUtilFstPairOutputs_Pair_(OrgApacheLuceneUtilFstPairOutputs *self, OrgApacheLuceneUtilFstPairOutputs_Pair *pair) {
  jboolean noOutput1 = [nil_chk(((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(pair))->output1_) isEqual:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(self->outputs1_)) getNoOutput]];
  jboolean noOutput2 = [nil_chk(pair->output2_) isEqual:[((OrgApacheLuceneUtilFstOutputs *) nil_chk(self->outputs2_)) getNoOutput]];
  if (noOutput1 && pair->output1_ != [self->outputs1_ getNoOutput]) {
    return false;
  }
  if (noOutput2 && pair->output2_ != [self->outputs2_ getNoOutput]) {
    return false;
  }
  if (noOutput1 && noOutput2) {
    if (pair != self->NO_OUTPUT_) {
      return false;
    }
    else {
      return true;
    }
  }
  else {
    return true;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstPairOutputs)

@implementation OrgApacheLuceneUtilFstPairOutputs_Pair

- (instancetype)initWithId:(id)output1
                    withId:(id)output2 {
  OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(self, output1, output2);
  return self;
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return true;
  }
  else if ([other isKindOfClass:[OrgApacheLuceneUtilFstPairOutputs_Pair class]]) {
    OrgApacheLuceneUtilFstPairOutputs_Pair *pair = (OrgApacheLuceneUtilFstPairOutputs_Pair *) check_class_cast(other, [OrgApacheLuceneUtilFstPairOutputs_Pair class]);
    return [nil_chk(output1_) isEqual:((OrgApacheLuceneUtilFstPairOutputs_Pair *) nil_chk(pair))->output1_] && [nil_chk(output2_) isEqual:pair->output2_];
  }
  else {
    return false;
  }
}

- (NSUInteger)hash {
  return ((jint) [nil_chk(output1_) hash]) + ((jint) [nil_chk(output2_) hash]);
}

- (NSString *)description {
  return JreStrcat("$@C@C", @"Pair(", output1_, ',', output2_, ')');
}

- (void)dealloc {
  RELEASE_(output1_);
  RELEASE_(output2_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithId:withId:", "Pair", NULL, 0x2, NULL, "(TA;TB;)V" },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "output1_", NULL, 0x11, "TA;", NULL, "TA;", .constantValue.asLong = 0 },
    { "output2_", NULL, 0x11, "TB;", NULL, "TB;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstPairOutputs_Pair = { 2, "Pair", "org.apache.lucene.util.fst", "PairOutputs", 0x9, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<A:Ljava/lang/Object;B:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_OrgApacheLuceneUtilFstPairOutputs_Pair;
}

@end

void OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(OrgApacheLuceneUtilFstPairOutputs_Pair *self, id output1, id output2) {
  NSObject_init(self);
  JreStrongAssign(&self->output1_, output1);
  JreStrongAssign(&self->output2_, output2);
}

OrgApacheLuceneUtilFstPairOutputs_Pair *new_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(id output1, id output2) {
  OrgApacheLuceneUtilFstPairOutputs_Pair *self = [OrgApacheLuceneUtilFstPairOutputs_Pair alloc];
  OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(self, output1, output2);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstPairOutputs_Pair)
