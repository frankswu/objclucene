//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/HyphenatedWordsFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_) && (OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_

#define OrgApacheLuceneAnalysisTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter : OrgApacheLuceneAnalysisTokenFilter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg;

- (jboolean)incrementToken;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter *new_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_INCLUDE_ALL")