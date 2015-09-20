//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/EdgeNGramTokenizer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/ngram/EdgeNGramTokenizer.h"
#include "org/apache/lucene/analysis/ngram/NGramTokenizer.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@implementation OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer

- (instancetype)initWithInt:(jint)minGram
                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_initWithInt_withInt_(self, minGram, maxGram);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(self, factory, minGram, maxGram);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "EdgeNGramTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:withInt:withInt:", "EdgeNGramTokenizer", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_GRAM_SIZE", "DEFAULT_MAX_GRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_DEFAULT_MAX_GRAM_SIZE },
    { "DEFAULT_MIN_GRAM_SIZE", "DEFAULT_MIN_GRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_DEFAULT_MIN_GRAM_SIZE },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer = { 2, "EdgeNGramTokenizer", "org.apache.lucene.analysis.ngram", NULL, 0x1, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer;
}

@end

void OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_initWithInt_withInt_(OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer *self, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithInt_withInt_withBoolean_(self, minGram, maxGram, true);
}

OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer *self = [OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer alloc];
  OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_initWithInt_withInt_(self, minGram, maxGram);
  return self;
}

void OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_withBoolean_(self, factory, minGram, maxGram, true);
}

OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer *new_OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer *self = [OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer alloc];
  OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(self, factory, minGram, maxGram);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramEdgeNGramTokenizer)
