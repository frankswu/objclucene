//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/shingle/ShingleFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedList.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/shingle/ShingleFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeSource.h"

@class OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence;
@class OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken;

@interface OrgApacheLuceneAnalysisShingleShingleFilter () {
 @public
  JavaUtilLinkedList *inputWindow_;
  OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *gramSize_;
  JavaLangStringBuilder *gramBuilder_;
  NSString *tokenType_;
  NSString *tokenSeparator_;
  IOSCharArray *fillerToken_;
  jboolean outputUnigrams_;
  jboolean outputUnigramsIfNoShingles_;
  jint maxShingleSize_;
  jint minShingleSize_;
  jint numFillerTokensToInsert_;
  OrgApacheLuceneUtilAttributeSource *nextInputStreamToken_;
  jboolean isNextInputStreamToken_;
  jboolean isOutputHere_;
  OrgApacheLuceneUtilAttributeSource_State *endState_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute> posLenAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> typeAtt_;
  jboolean exhausted_;
}

- (OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *)getNextTokenWithOrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken:(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *)target;

- (void)shiftInputWindow;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, inputWindow_, JavaUtilLinkedList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, gramSize_, OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, gramBuilder_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, tokenType_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, tokenSeparator_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, fillerToken_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, nextInputStreamToken_, OrgApacheLuceneUtilAttributeSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, endState_, OrgApacheLuceneUtilAttributeSource_State *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, posIncrAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, posLenAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter, typeAtt_, id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>)

__attribute__((unused)) static OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *OrgApacheLuceneAnalysisShingleShingleFilter_getNextTokenWithOrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *target);

__attribute__((unused)) static void OrgApacheLuceneAnalysisShingleShingleFilter_shiftInputWindow(OrgApacheLuceneAnalysisShingleShingleFilter *self);

@interface OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence : NSObject {
 @public
  OrgApacheLuceneAnalysisShingleShingleFilter *this$0_;
  jint value_;
  jint previousValue_;
  jint minValue_;
}

- (instancetype)initWithOrgApacheLuceneAnalysisShingleShingleFilter:(OrgApacheLuceneAnalysisShingleShingleFilter *)outer$;

- (jint)getValue;

- (void)advance;

- (void)reset;

- (jboolean)atMinValue;

- (jint)getPreviousValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence, this$0_, OrgApacheLuceneAnalysisShingleShingleFilter *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence_initWithOrgApacheLuceneAnalysisShingleShingleFilter_(OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *self, OrgApacheLuceneAnalysisShingleShingleFilter *outer$);

__attribute__((unused)) static OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *new_OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence_initWithOrgApacheLuceneAnalysisShingleShingleFilter_(OrgApacheLuceneAnalysisShingleShingleFilter *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence)

@interface OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken : NSObject {
 @public
  OrgApacheLuceneUtilAttributeSource *attSource_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  jboolean isFiller_;
}

- (instancetype)initWithOrgApacheLuceneAnalysisShingleShingleFilter:(OrgApacheLuceneAnalysisShingleShingleFilter *)outer$
                             withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)attSource;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken, attSource_, OrgApacheLuceneUtilAttributeSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

__attribute__((unused)) static void OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_initWithOrgApacheLuceneAnalysisShingleShingleFilter_withOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *self, OrgApacheLuceneAnalysisShingleShingleFilter *outer$, OrgApacheLuceneUtilAttributeSource *attSource);

__attribute__((unused)) static OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *new_OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_initWithOrgApacheLuceneAnalysisShingleShingleFilter_withOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneAnalysisShingleShingleFilter *outer$, OrgApacheLuceneUtilAttributeSource *attSource) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken)

NSString *OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_FILLER_TOKEN_ = @"_";
NSString *OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_TOKEN_TYPE_ = @"shingle";
NSString *OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_TOKEN_SEPARATOR_ = @" ";

@implementation OrgApacheLuceneAnalysisShingleShingleFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                   withInt:(jint)minShingleSize
                                                   withInt:(jint)maxShingleSize {
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, minShingleSize, maxShingleSize);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                   withInt:(jint)maxShingleSize {
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(self, input, maxShingleSize);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                              withNSString:(NSString *)tokenType {
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withNSString_(self, input, tokenType);
  return self;
}

- (void)setTokenTypeWithNSString:(NSString *)tokenType {
  JreStrongAssign(&self->tokenType_, tokenType);
}

- (void)setOutputUnigramsWithBoolean:(jboolean)outputUnigrams {
  self->outputUnigrams_ = outputUnigrams;
  JreStrongAssignAndConsume(&gramSize_, new_OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence_initWithOrgApacheLuceneAnalysisShingleShingleFilter_(self));
}

- (void)setOutputUnigramsIfNoShinglesWithBoolean:(jboolean)outputUnigramsIfNoShingles {
  self->outputUnigramsIfNoShingles_ = outputUnigramsIfNoShingles;
}

- (void)setMaxShingleSizeWithInt:(jint)maxShingleSize {
  if (maxShingleSize < 2) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"Max shingle size must be >= 2") autorelease];
  }
  self->maxShingleSize_ = maxShingleSize;
}

- (void)setMinShingleSizeWithInt:(jint)minShingleSize {
  if (minShingleSize < 2) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"Min shingle size must be >= 2") autorelease];
  }
  if (minShingleSize > maxShingleSize_) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"Min shingle size must be <= max shingle size") autorelease];
  }
  self->minShingleSize_ = minShingleSize;
  JreStrongAssignAndConsume(&gramSize_, new_OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence_initWithOrgApacheLuceneAnalysisShingleShingleFilter_(self));
}

- (void)setTokenSeparatorWithNSString:(NSString *)tokenSeparator {
  JreStrongAssign(&self->tokenSeparator_, nil == tokenSeparator ? @"" : tokenSeparator);
}

- (void)setFillerTokenWithNSString:(NSString *)fillerToken {
  JreStrongAssign(&self->fillerToken_, nil == fillerToken ? [IOSCharArray arrayWithLength:0] : [fillerToken toCharArray]);
}

- (jboolean)incrementToken {
  jboolean tokenAvailable = false;
  jint builtGramSize = 0;
  if ([((OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *) nil_chk(gramSize_)) atMinValue] || [((JavaUtilLinkedList *) nil_chk(inputWindow_)) size] < [gramSize_ getValue]) {
    OrgApacheLuceneAnalysisShingleShingleFilter_shiftInputWindow(self);
    [((JavaLangStringBuilder *) nil_chk(gramBuilder_)) setLengthWithInt:0];
  }
  else {
    builtGramSize = [gramSize_ getPreviousValue];
  }
  if ([((JavaUtilLinkedList *) nil_chk(inputWindow_)) size] >= [gramSize_ getValue]) {
    jboolean isAllFiller = true;
    OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *nextToken = nil;
    id<JavaUtilIterator> iter = [inputWindow_ iterator];
    for (jint gramNum = 1; [((id<JavaUtilIterator>) nil_chk(iter)) hasNext] && builtGramSize < [gramSize_ getValue]; ++gramNum) {
      nextToken = [iter next];
      if (builtGramSize < gramNum) {
        if (builtGramSize > 0) {
          [((JavaLangStringBuilder *) nil_chk(gramBuilder_)) appendWithNSString:tokenSeparator_];
        }
        [((JavaLangStringBuilder *) nil_chk(gramBuilder_)) appendWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(((OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *) nil_chk(nextToken))->termAtt_)) buffer] withInt:0 withInt:[nextToken->termAtt_ length]];
        ++builtGramSize;
      }
      if (isAllFiller && ((OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *) nil_chk(nextToken))->isFiller_) {
        if (gramNum == [gramSize_ getValue]) {
          [gramSize_ advance];
        }
      }
      else {
        isAllFiller = false;
      }
    }
    if (!isAllFiller && builtGramSize == [gramSize_ getValue]) {
      [((OrgApacheLuceneUtilAttributeSource *) nil_chk(((OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *) nil_chk([inputWindow_ getFirst]))->attSource_)) copyToWithOrgApacheLuceneUtilAttributeSource:self];
      [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) setPositionIncrementWithInt:isOutputHere_ ? 0 : 1];
      [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) setEmpty])) appendWithJavaLangStringBuilder:gramBuilder_];
      if ([gramSize_ getValue] > 1) {
        [((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(typeAtt_)) setTypeWithNSString:tokenType_];
        noShingleOutput_ = false;
      }
      [offsetAtt_ setOffsetWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) startOffset] withInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(((OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *) nil_chk(nextToken))->offsetAtt_)) endOffset]];
      [((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) nil_chk(posLenAtt_)) setPositionLengthWithInt:builtGramSize];
      isOutputHere_ = true;
      [gramSize_ advance];
      tokenAvailable = true;
    }
  }
  return tokenAvailable;
}

