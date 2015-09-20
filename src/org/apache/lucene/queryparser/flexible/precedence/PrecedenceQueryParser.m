//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/precedence/PrecedenceQueryParser.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/queryparser/flexible/core/QueryParserHelper.h"
#include "org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.h"
#include "org/apache/lucene/queryparser/flexible/precedence/PrecedenceQueryParser.h"
#include "org/apache/lucene/queryparser/flexible/precedence/processors/PrecedenceQueryNodeProcessorPipeline.h"
#include "org/apache/lucene/queryparser/flexible/standard/StandardQueryParser.h"

@implementation OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyer {
  OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyer);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PrecedenceQueryParser", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisAnalyzer:", "PrecedenceQueryParser", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser = { 2, "PrecedenceQueryParser", "org.apache.lucene.queryparser.flexible.precedence", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser;
}

@end

void OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_init(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *self) {
  OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_init(self);
  [self setQueryNodeProcessorWithOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor:[new_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_([self getQueryConfigHandler]) autorelease]];
}

OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *new_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_init() {
  OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *self = [OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser alloc];
  OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_init(self);
  return self;
}

void OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *self, OrgApacheLuceneAnalysisAnalyzer *analyer) {
  OrgApacheLuceneQueryparserFlexibleStandardStandardQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyer);
  [self setQueryNodeProcessorWithOrgApacheLuceneQueryparserFlexibleCoreProcessorsQueryNodeProcessor:[new_OrgApacheLuceneQueryparserFlexiblePrecedenceProcessorsPrecedenceQueryNodeProcessorPipeline_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_([self getQueryConfigHandler]) autorelease]];
}

OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *new_OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyer) {
  OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser *self = [OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser alloc];
  OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexiblePrecedencePrecedenceQueryParser)
