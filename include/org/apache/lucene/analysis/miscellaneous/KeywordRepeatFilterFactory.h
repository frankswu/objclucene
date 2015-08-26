//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/KeywordRepeatFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_) && (OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_INCLUDE_ALL")