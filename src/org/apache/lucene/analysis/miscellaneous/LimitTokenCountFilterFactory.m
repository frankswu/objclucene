//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenCountFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/LimitTokenCountFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/LimitTokenCountFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_MAX_TOKEN_COUNT_KEY_ = @"maxTokenCount";
NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_CONSUME_ALL_TOKENS_KEY_ = @"consumeAllTokens";

@implementation OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return [new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(input, maxTokenCount_, consumeAllTokens_) autorelease];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "LimitTokenCountFilterFactory", NULL, 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_TOKEN_COUNT_KEY_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_MAX_TOKEN_COUNT_KEY_, NULL, .constantValue.asLong = 0 },
    { "CONSUME_ALL_TOKENS_KEY_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_CONSUME_ALL_TOKENS_KEY_, NULL, .constantValue.asLong = 0 },
    { "maxTokenCount_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "consumeAllTokens_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory = { 2, "LimitTokenCountFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 2, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  self->maxTokenCount_ = [self requireIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_MAX_TOKEN_COUNT_KEY_];
  self->consumeAllTokens_ = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_CONSUME_ALL_TOKENS_KEY_ withBoolean:false];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory *self = [OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory alloc];
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilterFactory)
