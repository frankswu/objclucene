//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/AfterEffectL.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesAfterEffectL_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesAfterEffectL_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesAfterEffectL_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesAfterEffectL_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesAfterEffectL_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesAfterEffectL_) && (OrgApacheLuceneSearchSimilaritiesAfterEffectL_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesAfterEffectL_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesAfterEffectL_

#define OrgApacheLuceneSearchSimilaritiesAfterEffect_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesAfterEffect_INCLUDE 1
#include "org/apache/lucene/search/similarities/AfterEffect.h"

@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;

@interface OrgApacheLuceneSearchSimilaritiesAfterEffectL : OrgApacheLuceneSearchSimilaritiesAfterEffect

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                                                   withFloat:(jfloat)tfn;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesAfterEffectL)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesAfterEffectL_init(OrgApacheLuceneSearchSimilaritiesAfterEffectL *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesAfterEffectL *new_OrgApacheLuceneSearchSimilaritiesAfterEffectL_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesAfterEffectL)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesAfterEffectL_INCLUDE_ALL")