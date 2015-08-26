//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/TypeAsPayloadTokenFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_) && (OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory *new_OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_INCLUDE_ALL")