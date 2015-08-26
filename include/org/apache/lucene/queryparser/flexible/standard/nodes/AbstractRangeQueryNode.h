//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/nodes/AbstractRangeQueryNode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_) && (OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_

#define OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"

#define OrgApacheLuceneQueryparserFlexibleCoreNodesRangeQueryNode_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleCoreNodesRangeQueryNode_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/core/nodes/RangeQueryNode.h"

@protocol JavaLangCharSequence;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode;
@protocol OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax;

@interface OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode : OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl < OrgApacheLuceneQueryparserFlexibleCoreNodesRangeQueryNode >

#pragma mark Public

- (id<JavaLangCharSequence>)getField;

- (id)getLowerBound;

- (id)getUpperBound;

- (jboolean)isLowerInclusive;

- (jboolean)isUpperInclusive;

- (void)setBoundsWithOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode>)lower
                 withOrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldValuePairQueryNode>)upper
                                                                            withBoolean:(jboolean)lowerInclusive
                                                                            withBoolean:(jboolean)upperInclusive;

- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)fieldName;

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser;

- (NSString *)description;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_init(OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode *new_OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardNodesAbstractRangeQueryNode_INCLUDE_ALL")