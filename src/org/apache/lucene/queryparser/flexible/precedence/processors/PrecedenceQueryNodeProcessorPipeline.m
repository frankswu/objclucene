//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/precedence/processors/PrecedenceQueryNodeProcessorPipeline.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/core/processors/QueryNodeProcessorPipeline.h"
#include "org/apache/lucene/queryparser/flexible/precedence/processors/BooleanModifiersQueryNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/precedence/processors/PrecedenceQueryNodeProcessorPipeline.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/BooleanQuery2ModifierNodeProcessor.h"
#include "org/apache/lucene/queryparser/flexible/standard/processors/StandardQueryNodeProcessorPipeline.h"

@implementation OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)queryConfig {
  OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(self, queryConfig);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:", "PrecedenceQueryNodeProcessorPipeline", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline = { 2, "PrecedenceQueryNodeProcessorPipeline", "org.apache.lucene.queryparser.flexible.precedence.processors", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline;
}

@end

void OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) {
  OrgApacheLuceneQueryparserFlexibleStandardProcessorsStandardQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(self, queryConfig);
  for (jint i = 0; i < [self size]; i++) {
    if ([[((id<OrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor>) nil_chk([self getWithInt:i])) getClass] isEqual:OrgApacheLuceneQueryparserFlexibleStandardProcessorsBooleanQuery2ModifierNodeProcessor_class_()]) {
      [self removeWithInt:i--];
    }
  }
  [self addWithId:[new_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsBooleanModifiersQueryNodeProcessor_init() autorelease]];
}

OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline *new_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *queryConfig) {
  OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline *self = [OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline alloc];
  OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(self, queryConfig);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline)