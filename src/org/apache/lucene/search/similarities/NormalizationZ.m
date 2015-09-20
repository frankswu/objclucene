//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/NormalizationZ.java
//

#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/Normalization.h"
#include "org/apache/lucene/search/similarities/NormalizationZ.h"

@implementation OrgApacheLuceneSearchSimilaritiesNormalizationZ

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesNormalizationZ_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithFloat:(jfloat)z {
  OrgApacheLuceneSearchSimilaritiesNormalizationZ_initWithFloat_(self, z);
  return self;
}

- (jfloat)tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                   withFloat:(jfloat)tf
                                                   withFloat:(jfloat)len {
  return (jfloat) (tf * JavaLangMath_powWithDouble_withDouble_(((OrgApacheLuceneSearchSimilaritiesBasicStats *) nil_chk(stats))->avgFieldLength_ / len, z_));
}

- (NSString *)description {
  return JreStrcat("$FC", @"Z(", z_, ')');
}

- (jfloat)getZ {
  return z_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NormalizationZ", NULL, 0x1, NULL, NULL },
    { "initWithFloat:", "NormalizationZ", NULL, 0x1, NULL, NULL },
    { "tfnWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:withFloat:", "tfn", "F", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getZ", NULL, "F", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "z_", NULL, 0x10, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesNormalizationZ = { 2, "NormalizationZ", "org.apache.lucene.search.similarities", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesNormalizationZ;
}

@end

void OrgApacheLuceneSearchSimilaritiesNormalizationZ_init(OrgApacheLuceneSearchSimilaritiesNormalizationZ *self) {
  OrgApacheLuceneSearchSimilaritiesNormalizationZ_initWithFloat_(self, 0.30f);
}

OrgApacheLuceneSearchSimilaritiesNormalizationZ *new_OrgApacheLuceneSearchSimilaritiesNormalizationZ_init() {
  OrgApacheLuceneSearchSimilaritiesNormalizationZ *self = [OrgApacheLuceneSearchSimilaritiesNormalizationZ alloc];
  OrgApacheLuceneSearchSimilaritiesNormalizationZ_init(self);
  return self;
}

void OrgApacheLuceneSearchSimilaritiesNormalizationZ_initWithFloat_(OrgApacheLuceneSearchSimilaritiesNormalizationZ *self, jfloat z) {
  OrgApacheLuceneSearchSimilaritiesNormalization_init(self);
  self->z_ = z;
}

OrgApacheLuceneSearchSimilaritiesNormalizationZ *new_OrgApacheLuceneSearchSimilaritiesNormalizationZ_initWithFloat_(jfloat z) {
  OrgApacheLuceneSearchSimilaritiesNormalizationZ *self = [OrgApacheLuceneSearchSimilaritiesNormalizationZ alloc];
  OrgApacheLuceneSearchSimilaritiesNormalizationZ_initWithFloat_(self, z);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesNormalizationZ)
