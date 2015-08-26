//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/misc/SweetSpotSimilarity.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/misc/SweetSpotSimilarity.h"
#include "org/apache/lucene/search/similarities/DefaultSimilarity.h"

@interface OrgApacheLuceneMiscSweetSpotSimilarity () {
 @public
  jint ln_min_;
  jint ln_max_;
  jfloat ln_steep_;
  jfloat tf_base_;
  jfloat tf_min_;
  jfloat tf_hyper_min_;
  jfloat tf_hyper_max_;
  jdouble tf_hyper_base_;
  jfloat tf_hyper_xoffset_;
}

@end

@implementation OrgApacheLuceneMiscSweetSpotSimilarity

- (instancetype)init {
  OrgApacheLuceneMiscSweetSpotSimilarity_init(self);
  return self;
}

- (void)setBaselineTfFactorsWithFloat:(jfloat)base
                            withFloat:(jfloat)min {
  tf_min_ = min;
  tf_base_ = base;
}

- (void)setHyperbolicTfFactorsWithFloat:(jfloat)min
                              withFloat:(jfloat)max
                             withDouble:(jdouble)base
                              withFloat:(jfloat)xoffset {
  tf_hyper_min_ = min;
  tf_hyper_max_ = max;
  tf_hyper_base_ = base;
  tf_hyper_xoffset_ = xoffset;
}

- (void)setLengthNormFactorsWithInt:(jint)min
                            withInt:(jint)max
                          withFloat:(jfloat)steepness
                        withBoolean:(jboolean)discountOverlaps {
  self->ln_min_ = min;
  self->ln_max_ = max;
  self->ln_steep_ = steepness;
  self->discountOverlaps_ = discountOverlaps;
}

- (jfloat)lengthNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state {
  jint numTokens;
  if (discountOverlaps_) numTokens = [((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getLength] - [state getNumOverlap];
  else numTokens = [((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getLength];
  return [((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getBoost] * [self computeLengthNormWithInt:numTokens];
}

- (jfloat)computeLengthNormWithInt:(jint)numTerms {
  jint l = ln_min_;
  jint h = ln_max_;
  jfloat s = ln_steep_;
  return (jfloat) (1.0f / JavaLangMath_sqrtWithDouble_((s * (jfloat) (JavaLangMath_absWithInt_(numTerms - l) + JavaLangMath_absWithInt_(numTerms - h) - (h - l))) + 1.0f));
}

- (jfloat)tfWithFloat:(jfloat)freq {
  return [self baselineTfWithFloat:freq];
}

- (jfloat)baselineTfWithFloat:(jfloat)freq {
  if (0.0f == freq) return 0.0f;
  return (freq <= tf_min_) ? tf_base_ : (jfloat) JavaLangMath_sqrtWithDouble_(freq + (tf_base_ * tf_base_) - tf_min_);
}

- (jfloat)hyperbolicTfWithFloat:(jfloat)freq {
  if (0.0f == freq) return 0.0f;
  jfloat min = tf_hyper_min_;
  jfloat max = tf_hyper_max_;
  jdouble base = tf_hyper_base_;
  jfloat xoffset = tf_hyper_xoffset_;
  jdouble x = (jdouble) (freq - xoffset);
  jfloat result = min + (jfloat) ((max - min) / 2.0f * (((JavaLangMath_powWithDouble_withDouble_(base, x) - JavaLangMath_powWithDouble_withDouble_(base, -x)) / (JavaLangMath_powWithDouble_withDouble_(base, x) + JavaLangMath_powWithDouble_withDouble_(base, -x))) + 1.0));
  return JavaLangFloat_isNaNWithFloat_(result) ? max : result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SweetSpotSimilarity", NULL, 0x1, NULL, NULL },
    { "setBaselineTfFactorsWithFloat:withFloat:", "setBaselineTfFactors", "V", 0x1, NULL, NULL },
    { "setHyperbolicTfFactorsWithFloat:withFloat:withDouble:withFloat:", "setHyperbolicTfFactors", "V", 0x1, NULL, NULL },
    { "setLengthNormFactorsWithInt:withInt:withFloat:withBoolean:", "setLengthNormFactors", "V", 0x1, NULL, NULL },
    { "lengthNormWithOrgApacheLuceneIndexFieldInvertState:", "lengthNorm", "F", 0x1, NULL, NULL },
    { "computeLengthNormWithInt:", "computeLengthNorm", "F", 0x1, NULL, NULL },
    { "tfWithFloat:", "tf", "F", 0x1, NULL, NULL },
    { "baselineTfWithFloat:", "baselineTf", "F", 0x1, NULL, NULL },
    { "hyperbolicTfWithFloat:", "hyperbolicTf", "F", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ln_min_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "ln_max_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "ln_steep_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "tf_base_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "tf_min_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "tf_hyper_min_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "tf_hyper_max_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "tf_hyper_base_", NULL, 0x2, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "tf_hyper_xoffset_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneMiscSweetSpotSimilarity = { 2, "SweetSpotSimilarity", "org.apache.lucene.misc", NULL, 0x1, 9, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneMiscSweetSpotSimilarity;
}

@end

void OrgApacheLuceneMiscSweetSpotSimilarity_init(OrgApacheLuceneMiscSweetSpotSimilarity *self) {
  OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init(self);
  self->ln_min_ = 1;
  self->ln_max_ = 1;
  self->ln_steep_ = 0.5f;
  self->tf_base_ = 0.0f;
  self->tf_min_ = 0.0f;
  self->tf_hyper_min_ = 0.0f;
  self->tf_hyper_max_ = 2.0f;
  self->tf_hyper_base_ = 1.3;
  self->tf_hyper_xoffset_ = 10.0f;
}

OrgApacheLuceneMiscSweetSpotSimilarity *new_OrgApacheLuceneMiscSweetSpotSimilarity_init() {
  OrgApacheLuceneMiscSweetSpotSimilarity *self = [OrgApacheLuceneMiscSweetSpotSimilarity alloc];
  OrgApacheLuceneMiscSweetSpotSimilarity_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMiscSweetSpotSimilarity)