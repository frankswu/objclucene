//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/ScandinavianFoldingFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/ScandinavianFoldingFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"
#include "org/apache/lucene/util/AttributeSource.h"

#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_AA 0x00c5
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_aa 0x00e5
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_AE 0x00c6
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_ae 0x00e6
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_AE_se 0x00c4
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_ae_se 0x00e4
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_OE 0x00d8
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_oe 0x00f8
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_OE_se 0x00d6
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_oe_se 0x00f6

@interface OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> charTermAttribute_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, charTermAttribute_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, AA, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, aa, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, AE, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, ae, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, AE_se, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, ae_se, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, OE, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, oe, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, OE_se, jchar)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter, oe_se, jchar)

@implementation OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    return false;
  }
  IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(charTermAttribute_)) buffer];
  jint length = [charTermAttribute_ length];
  jint i;
  for (i = 0; i < length; i++) {
    if (IOSCharArray_Get(nil_chk(buffer), i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_aa || IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_ae_se || IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_ae) {
      *IOSCharArray_GetRef(buffer, i) = 'a';
    }
    else if (IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_AA || IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_AE_se || IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_AE) {
      *IOSCharArray_GetRef(buffer, i) = 'A';
    }
    else if (IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_oe || IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_oe_se) {
      *IOSCharArray_GetRef(buffer, i) = 'o';
    }
    else if (IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_OE || IOSCharArray_Get(buffer, i) == OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_OE_se) {
      *IOSCharArray_GetRef(buffer, i) = 'O';
    }
    else if (length - 1 > i) {
      if ((IOSCharArray_Get(buffer, i) == 'a' || IOSCharArray_Get(buffer, i) == 'A') && (IOSCharArray_Get(buffer, i + 1) == 'a' || IOSCharArray_Get(buffer, i + 1) == 'A' || IOSCharArray_Get(buffer, i + 1) == 'e' || IOSCharArray_Get(buffer, i + 1) == 'E' || IOSCharArray_Get(buffer, i + 1) == 'o' || IOSCharArray_Get(buffer, i + 1) == 'O')) {
        length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(buffer, i + 1, length);
      }
      else if ((IOSCharArray_Get(buffer, i) == 'o' || IOSCharArray_Get(buffer, i) == 'O') && (IOSCharArray_Get(buffer, i + 1) == 'e' || IOSCharArray_Get(buffer, i + 1) == 'E' || IOSCharArray_Get(buffer, i + 1) == 'o' || IOSCharArray_Get(buffer, i + 1) == 'O')) {
        length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(buffer, i + 1, length);
      }
    }
  }
  [charTermAttribute_ setLengthWithInt:length];
  return true;
}

- (void)dealloc {
  RELEASE_(charTermAttribute_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "ScandinavianFoldingFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "charTermAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "AA", "AA", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_AA },
    { "aa", "aa", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_aa },
    { "AE", "AE", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_AE },
    { "ae", "ae", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_ae },
    { "AE_se", "AE_se", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_AE_se },
    { "ae_se", "ae_se", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_ae_se },
    { "OE", "OE", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_OE },
    { "oe", "oe", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_oe },
    { "OE_se", "OE_se", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_OE_se },
    { "oe_se", "oe_se", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_oe_se },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter = { 2, "ScandinavianFoldingFilter", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 2, methods, 11, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->charTermAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter *new_OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter *self = [OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter alloc];
  OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousScandinavianFoldingFilter)
