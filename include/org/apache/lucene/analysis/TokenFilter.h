//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/TokenFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisTokenFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisTokenFilter_RESTRICT
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisTokenFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisTokenFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisTokenFilter_) && (OrgApacheLuceneAnalysisTokenFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisTokenFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisTokenFilter_

#define OrgApacheLuceneAnalysisTokenStream_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenStream_INCLUDE 1
#include "org/apache/lucene/analysis/TokenStream.h"

@interface OrgApacheLuceneAnalysisTokenFilter : OrgApacheLuceneAnalysisTokenStream {
 @public
  OrgApacheLuceneAnalysisTokenStream *input_;
}

#pragma mark Public

- (void)close;

- (void)end;

- (void)reset;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenFilter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenFilter, input_, OrgApacheLuceneAnalysisTokenStream *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisTokenFilter_INCLUDE_ALL")