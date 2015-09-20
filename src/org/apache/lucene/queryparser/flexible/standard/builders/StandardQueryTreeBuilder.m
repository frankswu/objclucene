//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryTreeBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/builders/QueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BoostQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FuzzyQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/GroupQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/MatchAllDocsQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/MatchNoDocsQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/ModifierQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/SlopQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/TokenizedPhraseQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/BooleanQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/BoostQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/DummyQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/FieldQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/FuzzyQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/GroupQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/MatchAllDocsQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/MatchNoDocsQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/ModifierQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/MultiPhraseQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/NumericRangeQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/PhraseQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/PrefixWildcardQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/RegexpQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/SlopQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardBooleanQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryTreeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/TermRangeQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/WildcardQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/MultiPhraseQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/NumericQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/NumericRangeQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/PrefixWildcardQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/RegexpQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/StandardBooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/TermRangeQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/WildcardQueryNode.h"
#include "org/apache/lucene/search/Query.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  return (OrgApacheLuceneSearchQuery *) check_class_cast([super buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:queryNode], [OrgApacheLuceneSearchQuery class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "StandardQueryTreeBuilder", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "build", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder = { 2, "StandardQueryTreeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder *self) {
  OrgApacheLuceneQueryparserFlexibleCoreBuildersQueryTreeBuilder_init(self);
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersGroupQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersFieldQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersBooleanQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersFuzzyQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleStandardNodesNumericQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersDummyQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleStandardNodesNumericRangeQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersNumericRangeQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesBoostQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersBoostQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesModifierQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersModifierQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleStandardNodesWildcardQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersWildcardQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesTokenizedPhraseQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersPhraseQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesMatchNoDocsQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchNoDocsQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleStandardNodesTermRangeQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersTermRangeQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleStandardNodesRegexpQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesSlopQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersSlopQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleStandardNodesStandardBooleanQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardBooleanQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleStandardNodesMultiPhraseQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersMultiPhraseQueryNodeBuilder_init() autorelease]];
  [self setBuilderWithIOSClass:OrgApacheLuceneQueryparserFlexibleCoreNodesMatchAllDocsQueryNode_class_() withOrgApacheLuceneQueryparserFlexibleCoreBuildersQueryBuilder:[new_OrgApacheLuceneQueryparserFlexibleStandardBuildersMatchAllDocsQueryNodeBuilder_init() autorelease]];
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder_init() {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder *self = [OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder alloc];
  OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryTreeBuilder)
