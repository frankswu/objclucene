//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/in/IndicNormalizationFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/in/IndicNormalizationFilter.h"
#include "org/apache/lucene/analysis/in/IndicNormalizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisInIndicNormalizationFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  OrgApacheLuceneAnalysisInIndicNormalizer *normalizer_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisInIndicNormalizationFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisInIndicNormalizationFilter, normalizer_, OrgApacheLuceneAnalysisInIndicNormalizer *)

@implementation OrgApacheLuceneAnalysisInIndicNormalizationFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisInIndicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    [termAtt_ setLengthWithInt:[((OrgApacheLuceneAnalysisInIndicNormalizer *) nil_chk(normalizer_)) normalizeWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ length]]];
    return true;
  }
  else {
    return false;
  }
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(normalizer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "IndicNormalizationFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "normalizer_", NULL, 0x12, "Lorg.apache.lucene.analysis.in.IndicNormalizer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisInIndicNormalizationFilter = { 2, "IndicNormalizationFilter", "org.apache.lucene.analysis.in", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisInIndicNormalizationFilter;
}

@end

void OrgApacheLuceneAnalysisInIndicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisInIndicNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssignAndConsume(&self->normalizer_, new_OrgApacheLuceneAnalysisInIndicNormalizer_init());
}

OrgApacheLuceneAnalysisInIndicNormalizationFilter *new_OrgApacheLuceneAnalysisInIndicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisInIndicNormalizationFilter *self = [OrgApacheLuceneAnalysisInIndicNormalizationFilter alloc];
  OrgApacheLuceneAnalysisInIndicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisInIndicNormalizationFilter)
