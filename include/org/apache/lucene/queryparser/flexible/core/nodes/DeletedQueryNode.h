//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/DeletedQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_) && (OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_

#define OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"

@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl

#pragma mark Public

- (instancetype)init;

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escaper;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleCoreNodesDeletedQueryNode_INCLUDE_ALL")