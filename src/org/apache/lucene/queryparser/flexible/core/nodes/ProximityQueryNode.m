//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/nodes/ProximityQueryNode.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeError.h"
#include "org/apache/lucene/queryparser/flexible/core/messages/QueryParserMessages.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/BooleanQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FieldQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/ProximityQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNodeImpl.h"
#include "org/apache/lucene/queryparser/flexible/core/parser/EscapeQuerySyntax.h"
#include "org/apache/lucene/queryparser/flexible/messages/MessageImpl.h"

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode () {
 @public
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *proximityType_;
  jint distance_;
  jboolean inorder_;
  id<JavaLangCharSequence> field_;
}

+ (void)clearFieldsWithJavaUtilList:(id<JavaUtilList>)nodes
           withJavaLangCharSequence:(id<JavaLangCharSequence>)field;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode, proximityType_, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode, field_, id<JavaLangCharSequence>)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_clearFieldsWithJavaUtilList_withJavaLangCharSequence_(id<JavaUtilList> nodes, id<JavaLangCharSequence> field);

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum : OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum < NSCopying >

- (id<JavaLangCharSequence>)toQueryString;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum)

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum : OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum < NSCopying >

- (id<JavaLangCharSequence>)toQueryString;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum)

@interface OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum : OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum < NSCopying >

- (id<JavaLangCharSequence>)toQueryString;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum)

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses
            withJavaLangCharSequence:(id<JavaLangCharSequence>)field
withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum:(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *)type
                             withInt:(jint)distance
                         withBoolean:(jboolean)inorder {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_withBoolean_(self, clauses, field, type, distance, inorder);
  return self;
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)clauses
            withJavaLangCharSequence:(id<JavaLangCharSequence>)field
withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum:(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *)type
                         withBoolean:(jboolean)inorder {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withBoolean_(self, clauses, field, type, inorder);
  return self;
}

+ (void)clearFieldsWithJavaUtilList:(id<JavaUtilList>)nodes
           withJavaLangCharSequence:(id<JavaLangCharSequence>)field {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_clearFieldsWithJavaUtilList_withJavaLangCharSequence_(nodes, field);
}

- (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *)getProximityType {
  return self->proximityType_;
}

- (NSString *)description {
  NSString *distanceSTR = ((self->distance_ == -1) ? (@"") : JreStrcat("$C", (JreStrcat("$I", @" distance='", self->distance_)), '\''));
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) return JreStrcat("$@$Z$$C$$", @"<proximity field='", self->field_, @"' inorder='", self->inorder_, @"' type='", [((OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *) nil_chk(self->proximityType_)) description], '\'', distanceSTR, @"/>");
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  [sb appendWithNSString:JreStrcat("$@$Z$$C$C", @"<proximity field='", self->field_, @"' inorder='", self->inorder_, @"' type='", [((OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *) nil_chk(self->proximityType_)) description], '\'', distanceSTR, '>')];
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk([self getChildren])) {
    [sb appendWithNSString:@"\n"];
    [sb appendWithNSString:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) description]];
  }
  [sb appendWithNSString:@"\n</proximity>"];
  return [sb description];
}

- (id<JavaLangCharSequence>)toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:(id<OrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax>)escapeSyntaxParser {
  NSString *withinSTR = JreStrcat("@$$", [((OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *) nil_chk(self->proximityType_)) toQueryString], ((self->distance_ == -1) ? (@"") : (JreStrcat("CI", ' ', self->distance_))), ((self->inorder_) ? (@" INORDER") : (@"")));
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  if ([self getChildren] == nil || [((id<JavaUtilList>) nil_chk([self getChildren])) size] == 0) {
  }
  else {
    NSString *filler = @"";
    for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong child in nil_chk([self getChildren])) {
      [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:filler])) appendWithJavaLangCharSequence:[((id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>) nil_chk(child)) toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:escapeSyntaxParser]];
      filler = @" ";
    }
  }
  if ([self isDefaultFieldWithJavaLangCharSequence:self->field_]) {
    return JreStrcat("$$$$", @"( ", [sb description], @" ) ", withinSTR);
  }
  else {
    return JreStrcat("@$$$$C", self->field_, @":(( ", [sb description], @" ) ", withinSTR, ')');
  }
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)cloneTree {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *clone = (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *) check_class_cast([super cloneTree], [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode class]);
  JreStrongAssign(&((OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *) nil_chk(clone))->proximityType_, self->proximityType_);
  clone->distance_ = self->distance_;
  JreStrongAssign(&clone->field_, self->field_);
  return clone;
}

