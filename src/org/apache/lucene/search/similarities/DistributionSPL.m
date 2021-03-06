//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/DistributionSPL.java
//

#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"
#include "org/apache/lucene/search/similarities/Distribution.h"
#include "org/apache/lucene/search/similarities/DistributionSPL.h"

@implementation OrgApacheLuceneSearchSimilaritiesDistributionSPL

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesDistributionSPL_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn
                                                     withFloat:(jfloat)lambda {
  if (lambda == 1.0f) {
    lambda = 0.99f;
  }
  return (jfloat) -JavaLangMath_logWithDouble_((JavaLangMath_powWithDouble_withDouble_(lambda, (tfn / (tfn + 1))) - lambda) / (1 - lambda));
}

- (NSString *)description {
  return @"SPL";
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DistributionSPL", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:withFloat:", "score", "F", 0x11, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesDistributionSPL = { 2, "DistributionSPL", "org.apache.lucene.search.similarities", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesDistributionSPL;
}

@end

void OrgApacheLuceneSearchSimilaritiesDistributionSPL_init(OrgApacheLuceneSearchSimilaritiesDistributionSPL *self) {
  OrgApacheLuceneSearchSimilaritiesDistribution_init(self);
}

OrgApacheLuceneSearchSimilaritiesDistributionSPL *new_OrgApacheLuceneSearchSimilaritiesDistributionSPL_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesDistributionSPL, init)
}

OrgApacheLuceneSearchSimilaritiesDistributionSPL *create_OrgApacheLuceneSearchSimilaritiesDistributionSPL_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesDistributionSPL, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesDistributionSPL)