- (OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *)getNextTokenWithOrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken:(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *)target {
  return OrgApacheLuceneAnalysisShingleShingleFilter_getNextTokenWithOrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_(self, target);
}

- (void)end {
  if (!exhausted_) {
    [super end];
  }
  else {
    [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:endState_];
  }
}

- (void)shiftInputWindow {
  OrgApacheLuceneAnalysisShingleShingleFilter_shiftInputWindow(self);
}

- (void)reset {
  [super reset];
  [((OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *) nil_chk(gramSize_)) reset];
  [((JavaUtilLinkedList *) nil_chk(inputWindow_)) clear];
  JreStrongAssign(&nextInputStreamToken_, nil);
  isNextInputStreamToken_ = false;
  numFillerTokensToInsert_ = 0;
  isOutputHere_ = false;
  noShingleOutput_ = true;
  exhausted_ = false;
  JreStrongAssign(&endState_, nil);
  if (outputUnigramsIfNoShingles_ && !outputUnigrams_) {
    gramSize_->minValue_ = minShingleSize_;
  }
}

- (void)dealloc {
  RELEASE_(inputWindow_);
  RELEASE_(gramSize_);
  RELEASE_(gramBuilder_);
  RELEASE_(tokenType_);
  RELEASE_(tokenSeparator_);
  RELEASE_(fillerToken_);
  RELEASE_(nextInputStreamToken_);
  RELEASE_(endState_);
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(posIncrAtt_);
  RELEASE_(posLenAtt_);
  RELEASE_(typeAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withInt:withInt:", "ShingleFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withInt:", "ShingleFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "ShingleFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withNSString:", "ShingleFilter", NULL, 0x1, NULL, NULL },
    { "setTokenTypeWithNSString:", "setTokenType", "V", 0x1, NULL, NULL },
    { "setOutputUnigramsWithBoolean:", "setOutputUnigrams", "V", 0x1, NULL, NULL },
    { "setOutputUnigramsIfNoShinglesWithBoolean:", "setOutputUnigramsIfNoShingles", "V", 0x1, NULL, NULL },
    { "setMaxShingleSizeWithInt:", "setMaxShingleSize", "V", 0x1, NULL, NULL },
    { "setMinShingleSizeWithInt:", "setMinShingleSize", "V", 0x1, NULL, NULL },
    { "setTokenSeparatorWithNSString:", "setTokenSeparator", "V", 0x1, NULL, NULL },
    { "setFillerTokenWithNSString:", "setFillerToken", "V", 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "getNextTokenWithOrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken:", "getNextToken", "Lorg.apache.lucene.analysis.shingle.ShingleFilter$InputWindowToken;", 0x2, "Ljava.io.IOException;", NULL },
    { "end", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "shiftInputWindow", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_FILLER_TOKEN_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_FILLER_TOKEN_, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_MAX_SHINGLE_SIZE", "DEFAULT_MAX_SHINGLE_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MAX_SHINGLE_SIZE },
    { "DEFAULT_MIN_SHINGLE_SIZE", "DEFAULT_MIN_SHINGLE_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MIN_SHINGLE_SIZE },
    { "DEFAULT_TOKEN_TYPE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_TOKEN_TYPE_, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_TOKEN_SEPARATOR_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_TOKEN_SEPARATOR_, NULL, .constantValue.asLong = 0 },
    { "inputWindow_", NULL, 0x2, "Ljava.util.LinkedList;", NULL, "Ljava/util/LinkedList<Lorg/apache/lucene/analysis/shingle/ShingleFilter$InputWindowToken;>;", .constantValue.asLong = 0 },
    { "gramSize_", NULL, 0x2, "Lorg.apache.lucene.analysis.shingle.ShingleFilter$CircularSequence;", NULL, NULL, .constantValue.asLong = 0 },
    { "gramBuilder_", NULL, 0x2, "Ljava.lang.StringBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "tokenType_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "tokenSeparator_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "fillerToken_", NULL, 0x2, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "outputUnigrams_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "outputUnigramsIfNoShingles_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "maxShingleSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minShingleSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "numFillerTokensToInsert_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "nextInputStreamToken_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "isNextInputStreamToken_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "isOutputHere_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "noShingleOutput_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "endState_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncrAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posLenAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionLengthAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "typeAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.TypeAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "exhausted_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.shingle.ShingleFilter$CircularSequence;", "Lorg.apache.lucene.analysis.shingle.ShingleFilter$InputWindowToken;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisShingleShingleFilter = { 2, "ShingleFilter", "org.apache.lucene.analysis.shingle", NULL, 0x11, 16, methods, 27, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisShingleShingleFilter;
}

@end

void OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint minShingleSize, jint maxShingleSize) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssignAndConsume(&self->inputWindow_, new_JavaUtilLinkedList_init());
  JreStrongAssignAndConsume(&self->gramBuilder_, new_JavaLangStringBuilder_init());
  JreStrongAssign(&self->tokenType_, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_TOKEN_TYPE_);
  JreStrongAssign(&self->tokenSeparator_, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_TOKEN_SEPARATOR_);
  JreStrongAssign(&self->fillerToken_, [((NSString *) nil_chk(OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_FILLER_TOKEN_)) toCharArray]);
  self->outputUnigrams_ = true;
  self->outputUnigramsIfNoShingles_ = false;
  self->isNextInputStreamToken_ = false;
  self->isOutputHere_ = false;
  self->noShingleOutput_ = true;
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssign(&self->posLenAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_()]);
  JreStrongAssign(&self->typeAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
  [self setMaxShingleSizeWithInt:maxShingleSize];
  [self setMinShingleSizeWithInt:minShingleSize];
}

OrgApacheLuceneAnalysisShingleShingleFilter *new_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minShingleSize, jint maxShingleSize) {
  OrgApacheLuceneAnalysisShingleShingleFilter *self = [OrgApacheLuceneAnalysisShingleShingleFilter alloc];
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, minShingleSize, maxShingleSize);
  return self;
}

void OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint maxShingleSize) {
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MIN_SHINGLE_SIZE, maxShingleSize);
}

OrgApacheLuceneAnalysisShingleShingleFilter *new_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint maxShingleSize) {
  OrgApacheLuceneAnalysisShingleShingleFilter *self = [OrgApacheLuceneAnalysisShingleShingleFilter alloc];
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(self, input, maxShingleSize);
  return self;
}

void OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MIN_SHINGLE_SIZE, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MAX_SHINGLE_SIZE);
}

OrgApacheLuceneAnalysisShingleShingleFilter *new_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisShingleShingleFilter *self = [OrgApacheLuceneAnalysisShingleShingleFilter alloc];
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

void OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withNSString_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisTokenStream *input, NSString *tokenType) {
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MIN_SHINGLE_SIZE, OrgApacheLuceneAnalysisShingleShingleFilter_DEFAULT_MAX_SHINGLE_SIZE);
  [self setTokenTypeWithNSString:tokenType];
}

OrgApacheLuceneAnalysisShingleShingleFilter *new_OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withNSString_(OrgApacheLuceneAnalysisTokenStream *input, NSString *tokenType) {
  OrgApacheLuceneAnalysisShingleShingleFilter *self = [OrgApacheLuceneAnalysisShingleShingleFilter alloc];
  OrgApacheLuceneAnalysisShingleShingleFilter_initWithOrgApacheLuceneAnalysisTokenStream_withNSString_(self, input, tokenType);
  return self;
}

OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *OrgApacheLuceneAnalysisShingleShingleFilter_getNextTokenWithOrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_(OrgApacheLuceneAnalysisShingleShingleFilter *self, OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *target) {
  OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *newTarget = target;
  if (self->numFillerTokensToInsert_ > 0) {
    if (nil == target) {
      newTarget = [new_OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_initWithOrgApacheLuceneAnalysisShingleShingleFilter_withOrgApacheLuceneUtilAttributeSource_(self, [((OrgApacheLuceneUtilAttributeSource *) nil_chk(self->nextInputStreamToken_)) cloneAttributes]) autorelease];
    }
    else {
      [((OrgApacheLuceneUtilAttributeSource *) nil_chk(self->nextInputStreamToken_)) copyToWithOrgApacheLuceneUtilAttributeSource:target->attSource_];
    }
    [((OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *) nil_chk(newTarget))->offsetAtt_ setOffsetWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(newTarget->offsetAtt_)) startOffset] withInt:[newTarget->offsetAtt_ startOffset]];
    [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(newTarget->termAtt_)) copyBufferWithCharArray:self->fillerToken_ withInt:0 withInt:((IOSCharArray *) nil_chk(self->fillerToken_))->size_];
    newTarget->isFiller_ = true;
    --self->numFillerTokensToInsert_;
  }
  else if (self->isNextInputStreamToken_) {
    if (nil == target) {
      newTarget = [new_OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_initWithOrgApacheLuceneAnalysisShingleShingleFilter_withOrgApacheLuceneUtilAttributeSource_(self, [((OrgApacheLuceneUtilAttributeSource *) nil_chk(self->nextInputStreamToken_)) cloneAttributes]) autorelease];
    }
    else {
      [((OrgApacheLuceneUtilAttributeSource *) nil_chk(self->nextInputStreamToken_)) copyToWithOrgApacheLuceneUtilAttributeSource:target->attSource_];
    }
    self->isNextInputStreamToken_ = false;
    ((OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *) nil_chk(newTarget))->isFiller_ = false;
  }
  else if (!self->exhausted_) {
    if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(self->input_)) incrementToken]) {
      if (nil == target) {
        newTarget = [new_OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_initWithOrgApacheLuceneAnalysisShingleShingleFilter_withOrgApacheLuceneUtilAttributeSource_(self, [self cloneAttributes]) autorelease];
      }
      else {
        [self copyToWithOrgApacheLuceneUtilAttributeSource:target->attSource_];
      }
      if ([((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(self->posIncrAtt_)) getPositionIncrement] > 1) {
        self->numFillerTokensToInsert_ = JavaLangMath_minWithInt_withInt_([self->posIncrAtt_ getPositionIncrement] - 1, self->maxShingleSize_ - 1);
        if (nil == self->nextInputStreamToken_) {
          JreStrongAssign(&self->nextInputStreamToken_, [self cloneAttributes]);
        }
        else {
          [self copyToWithOrgApacheLuceneUtilAttributeSource:self->nextInputStreamToken_];
        }
        self->isNextInputStreamToken_ = true;
        [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(((OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *) nil_chk(newTarget))->offsetAtt_)) setOffsetWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAtt_)) startOffset] withInt:[self->offsetAtt_ startOffset]];
        [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(newTarget->termAtt_)) copyBufferWithCharArray:self->fillerToken_ withInt:0 withInt:((IOSCharArray *) nil_chk(self->fillerToken_))->size_];
        newTarget->isFiller_ = true;
        --self->numFillerTokensToInsert_;
      }
      else {
        ((OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *) nil_chk(newTarget))->isFiller_ = false;
      }
    }
    else {
      self->exhausted_ = true;
      [self->input_ end];
      JreStrongAssign(&self->endState_, [self captureState]);
      self->numFillerTokensToInsert_ = JavaLangMath_minWithInt_withInt_([((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(self->posIncrAtt_)) getPositionIncrement], self->maxShingleSize_ - 1);
      if (self->numFillerTokensToInsert_ > 0) {
        JreStrongAssignAndConsume(&self->nextInputStreamToken_, new_OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_([self getAttributeFactory]));
        [self->nextInputStreamToken_ addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
        id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> newOffsetAtt = [self->nextInputStreamToken_ addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()];
        [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(newOffsetAtt)) setOffsetWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAtt_)) endOffset] withInt:[self->offsetAtt_ endOffset]];
        return OrgApacheLuceneAnalysisShingleShingleFilter_getNextTokenWithOrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_(self, target);
      }
      else {
        newTarget = nil;
      }
    }
  }
  else {
    newTarget = nil;
  }
  return newTarget;
}

void OrgApacheLuceneAnalysisShingleShingleFilter_shiftInputWindow(OrgApacheLuceneAnalysisShingleShingleFilter *self) {
  OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *firstToken = nil;
  if ([((JavaUtilLinkedList *) nil_chk(self->inputWindow_)) size] > 0) {
    firstToken = [self->inputWindow_ removeFirst];
  }
  while ([self->inputWindow_ size] < self->maxShingleSize_) {
    if (nil != firstToken) {
      if (nil != OrgApacheLuceneAnalysisShingleShingleFilter_getNextTokenWithOrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_(self, firstToken)) {
        [self->inputWindow_ addWithId:firstToken];
        firstToken = nil;
      }
      else {
        break;
      }
    }
    else {
      OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *nextToken = OrgApacheLuceneAnalysisShingleShingleFilter_getNextTokenWithOrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_(self, nil);
      if (nil != nextToken) {
        [self->inputWindow_ addWithId:nextToken];
      }
      else {
        break;
      }
    }
  }
  if (self->outputUnigramsIfNoShingles_ && self->noShingleOutput_ && ((OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *) nil_chk(self->gramSize_))->minValue_ > 1 && [self->inputWindow_ size] < self->minShingleSize_) {
    self->gramSize_->minValue_ = 1;
  }
  [((OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *) nil_chk(self->gramSize_)) reset];
  self->isOutputHere_ = false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisShingleShingleFilter)