- (jint)getDistance {
  return self->distance_;
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

- (jboolean)isInOrder {
  return self->inorder_;
}

- (void)dealloc {
  RELEASE_(proximityType_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:withJavaLangCharSequence:withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum:withInt:withBoolean:", "ProximityQueryNode", NULL, 0x1, NULL, NULL },
    { "initWithJavaUtilList:withJavaLangCharSequence:withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum:withBoolean:", "ProximityQueryNode", NULL, 0x1, NULL, NULL },
    { "clearFieldsWithJavaUtilList:withJavaLangCharSequence:", "clearFields", "V", 0xa, NULL, NULL },
    { "getProximityType", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ProximityQueryNode$Type;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toQueryStringWithOrgApacheLuceneQueryparserFlexibleCoreParserEscapeQuerySyntax:", "toQueryString", "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "cloneTree", NULL, "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x1, "Ljava.lang.CloneNotSupportedException;", NULL },
    { "getDistance", NULL, "I", 0x1, NULL, NULL },
    { "getField", NULL, "Ljava.lang.CharSequence;", 0x1, NULL, NULL },
    { "getFieldAsString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setFieldWithJavaLangCharSequence:", "setField", "V", 0x1, NULL, NULL },
    { "isInOrder", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "proximityType_", NULL, 0x2, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ProximityQueryNode$Type;", NULL, NULL, .constantValue.asLong = 0 },
    { "distance_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "inorder_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "field_", NULL, 0x2, "Ljava.lang.CharSequence;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.queryparser.flexible.core.nodes.ProximityQueryNode$Type;", "Lorg.apache.lucene.queryparser.flexible.core.nodes.ProximityQueryNode$ProximityType;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode = { 2, "ProximityQueryNode", "org.apache.lucene.queryparser.flexible.core.nodes", NULL, 0x1, 12, methods, 4, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_withBoolean_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *self, id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *type, jint distance, jboolean inorder) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesBooleanQueryNode_initWithJavaUtilList_(self, clauses);
  JreStrongAssign(&self->proximityType_, JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum, SENTENCE));
  self->distance_ = -1;
  self->inorder_ = false;
  JreStrongAssign(&self->field_, nil);
  [self setLeafWithBoolean:false];
  JreStrongAssign(&self->proximityType_, type);
  self->inorder_ = inorder;
  JreStrongAssign(&self->field_, field);
  if (type == JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum, NUMBER)) {
    if (distance <= 0) {
      @throw [new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_([new_OrgApacheLuceneQueryparserFlexibleMessagesMessageImpl_initWithNSString_withNSObjectArray_(JreLoadStatic(OrgApacheLuceneQueryparserFlexibleCoreMessagesQueryParserMessages, PARAMETER_VALUE_NOT_SUPPORTED_), [IOSObjectArray arrayWithObjects:(id[]){ @"distance", JavaLangInteger_valueOfWithInt_(distance) } count:2 type:NSObject_class_()]) autorelease]) autorelease];
    }
    else {
      self->distance_ = distance;
    }
  }
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_clearFieldsWithJavaUtilList_withJavaLangCharSequence_(clauses, field);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_withBoolean_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *type, jint distance, jboolean inorder) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_withBoolean_(self, clauses, field, type, distance, inorder);
  return self;
}

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withBoolean_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *self, id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *type, jboolean inorder) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_withBoolean_(self, clauses, field, type, -1, inorder);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withBoolean_(id<JavaUtilList> clauses, id<JavaLangCharSequence> field, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *type, jboolean inorder) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initWithJavaUtilList_withJavaLangCharSequence_withOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withBoolean_(self, clauses, field, type, inorder);
  return self;
}

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_clearFieldsWithJavaUtilList_withJavaLangCharSequence_(id<JavaUtilList> nodes, id<JavaLangCharSequence> field) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_initialize();
  if (nodes == nil || [nodes size] == 0) return;
  for (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode> __strong clause in nil_chk(nodes)) {
    if ([clause isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class]]) {
      ((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) check_class_cast(clause, [OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class]))))->toQueryStringIgnoreFields_ = true;
      [((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) nil_chk(((OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode *) check_class_cast(clause, [OrgApacheLuceneQueryparserFlexibleCoreNodesFieldQueryNode class])))) setFieldWithJavaLangCharSequence:field];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum)

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_values_[3];

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum

