//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/ngram/Lucene43EdgeNGramTokenFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"
#include "org/apache/lucene/analysis/util/CharacterUtils.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter () {
 @public
  OrgApacheLuceneAnalysisUtilCharacterUtils *charUtils_;
  jint minGram_;
  jint maxGram_;
  IOSCharArray *curTermBuffer_;
  jint curTermLength_;
  jint curCodePointCount_;
  jint curGramSize_;
  jint tokStart_;
  jint tokEnd_;
  jint savePosIncr_;
  jint savePosLen_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute> posLenAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter, charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter, curTermBuffer_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter, posIncrAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter, posLenAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>)

@implementation OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                   withInt:(jint)minGram
                                                   withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, minGram, maxGram);
  return self;
}

- (jboolean)incrementToken {
  while (true) {
    if (curTermBuffer_ == nil) {
      if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
        return false;
      }
      else {
        JreStrongAssign(&curTermBuffer_, [((IOSCharArray *) nil_chk([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer])) clone]);
        curTermLength_ = [termAtt_ length];
        curCodePointCount_ = [((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) codePointCountWithJavaLangCharSequence:termAtt_];
        curGramSize_ = minGram_;
        tokStart_ = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) startOffset];
        tokEnd_ = [offsetAtt_ endOffset];
        savePosIncr_ += [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) getPositionIncrement];
        savePosLen_ = [((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) nil_chk(posLenAtt_)) getPositionLength];
      }
    }
    if (curGramSize_ <= maxGram_) {
      if (curGramSize_ <= curCodePointCount_) {
        [self clearAttributes];
        [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:tokStart_ withInt:tokEnd_];
        if (curGramSize_ == minGram_) {
          [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) setPositionIncrementWithInt:savePosIncr_];
          savePosIncr_ = 0;
        }
        else {
          [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) setPositionIncrementWithInt:0];
        }
        [((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) nil_chk(posLenAtt_)) setPositionLengthWithInt:savePosLen_];
        jint charLength = [((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) offsetByCodePointsWithCharArray:curTermBuffer_ withInt:0 withInt:curTermLength_ withInt:0 withInt:curGramSize_];
        [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) copyBufferWithCharArray:curTermBuffer_ withInt:0 withInt:charLength];
        curGramSize_++;
        return true;
      }
    }
    JreStrongAssign(&curTermBuffer_, nil);
  }
}

- (void)reset {
  [super reset];
  JreStrongAssign(&curTermBuffer_, nil);
  savePosIncr_ = 0;
}

- (void)dealloc {
  RELEASE_(charUtils_);
  RELEASE_(curTermBuffer_);
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(posIncrAtt_);
  RELEASE_(posLenAtt_);
  [super dealloc];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withInt:withInt:", "Lucene43EdgeNGramTokenFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_GRAM_SIZE", "DEFAULT_MAX_GRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_DEFAULT_MAX_GRAM_SIZE },
    { "DEFAULT_MIN_GRAM_SIZE", "DEFAULT_MIN_GRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_DEFAULT_MIN_GRAM_SIZE },
    { "charUtils_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharacterUtils;", NULL, NULL, .constantValue.asLong = 0 },
    { "minGram_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxGram_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curTermBuffer_", NULL, 0x2, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "curTermLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curCodePointCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curGramSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "tokStart_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "tokEnd_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "savePosIncr_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "savePosLen_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncrAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posLenAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionLengthAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter = { 2, "Lucene43EdgeNGramTokenFilter", "org.apache.lucene.analysis.ngram", NULL, 0x11, 3, methods, 17, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter;
}

@end

void OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssign(&self->posLenAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_()]);
  if (minGram < 1) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must be greater than zero") autorelease];
  }
  if (minGram > maxGram) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must not be greater than maxGram") autorelease];
  }
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils_getJava4Instance());
  self->minGram_ = minGram;
  self->maxGram_ = maxGram;
}

OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter *new_OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter *self = [OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter alloc];
  OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, minGram, maxGram);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramLucene43EdgeNGramTokenFilter)
