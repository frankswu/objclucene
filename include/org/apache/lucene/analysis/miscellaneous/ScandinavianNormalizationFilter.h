//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/ScandinavianNormalizationFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_) && (OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (jboolean)incrementToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter *new_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter_INCLUDE_ALL")