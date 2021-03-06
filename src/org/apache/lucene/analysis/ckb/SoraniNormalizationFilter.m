//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ckb/SoraniNormalizationFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/ckb/SoraniNormalizationFilter.h"
#include "org/apache/lucene/analysis/ckb/SoraniNormalizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter () {
 @public
  OrgApacheLuceneAnalysisCkbSoraniNormalizer *normalizer_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter, normalizer_, OrgApacheLuceneAnalysisCkbSoraniNormalizer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

@implementation OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    jint newlen = [((OrgApacheLuceneAnalysisCkbSoraniNormalizer *) nil_chk(normalizer_)) normalizeWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ length]];
    [termAtt_ setLengthWithInt:newlen];
    return true;
  }
  return false;
}

- (void)dealloc {
  RELEASE_(normalizer_);
  RELEASE_(termAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "SoraniNormalizationFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "normalizer_", NULL, 0x12, "Lorg.apache.lucene.analysis.ckb.SoraniNormalizer;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter = { 2, "SoraniNormalizationFilter", "org.apache.lucene.analysis.ckb", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter;
}

@end

void OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssignAndConsume(&self->normalizer_, new_OrgApacheLuceneAnalysisCkbSoraniNormalizer_init());
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter *new_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter *create_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter)
