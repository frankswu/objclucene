//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/PrefixWildcardQueryNodeBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/builders/PrefixWildcardQueryNodeBuilder.h"
#include "org/apache/lucene/queryparser/flexible/standard/nodes/PrefixWildcardQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/MultiTermRewriteMethodProcessor.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/PrefixQuery.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder

- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder_init(self);
  return self;
}

- (OrgApacheLuceneSearchPrefixQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode {
  OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *wildcardNode = (OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *) check_class_cast(queryNode, [OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode class]);
  NSString *text = [((id<JavaLangCharSequence>) nil_chk([((id<JavaLangCharSequence>) nil_chk([((OrgApacheLuceneQueryparserFlexibleStandardNodesPrefixWildcardQueryNode *) nil_chk(wildcardNode)) getText])) subSequenceFrom:0 to:[((id<JavaLangCharSequence>) nil_chk([wildcardNode getText])) length] - 1])) description];
  OrgApacheLuceneSearchPrefixQuery *q = [new_OrgApacheLuceneSearchPrefixQuery_initWithOrgApacheLuceneIndexTerm_([new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_([wildcardNode getFieldAsString], text) autorelease]) autorelease];
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *method = (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *) check_class_cast([((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(queryNode)) getTagWithNSString:OrgApacheLuceneQueryparserFlexibleStandardProcessorsMultiTermRewriteMethodProcessor_TAG_ID_], [OrgApacheLuceneSearchMultiTermQuery_RewriteMethod class]);
  if (method != nil) {
    [q setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:method];
  }
  return q;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PrefixWildcardQueryNodeBuilder", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "build", "Lorg.apache.lucene.search.PrefixQuery;", 0x1, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder = { 2, "PrefixWildcardQueryNodeBuilder", "org.apache.lucene.queryparser.flexible.standard.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder_init() {
  OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder *self = [OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder alloc];
  OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardBuildersPrefixWildcardQueryNodeBuilder)