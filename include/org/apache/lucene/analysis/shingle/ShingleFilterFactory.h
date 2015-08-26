//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/shingle/ShingleFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisShingleShingleFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisShingleShingleFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisShingleShingleFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisShingleShingleFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisShingleShingleFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisShingleShingleFilterFactory_) && (OrgApacheLuceneAnalysisShingleShingleFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisShingleShingleFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisShingleShingleFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisShingleShingleFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisShingleShingleFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisShingleShingleFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisShingleShingleFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisShingleShingleFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisShingleShingleFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisShingleShingleFilterFactory *new_OrgApacheLuceneAnalysisShingleShingleFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisShingleShingleFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisShingleShingleFilterFactory_INCLUDE_ALL")