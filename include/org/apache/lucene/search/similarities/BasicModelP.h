//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/BasicModelP.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSimilaritiesBasicModelP_INCLUDE_ALL")
#if OrgApacheLuceneSearchSimilaritiesBasicModelP_RESTRICT
#define OrgApacheLuceneSearchSimilaritiesBasicModelP_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSimilaritiesBasicModelP_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSimilaritiesBasicModelP_RESTRICT

#if !defined (_OrgApacheLuceneSearchSimilaritiesBasicModelP_) && (OrgApacheLuceneSearchSimilaritiesBasicModelP_INCLUDE_ALL || OrgApacheLuceneSearchSimilaritiesBasicModelP_INCLUDE)
#define _OrgApacheLuceneSearchSimilaritiesBasicModelP_

#define OrgApacheLuceneSearchSimilaritiesBasicModel_RESTRICT 1
#define OrgApacheLuceneSearchSimilaritiesBasicModel_INCLUDE 1
#include "org/apache/lucene/search/similarities/BasicModel.h"

@class OrgApacheLuceneSearchSimilaritiesBasicStats;

@interface OrgApacheLuceneSearchSimilaritiesBasicModelP : OrgApacheLuceneSearchSimilaritiesBasicModel

#pragma mark Public

- (instancetype)init;

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesBasicModelP)

FOUNDATION_EXPORT jdouble OrgApacheLuceneSearchSimilaritiesBasicModelP_LOG2_E_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSimilaritiesBasicModelP, LOG2_E_, jdouble)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgApacheLuceneSearchSimilaritiesBasicModelP, LOG2_E_, jdouble)
FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesBasicModelP_init(OrgApacheLuceneSearchSimilaritiesBasicModelP *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesBasicModelP *new_OrgApacheLuceneSearchSimilaritiesBasicModelP_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesBasicModelP)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSimilaritiesBasicModelP_INCLUDE_ALL")