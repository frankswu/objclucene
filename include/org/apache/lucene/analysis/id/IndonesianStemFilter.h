//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/id/IndonesianStemFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisIdIndonesianStemFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisIdIndonesianStemFilter_RESTRICT
#define OrgApacheLuceneAnalysisIdIndonesianStemFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisIdIndonesianStemFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisIdIndonesianStemFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisIdIndonesianStemFilter_) && (OrgApacheLuceneAnalysisIdIndonesianStemFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisIdIndonesianStemFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisIdIndonesianStemFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisIdIndonesianStemFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                               withBoolean:(jboolean)stemDerivational;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisIdIndonesianStemFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisIdIndonesianStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianStemFilter *new_OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisIdIndonesianStemFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jboolean stemDerivational);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisIdIndonesianStemFilter *new_OrgApacheLuceneAnalysisIdIndonesianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, jboolean stemDerivational) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisIdIndonesianStemFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisIdIndonesianStemFilter_INCLUDE_ALL")