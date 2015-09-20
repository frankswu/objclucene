//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/processors/FuzzyQueryNodeProcessor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/List.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryNodeException.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/FuzzyQueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/nodes/QueryNode.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorImpl.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/FuzzyConfig.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/StandardQueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/FuzzyQueryNodeProcessor.h"

@implementation OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  return node;
}

- (id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)node {
  if ([node isKindOfClass:[OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode class]]) {
    OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *fuzzyNode = (OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *) check_class_cast(node, [OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode class]);
    OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *config = [self getQueryConfigHandler];
    OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *fuzzyConfig = nil;
    if (config != nil && (fuzzyConfig = [config getWithOrgApacheLuceneQueryparserFlexibleCoreConfigConfigurationKey:JreLoadStatic(OrgApacheLuceneQueryparserFlexibleStandardConfigStandardQueryConfigHandler_ConfigurationKeys, FUZZY_CONFIG_)]) != nil) {
      [((OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *) nil_chk(fuzzyNode)) setPrefixLengthWithInt:[((OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *) nil_chk(fuzzyConfig)) getPrefixLength]];
      if ([fuzzyNode getSimilarity] < 0) {
        [fuzzyNode setSimilarityWithFloat:[fuzzyConfig getMinSimilarity]];
      }
    }
    else if ([((OrgApacheLuceneQueryparserFlexibleCoreNodesFuzzyQueryNode *) nil_chk(fuzzyNode)) getSimilarity] < 0) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"No FUZZY_CONFIG set in the config") autorelease];
    }
  }
  return node;
}

- (id<JavaUtilList>)setChildrenOrderWithJavaUtilList:(id<JavaUtilList>)children {
  return children;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "postProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "postProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "preProcessNodeWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:", "preProcessNode", "Lorg.apache.lucene.queryparser.flexible.core.nodes.QueryNode;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "setChildrenOrderWithJavaUtilList:", "setChildrenOrder", "Ljava.util.List;", 0x4, "Lorg.apache.lucene.queryparser.flexible.core.QueryNodeException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor = { 2, "FuzzyQueryNodeProcessor", "org.apache.lucene.queryparser.flexible.standard.processors", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor_init(OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor *self) {
  OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessorImpl_init(self);
}

OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor *new_OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor_init() {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor *self = [OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor alloc];
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardProcessorsFuzzyQueryNodeProcessor)
