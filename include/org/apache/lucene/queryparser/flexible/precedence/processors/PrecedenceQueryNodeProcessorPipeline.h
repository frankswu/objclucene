//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/precedence/processors/PrecedenceQueryNodeProcessorPipeline.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_RESTRICT
#define OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_) && (OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_

#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/standard/processors/StandardQueryNodeProcessorPipeline.h"

@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;

@interface OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline : OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfig;

#pragma mark Package-Private


@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_INCLUDE_ALL")