//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/HyphenatedWordsFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/HyphenatedWordsFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAttribute_;
  JavaLangStringBuilder *hyphenated_;
  OrgApacheLuceneUtilAttributeSource_State *savedState_;
  jboolean exhausted_;
  jint lastEndOffset_;
}

- (void)unhyphenate;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter, termAttribute_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter, offsetAttribute_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter, hyphenated_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter, savedState_, OrgApacheLuceneUtilAttributeSource_State *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_unhyphenate(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter *self);

@implementation OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg {
  OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

- (jboolean)incrementToken {
  while (!exhausted_ && [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    IOSCharArray *term = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAttribute_)) buffer];
    jint termLength = [termAttribute_ length];
    lastEndOffset_ = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAttribute_)) endOffset];
    if (termLength > 0 && IOSCharArray_Get(nil_chk(term), termLength - 1) == '-') {
      if (savedState_ == nil) {
        JreStrongAssign(&savedState_, [self captureState]);
      }
      [((JavaLangStringBuilder *) nil_chk(hyphenated_)) appendWithCharArray:term withInt:0 withInt:termLength - 1];
    }
    else if (savedState_ == nil) {
      return YES;
    }
    else {
      [((JavaLangStringBuilder *) nil_chk(hyphenated_)) appendWithCharArray:term withInt:0 withInt:termLength];
      OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_unhyphenate(self);
      return YES;
    }
  }
  exhausted_ = YES;
  if (savedState_ != nil) {
    [((JavaLangStringBuilder *) nil_chk(hyphenated_)) appendWithChar:'-'];
    OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_unhyphenate(self);
    return YES;
  }
  return NO;
}

- (void)reset {
  [super reset];
  [((JavaLangStringBuilder *) nil_chk(hyphenated_)) setLengthWithInt:0];
  JreStrongAssign(&savedState_, nil);
  exhausted_ = NO;
  lastEndOffset_ = 0;
}

- (void)unhyphenate {
  OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_unhyphenate(self);
}

- (void)dealloc {
  RELEASE_(termAttribute_);
  RELEASE_(offsetAttribute_);
  RELEASE_(hyphenated_);
  RELEASE_(savedState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "HyphenatedWordsFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "unhyphenate", NULL, "V", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "hyphenated_", NULL, 0x12, "Ljava.lang.StringBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "savedState_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
    { "exhausted_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "lastEndOffset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter = { 2, "HyphenatedWordsFilter", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 4, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  JreStrongAssign(&self->termAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssignAndConsume(&self->hyphenated_, new_JavaLangStringBuilder_init());
  self->exhausted_ = NO;
  self->lastEndOffset_ = 0;
}

OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter *new_OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter *self = [OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter alloc];
  OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

void OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter_unhyphenate(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter *self) {
  [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:self->savedState_];
  JreStrongAssign(&self->savedState_, nil);
  IOSCharArray *term = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAttribute_)) buffer];
  jint length = [((JavaLangStringBuilder *) nil_chk(self->hyphenated_)) length];
  if (length > [self->termAttribute_ length]) {
    term = [self->termAttribute_ resizeBufferWithInt:length];
  }
  [self->hyphenated_ getCharsWithInt:0 withInt:length withCharArray:term withInt:0];
  [self->termAttribute_ setLengthWithInt:length];
  [self->offsetAttribute_ setOffsetWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAttribute_)) startOffset] withInt:self->lastEndOffset_];
  [self->hyphenated_ setLengthWithInt:0];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousHyphenatedWordsFilter)