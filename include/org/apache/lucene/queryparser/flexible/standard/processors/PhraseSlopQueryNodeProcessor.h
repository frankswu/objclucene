//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/PhraseSlopQueryNodeProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_) && (OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_

#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"

@protocol JavaUtilList;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor : OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl

#pragma mark Public

- (instancetype)init;

#pragma mark Protected

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node;

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardProcessorsPhraseSlopQueryNodeProcessor_INCLUDE_ALL")