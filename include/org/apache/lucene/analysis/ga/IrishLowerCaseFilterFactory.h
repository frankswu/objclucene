//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ga/IrishLowerCaseFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_) && (OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_INCLUDE 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory *new_OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisGaIrishLowerCaseFilterFactory_INCLUDE_ALL")