- (id<JavaLangCharSequence>)toQueryString {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_values() {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_values_ count:3 type:OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_values();
}

+ (OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *e = OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum class]) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_PARAGRAPH = new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum_initWithNSString_withInt_(@"PARAGRAPH", 0);
    OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_SENTENCE = new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum_initWithNSString_withInt_(@"SENTENCE", 1);
    OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_NUMBER = new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum_initWithNSString_withInt_(@"NUMBER", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toQueryString", NULL, "Ljava.lang.CharSequence;", 0x400, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PARAGRAPH", "PARAGRAPH", 0x4019, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ProximityQueryNode$Type;", &OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_PARAGRAPH, NULL, .constantValue.asLong = 0 },
    { "SENTENCE", "SENTENCE", 0x4019, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ProximityQueryNode$Type;", &OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_SENTENCE, NULL, .constantValue.asLong = 0 },
    { "NUMBER", "NUMBER", 0x4019, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ProximityQueryNode$Type;", &OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_NUMBER, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.queryparser.flexible.core.nodes.ProximityQueryNode$Type;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum = { 2, "Type", "org.apache.lucene.queryparser.flexible.core.nodes", "ProximityQueryNode", 0x4409, 1, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/queryparser/flexible/core/nodes/ProximityQueryNode$Type;>;" };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum)

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum

- (id<JavaLangCharSequence>)toQueryString {
  return @"WITHIN PARAGRAPH";
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toQueryString", NULL, "Ljava.lang.CharSequence;", 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum = { 2, "", "org.apache.lucene.queryparser.flexible.core.nodes", "ProximityQueryNode$Type", 0xc018, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum *self, NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$1Enum)

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum

- (id<JavaLangCharSequence>)toQueryString {
  return @"WITHIN SENTENCE";
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toQueryString", NULL, "Ljava.lang.CharSequence;", 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum = { 2, "", "org.apache.lucene.queryparser.flexible.core.nodes", "ProximityQueryNode$Type", 0xc018, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum *self, NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$2Enum)

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum

- (id<JavaLangCharSequence>)toQueryString {
  return @"WITHIN";
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toQueryString", NULL, "Ljava.lang.CharSequence;", 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum = { 2, "", "org.apache.lucene.queryparser.flexible.core.nodes", "ProximityQueryNode$Type", 0xc018, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum_initWithNSString_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum *self, NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_Type_$3Enum)

@implementation OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum:(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *)type {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_(self, type);
  return self;
}

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum:(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *)type
                                                                                       withInt:(jint)distance {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_(self, type, distance);
  return self;
}

- (void)dealloc {
  RELEASE_(pType_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum:", "ProximityType", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum:withInt:", "ProximityType", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pDistance_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "pType_", NULL, 0x0, "Lorg.apache.lucene.queryparser.flexible.core.nodes.ProximityQueryNode$Type;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType = { 2, "ProximityType", "org.apache.lucene.queryparser.flexible.core.nodes", "ProximityQueryNode", 0x9, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType;
}

@end

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *self, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *type) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_(self, type, 0);
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *type) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_(self, type);
  return self;
}

void OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *self, OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *type, jint distance) {
  NSObject_init(self);
  self->pDistance_ = 0;
  JreStrongAssign(&self->pType_, nil);
  JreStrongAssign(&self->pType_, type);
  self->pDistance_ = distance;
}

OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *new_OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum *type, jint distance) {
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType *self = [OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType alloc];
  OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType_initWithOrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_TypeEnum_withInt_(self, type, distance);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreNodesProximityQueryNode_ProximityType)
