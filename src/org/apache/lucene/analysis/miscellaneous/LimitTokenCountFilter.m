//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenCountFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/LimitTokenCountFilter.h"

@interface OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter () {
 @public
  jint maxTokenCount_;
  jboolean consumeAllTokens_;
  jint tokenCount_;
  jboolean exhausted_;
}

@end

@implementation OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)maxTokenCount {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(self, inArg, maxTokenCount);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)maxTokenCount
                                               withBoolean:(jboolean)consumeAllTokens {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(self, inArg, maxTokenCount, consumeAllTokens);
  return self;
}

- (jboolean)incrementToken {
  if (exhausted_) {
    return false;
  }
  else if (tokenCount_ < maxTokenCount_) {
    if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
      tokenCount_++;
      return true;
    }
    else {
      exhausted_ = true;
      return false;
    }
  }
  else {
    while (consumeAllTokens_ && [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    }
    return false;
  }
}

- (void)reset {
  [super reset];
  tokenCount_ = 0;
  exhausted_ = false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withInt:", "LimitTokenCountFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withInt:withBoolean:", "LimitTokenCountFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "maxTokenCount_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "consumeAllTokens_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "tokenCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "exhausted_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter = { 2, "LimitTokenCountFilter", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 4, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenCount) {
  OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(self, inArg, maxTokenCount, false);
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenCount) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_, inArg, maxTokenCount)
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenCount) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_, inArg, maxTokenCount)
}

void OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenCount, jboolean consumeAllTokens) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  self->tokenCount_ = 0;
  self->exhausted_ = false;
  if (maxTokenCount < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"maxTokenCount must be greater than zero");
  }
  self->maxTokenCount_ = maxTokenCount;
  self->consumeAllTokens_ = consumeAllTokens;
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenCount, jboolean consumeAllTokens) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_, inArg, maxTokenCount, consumeAllTokens)
}

OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_(OrgApacheLuceneAnalysisTokenStream *inArg, jint maxTokenCount, jboolean consumeAllTokens) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withBoolean_, inArg, maxTokenCount, consumeAllTokens)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousLimitTokenCountFilter)
