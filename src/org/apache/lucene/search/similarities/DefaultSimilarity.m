//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/DefaultSimilarity.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/search/similarities/DefaultSimilarity.h"
#include "org/apache/lucene/search/similarities/TFIDFSimilarity.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/SmallFloat.h"

static IOSFloatArray *OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_NORM_TABLE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity, NORM_TABLE_, IOSFloatArray *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity)

@implementation OrgApacheLuceneSearchSimilaritiesDefaultSimilarity

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)coordWithInt:(jint)overlap
               withInt:(jint)maxOverlap {
  return overlap / (jfloat) maxOverlap;
}

- (jfloat)queryNormWithFloat:(jfloat)sumOfSquaredWeights {
  return (jfloat) (1.0 / JavaLangMath_sqrtWithDouble_(sumOfSquaredWeights));
}

- (jlong)encodeNormValueWithFloat:(jfloat)f {
  return OrgApacheLuceneUtilSmallFloat_floatToByte315WithFloat_(f);
}

- (jfloat)decodeNormValueWithLong:(jlong)norm {
  return IOSFloatArray_Get(nil_chk(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_NORM_TABLE_), (jint) (norm & (jint) 0xFF));
}

- (jfloat)lengthNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state {
  jint numTerms;
  if (discountOverlaps_) numTerms = [((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getLength] - [state getNumOverlap];
  else numTerms = [((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getLength];
  return [((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getBoost] * ((jfloat) (1.0 / JavaLangMath_sqrtWithDouble_(numTerms)));
}

- (jfloat)tfWithFloat:(jfloat)freq {
  return (jfloat) JavaLangMath_sqrtWithDouble_(freq);
}

- (jfloat)sloppyFreqWithInt:(jint)distance {
  return 1.0f / (distance + 1);
}

- (jfloat)scorePayloadWithInt:(jint)doc
                      withInt:(jint)start
                      withInt:(jint)end
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload {
  return 1;
}

- (jfloat)idfWithLong:(jlong)docFreq
             withLong:(jlong)numDocs {
  return (jfloat) (JavaLangMath_logWithDouble_(numDocs / (jdouble) (docFreq + 1)) + 1.0);
}

- (void)setDiscountOverlapsWithBoolean:(jboolean)v {
  discountOverlaps_ = v;
}

- (jboolean)getDiscountOverlaps {
  return discountOverlaps_;
}

- (NSString *)description {
  return @"DefaultSimilarity";
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSimilaritiesDefaultSimilarity class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_NORM_TABLE_, [IOSFloatArray newArrayWithLength:256]);
    {
      for (jint i = 0; i < 256; i++) {
        *IOSFloatArray_GetRef(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_NORM_TABLE_, i) = OrgApacheLuceneUtilSmallFloat_byte315ToFloatWithByte_((jbyte) i);
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DefaultSimilarity", NULL, 0x1, NULL, NULL },
    { "coordWithInt:withInt:", "coord", "F", 0x1, NULL, NULL },
    { "queryNormWithFloat:", "queryNorm", "F", 0x1, NULL, NULL },
    { "encodeNormValueWithFloat:", "encodeNormValue", "J", 0x11, NULL, NULL },
    { "decodeNormValueWithLong:", "decodeNormValue", "F", 0x11, NULL, NULL },
    { "lengthNormWithOrgApacheLuceneIndexFieldInvertState:", "lengthNorm", "F", 0x1, NULL, NULL },
    { "tfWithFloat:", "tf", "F", 0x1, NULL, NULL },
    { "sloppyFreqWithInt:", "sloppyFreq", "F", 0x1, NULL, NULL },
    { "scorePayloadWithInt:withInt:withInt:withOrgApacheLuceneUtilBytesRef:", "scorePayload", "F", 0x1, NULL, NULL },
    { "idfWithLong:withLong:", "idf", "F", 0x1, NULL, NULL },
    { "setDiscountOverlapsWithBoolean:", "setDiscountOverlaps", "V", 0x1, NULL, NULL },
    { "getDiscountOverlaps", NULL, "Z", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NORM_TABLE_", NULL, 0x1a, "[F", &OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_NORM_TABLE_, NULL, .constantValue.asLong = 0 },
    { "discountOverlaps_", NULL, 0x4, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesDefaultSimilarity = { 2, "DefaultSimilarity", "org.apache.lucene.search.similarities", NULL, 0x1, 13, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity;
}

@end

void OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity *self) {
  OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_init(self);
  self->discountOverlaps_ = true;
}

OrgApacheLuceneSearchSimilaritiesDefaultSimilarity *new_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init() {
  OrgApacheLuceneSearchSimilaritiesDefaultSimilarity *self = [OrgApacheLuceneSearchSimilaritiesDefaultSimilarity alloc];
  OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesDefaultSimilarity)
