//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/AndQueryNode.java
//

#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/AndQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/GroupQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses {
  OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode_initWithJavaUtilList_(self, clauses);
  return self;
}

- (NSString *)description {
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) return @"<boolean operation='and'/>";
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [sb appendWithNSString:@"<boolean operation='and'>"];
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk([self getChildren])) {
    [sb appendWithNSString:@"\n"];
    [sb appendWithNSString:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) description]];
  }
  [sb appendWithNSString:@"\n</boolean>"];
  return [sb description];
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) return @"";
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  NSString *filler = @"";
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk([self getChildren])) {
    [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:filler])) appendWithJavaLangCharSequence:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser]];
    filler = @" AND ";
  }
  if (([self getParent] != nil && [[self getParent] isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesGroupQueryNode class]]) || [self isRoot]) return [sb description];
  else return JreStrcat("$$$", @"( ", [sb description], @" )");
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:", "AndQueryNode", NULL, 0x1, NULL, "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;)V" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:", "toQueryString", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode = { 2, "AndQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode_initWithJavaUtilList_(OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode *self, id<JavaUtilList> clauses) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_initWithJavaUtilList_(self, clauses);
  if ((clauses == nil) || ([((id<JavaUtilList>) nil_chk(clauses)) size] == 0)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"AND query must have at least one clause");
  }
}

OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode_initWithJavaUtilList_(id<JavaUtilList> clauses) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode, initWithJavaUtilList_, clauses)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode_initWithJavaUtilList_(id<JavaUtilList> clauses) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode, initWithJavaUtilList_, clauses)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode)
