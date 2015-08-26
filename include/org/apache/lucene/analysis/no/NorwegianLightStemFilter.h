//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/no/NorwegianLightStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_RESTRICT
#define OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_) && (OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisNoNorwegianLightStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                   withInt:(jint)flags;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNoNorwegianLightStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisNoNorwegianLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNoNorwegianLightStemFilter *new_OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisNoNorwegianLightStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint flags);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisNoNorwegianLightStemFilter *new_OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint flags) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNoNorwegianLightStemFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisNoNorwegianLightStemFilter_INCLUDE_ALL")