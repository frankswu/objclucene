//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/Lucene43NGramTokenizer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/ngram/Lucene43NGramTokenizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer () {
 @public
  jint minGram_, maxGram_;
  jint gramSize_;
  jint pos_;
  jint inLen_;
  jint charsRead_;
  NSString *inStr_;
  jboolean started_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
}

- (void)init__WithInt:(jint)minGram
              withInt:(jint)maxGram OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, inStr_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init__WithInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *self, jint minGram, jint maxGram);

@implementation OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer

+ (jint)DEFAULT_MIN_NGRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_DEFAULT_MIN_NGRAM_SIZE;
}

+ (jint)DEFAULT_MAX_NGRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_DEFAULT_MAX_NGRAM_SIZE;
}

- (instancetype)initWithInt:(jint)minGram
                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithInt_withInt_(self, minGram, maxGram);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)minGram
                                                    withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(self, factory, minGram, maxGram);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)init__WithInt:(jint)minGram
              withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init__WithInt_withInt_(self, minGram, maxGram);
}

- (jboolean)incrementToken {
  [self clearAttributes];
  if (!started_) {
    started_ = true;
    gramSize_ = minGram_;
    IOSCharArray *chars = [IOSCharArray arrayWithLength:1024];
    charsRead_ = 0;
    while (charsRead_ < chars->size_) {
      jint inc = [((JavaIoReader *) nil_chk(input_)) readWithCharArray:chars withInt:charsRead_ withInt:chars->size_ - charsRead_];
      if (inc == -1) {
        break;
      }
      charsRead_ += inc;
    }
    JreStrongAssign(&inStr_, [[NSString stringWithCharacters:chars offset:0 length:charsRead_] trim]);
    if (charsRead_ == chars->size_) {
      IOSCharArray *throwaway = [IOSCharArray arrayWithLength:1024];
      while (true) {
        jint inc = [((JavaIoReader *) nil_chk(input_)) readWithCharArray:throwaway withInt:0 withInt:throwaway->size_];
        if (inc == -1) {
          break;
        }
        charsRead_ += inc;
      }
    }
    inLen_ = ((jint) [((NSString *) nil_chk(inStr_)) length]);
    if (inLen_ == 0) {
      return false;
    }
  }
  if (pos_ + gramSize_ > inLen_) {
    pos_ = 0;
    gramSize_++;
    if (gramSize_ > maxGram_) return false;
    if (pos_ + gramSize_ > inLen_) return false;
  }
  jint oldPos = pos_;
  pos_++;
  [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) setEmpty])) appendWithJavaLangCharSequence:inStr_ withInt:oldPos withInt:oldPos + gramSize_];
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:[self correctOffsetWithInt:oldPos] withInt:[self correctOffsetWithInt:oldPos + gramSize_]];
  return true;
}

- (void)end {
  [super end];
  jint finalOffset = [self correctOffsetWithInt:charsRead_];
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAtt_)) setOffsetWithInt:finalOffset withInt:finalOffset];
}

- (void)reset {
  [super reset];
  started_ = false;
  pos_ = 0;
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(inStr_);
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "Lucene43NGramTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:withInt:withInt:", "Lucene43NGramTokenizer", NULL, 0x1, NULL, NULL },
    { "init", "Lucene43NGramTokenizer", NULL, 0x1, NULL, NULL },
    { "init__WithInt:withInt:", "init", "V", 0x2, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "end", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MIN_NGRAM_SIZE", "DEFAULT_MIN_NGRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_DEFAULT_MIN_NGRAM_SIZE },
    { "DEFAULT_MAX_NGRAM_SIZE", "DEFAULT_MAX_NGRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_DEFAULT_MAX_NGRAM_SIZE },
    { "minGram_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxGram_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "gramSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "inLen_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "charsRead_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "inStr_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "started_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer = { 2, "Lucene43NGramTokenizer", "org.apache.lucene.analysis.ngram", NULL, 0x11, 7, methods, 12, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer;
}

@end

void OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *self, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisTokenizer_init(self);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init__WithInt_withInt_(self, minGram, maxGram);
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, initWithInt_withInt_, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithInt_withInt_(jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, initWithInt_withInt_, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init__WithInt_withInt_(self, minGram, maxGram);
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_, factory, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, initWithOrgApacheLuceneUtilAttributeFactory_withInt_withInt_, factory, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *self) {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_initWithInt_withInt_(self, OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_DEFAULT_MIN_NGRAM_SIZE, OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_DEFAULT_MAX_NGRAM_SIZE);
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, init)
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer, init)
}

void OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer_init__WithInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer *self, jint minGram, jint maxGram) {
  if (minGram < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must be greater than zero");
  }
  if (minGram > maxGram) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must not be greater than maxGram");
  }
  self->minGram_ = minGram;
  self->maxGram_ = maxGram;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramLucene43NGramTokenizer)
