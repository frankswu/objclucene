//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/LambdaDF.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaDF")
#ifdef RESTRICT_OrgApacheLuceneSearchSimilaritiesLambdaDF
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaDF 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaDF 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSimilaritiesLambdaDF

#if !defined (OrgApacheLuceneSearchSimilaritiesLambdaDF_) && (INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaDF || defined(INCLUDE_OrgApacheLuceneSearchSimilaritiesLambdaDF))
#define OrgApacheLuceneSearchSimilaritiesLambdaDF_

#define RESTRICT_OrgApacheLuceneSearchSimilaritiesLambda 1
#define INCLUDE_OrgApacheLuceneSearchSimilaritiesLambda 1
#include "org/apache/lucene/search/similarities/Lambda.h"

@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilaritiesBasicStats;

/*!
 @brief Computes lambda as <code>docFreq+1 / numberOfDocuments+1</code>.
 */
@interface OrgApacheLuceneSearchSimilaritiesLambdaDF : OrgApacheLuceneSearchSimilaritiesLambda

#pragma mark Public

/*!
 @brief Sole constructor: parameter-free
 */
- (instancetype)init;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats;

- (jfloat)lambdaWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilaritiesLambdaDF)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSimilaritiesLambdaDF_init(OrgApacheLuceneSearchSimilaritiesLambdaDF *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLambdaDF *new_OrgApacheLuceneSearchSimilaritiesLambdaDF_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesLambdaDF *create_OrgApacheLuceneSearchSimilaritiesLambdaDF_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSimilaritiesLambdaDF)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSimilaritiesLambdaDF")
