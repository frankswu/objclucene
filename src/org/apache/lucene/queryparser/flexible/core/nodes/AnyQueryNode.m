//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/AnyQueryNode.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/AndQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/AnyQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldableNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode () {
 @public
  id<JavaLangCharSequence> field_;
  jint minimumMatchingmElements_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode, field_, id<JavaLangCharSequence>)

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses
            withJavaLangCharSequence:(id<JavaLangCharSequence>)field
                             withInt:(jint)minimumMatchingElements {
  OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withInt_(self, clauses, field, minimumMatchingElements);
  return self;
}

- (jint)getMinimumMatchingElements {
  return self->minimumMatchingmElements_;
}

- (id<JavaLangCharSequence>)getField {
  return self->field_;
}

- (NSString *)getFieldAsString {
  if (self->field_ == nil) return nil;
  else return [self->field_ description];
}

- (void)setFieldWithJavaLangCharSequence:(id<JavaLangCharSequence>)field {
  JreStrongAssign(&self->field_, field);
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *) cast_chk([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode class]);
  JreStrongAssign(&((OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *) nil_chk(clone))->field_, self->field_);
  clone->minimumMatchingmElements_ = self->minimumMatchingmElements_;
  return clone;
}

- (NSString *)description {
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) return JreStrcat("$@$I$", @"<any field='", self->field_, @"'  matchelements=", self->minimumMatchingmElements_, @"/>");
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [sb appendWithNSString:JreStrcat("$@$IC", @"<any field='", self->field_, @"'  matchelements=", self->minimumMatchingmElements_, '>')];
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong clause in nil_chk([self getChildren])) {
    [sb appendWithNSString:@"\n"];
    [sb appendWithNSString:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(clause)) description]];
  }
  [sb appendWithNSString:@"\n</any>"];
  return [sb description];
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  NSString *anySTR = JreStrcat("$I", @"ANY ", self->minimumMatchingmElements_);
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) {
  }
  else {
    NSString *filler = @"";
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong clause in nil_chk([self getChildren])) {
      [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:filler])) appendWithJavaLangCharSequence:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(clause)) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser]];
      filler = @" ";
    }
  }
  if ([self isDefaultFieldWithJavaLangCharSequence:self->field_]) {
    return JreStrcat("$$$$", @"( ", [sb description], @" ) ", anySTR);
  }
  else {
    return JreStrcat("@$$$$C", self->field_, @":(( ", [sb description], @" ) ", anySTR, ')');
  }
}

- (void)dealloc {
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:withJavaLangCharSequence:withInt:", "AnyQueryNode", NULL, 0x1, NULL, "(Ljava/util/List<Lorg/apache/lucene/queryparser/flexible/core/nodes/QueryNode;>;Ljava/lang/CharSequence;I)V" },
    { "getMinimumMatchingElements", NULL, "I", 0x1, NULL, NULL },
    { "getField", NULL, "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "getFieldAsString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setFieldWithJavaLangCharSequence:", "setField", "V", 0x1, NULL, NULL },
    { "cloneTree", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x1, "Ljava.lang.CloneNotSupportedException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:", "toQueryString", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x2, "Ljava.lang.CharSequence;", NULL, NULL, .constantValue.asLong = 0 },
    { "minimumMatchingmElements_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode = { 2, "AnyQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *self, id<JavaUtilList> clauses, id<JavaLangCharSequence> field, jint minimumMatchingElements) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesAndQueryNode_initWithJavaUtilList_(self, clauses);
  JreStrongAssign(&self->field_, nil);
  self->minimumMatchingmElements_ = 0;
  JreStrongAssign(&self->field_, field);
  self->minimumMatchingmElements_ = minimumMatchingElements;
  if (clauses != nil) {
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong clause in clauses) {
      if ([clause isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class]]) {
        if ([clause isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl class]]) {
          ((OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl *) nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl *) cast_chk(clause, [OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNodeImpl class]))))->toQueryStringIgnoreFields_ = true;
        }
        if ([OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode_class_() isInstance:clause]) {
          [((id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode>) nil_chk(((id<OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode>) cast_check(clause, OrgApacheLuceneQueryparserFlexibleCoreNodesFieldableNode_class_())))) setFieldWithJavaLangCharSequence:field];
        }
      }
    }
  }
}

OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withInt_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, jint minimumMatchingElements) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode, initWithJavaUtilList_withJavaLangCharSequence_withInt_, clauses, field, minimumMatchingElements)
}

OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode *create_OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withInt_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, jint minimumMatchingElements) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode, initWithJavaUtilList_withJavaLangCharSequence_withInt_, clauses, field, minimumMatchingElements)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesAnyQueryNode)