@implementation OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence

- (instancetype)initWithOrgApacheLuceneAnalysisShingleShingleFilter:(OrgApacheLuceneAnalysisShingleShingleFilter *)outer$ {
  OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence_initWithOrgApacheLuceneAnalysisShingleShingleFilter_(self, outer$);
  return self;
}

- (jint)getValue {
  return value_;
}

- (void)advance {
  previousValue_ = value_;
  if (value_ == 1) {
    value_ = this$0_->minShingleSize_;
  }
  else if (value_ == this$0_->maxShingleSize_) {
    [self reset];
  }
  else {
    ++value_;
  }
}

- (void)reset {
  previousValue_ = value_ = minValue_;
}

- (jboolean)atMinValue {
  return value_ == minValue_;
}

- (jint)getPreviousValue {
  return previousValue_;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisShingleShingleFilter:", "CircularSequence", NULL, 0x1, NULL, NULL },
    { "getValue", NULL, "I", 0x1, NULL, NULL },
    { "advance", NULL, "V", 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x1, NULL, NULL },
    { "atMinValue", NULL, "Z", 0x1, NULL, NULL },
    { "getPreviousValue", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.analysis.shingle.ShingleFilter;", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "previousValue_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minValue_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence = { 2, "CircularSequence", "org.apache.lucene.analysis.shingle", "ShingleFilter", 0x2, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence;
}

@end

void OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence_initWithOrgApacheLuceneAnalysisShingleShingleFilter_(OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *self, OrgApacheLuceneAnalysisShingleShingleFilter *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  self->minValue_ = outer$->outputUnigrams_ ? 1 : outer$->minShingleSize_;
  [self reset];
}

OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *new_OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence_initWithOrgApacheLuceneAnalysisShingleShingleFilter_(OrgApacheLuceneAnalysisShingleShingleFilter *outer$) {
  OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence *self = [OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence alloc];
  OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence_initWithOrgApacheLuceneAnalysisShingleShingleFilter_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisShingleShingleFilter_CircularSequence)

@implementation OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken

- (instancetype)initWithOrgApacheLuceneAnalysisShingleShingleFilter:(OrgApacheLuceneAnalysisShingleShingleFilter *)outer$
                             withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)attSource {
  OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_initWithOrgApacheLuceneAnalysisShingleShingleFilter_withOrgApacheLuceneUtilAttributeSource_(self, outer$, attSource);
  return self;
}

- (void)dealloc {
  RELEASE_(attSource_);
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisShingleShingleFilter:withOrgApacheLuceneUtilAttributeSource:", "InputWindowToken", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "attSource_", NULL, 0x10, "Lorg.apache.lucene.util.AttributeSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x10, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x10, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "isFiller_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken = { 2, "InputWindowToken", "org.apache.lucene.analysis.shingle", "ShingleFilter", 0x2, 1, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken;
}

@end

void OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_initWithOrgApacheLuceneAnalysisShingleShingleFilter_withOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *self, OrgApacheLuceneAnalysisShingleShingleFilter *outer$, OrgApacheLuceneUtilAttributeSource *attSource) {
  NSObject_init(self);
  self->isFiller_ = false;
  JreStrongAssign(&self->attSource_, attSource);
  JreStrongAssign(&self->termAtt_, [((OrgApacheLuceneUtilAttributeSource *) nil_chk(attSource)) getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [attSource getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
}

OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *new_OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_initWithOrgApacheLuceneAnalysisShingleShingleFilter_withOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneAnalysisShingleShingleFilter *outer$, OrgApacheLuceneUtilAttributeSource *attSource) {
  OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken *self = [OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken alloc];
  OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken_initWithOrgApacheLuceneAnalysisShingleShingleFilter_withOrgApacheLuceneUtilAttributeSource_(self, outer$, attSource);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisShingleShingleFilter_InputWindowToken)
