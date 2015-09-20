//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/CapitalizationFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/CapitalizationFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter () {
 @public
  jboolean onlyFirstWord_;
  OrgApacheLuceneAnalysisUtilCharArraySet *keep_;
  jboolean forceFirstLetter_;
  id<JavaUtilCollection> okPrefix_;
  jint minWordLength_;
  jint maxWordCount_;
  jint maxTokenLength_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

- (void)processWordWithCharArray:(IOSCharArray *)buffer
                         withInt:(jint)offset
                         withInt:(jint)length
                         withInt:(jint)wordCount;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter, keep_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter, okPrefix_, id<JavaUtilCollection>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

__attribute__((unused)) static void OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_processWordWithCharArray_withInt_withInt_withInt_(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *self, IOSCharArray *buffer, jint offset, jint length, jint wordCount);

@implementation OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg {
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                               withBoolean:(jboolean)onlyFirstWord
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)keep
                                               withBoolean:(jboolean)forceFirstLetter
                                    withJavaUtilCollection:(id<JavaUtilCollection>)okPrefix
                                                   withInt:(jint)minWordLength
                                                   withInt:(jint)maxWordCount
                                                   withInt:(jint)maxTokenLength {
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_withJavaUtilCollection_withInt_withInt_withInt_(self, inArg, onlyFirstWord, keep, forceFirstLetter, okPrefix, minWordLength, maxWordCount, maxTokenLength);
  return self;
}

- (jboolean)incrementToken {
  if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) return false;
  IOSCharArray *termBuffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
  jint termBufferLength = [termAtt_ length];
  IOSCharArray *backup = nil;
  if (maxWordCount_ < OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_DEFAULT_MAX_WORD_COUNT) {
    backup = [IOSCharArray arrayWithLength:termBufferLength];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(termBuffer, 0, backup, 0, termBufferLength);
  }
  if (termBufferLength < maxTokenLength_) {
    jint wordCount = 0;
    jint lastWordStart = 0;
    for (jint i = 0; i < termBufferLength; i++) {
      jchar c = IOSCharArray_Get(nil_chk(termBuffer), i);
      if (c <= ' ' || c == '.') {
        jint len = i - lastWordStart;
        if (len > 0) {
          OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_processWordWithCharArray_withInt_withInt_withInt_(self, termBuffer, lastWordStart, len, wordCount++);
          lastWordStart = i + 1;
          i++;
        }
      }
    }
    if (lastWordStart < termBufferLength) {
      OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_processWordWithCharArray_withInt_withInt_withInt_(self, termBuffer, lastWordStart, termBufferLength - lastWordStart, wordCount++);
    }
    if (wordCount > maxWordCount_) {
      [termAtt_ copyBufferWithCharArray:backup withInt:0 withInt:termBufferLength];
    }
  }
  return true;
}

- (void)processWordWithCharArray:(IOSCharArray *)buffer
                         withInt:(jint)offset
                         withInt:(jint)length
                         withInt:(jint)wordCount {
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_processWordWithCharArray_withInt_withInt_withInt_(self, buffer, offset, length, wordCount);
}

- (void)dealloc {
  RELEASE_(keep_);
  RELEASE_(okPrefix_);
  RELEASE_(termAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "CapitalizationFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withBoolean:withOrgApacheLuceneAnalysisUtilCharArraySet:withBoolean:withJavaUtilCollection:withInt:withInt:withInt:", "CapitalizationFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "processWordWithCharArray:withInt:withInt:withInt:", "processWord", "V", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_WORD_COUNT", "DEFAULT_MAX_WORD_COUNT", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_DEFAULT_MAX_WORD_COUNT },
    { "DEFAULT_MAX_TOKEN_LENGTH", "DEFAULT_MAX_TOKEN_LENGTH", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_DEFAULT_MAX_TOKEN_LENGTH },
    { "onlyFirstWord_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "keep_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "forceFirstLetter_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "okPrefix_", NULL, 0x12, "Ljava.util.Collection;", NULL, "Ljava/util/Collection<L[C;>;", .constantValue.asLong = 0 },
    { "minWordLength_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxWordCount_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxTokenLength_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter = { 2, "CapitalizationFilter", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 4, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_withJavaUtilCollection_withInt_withInt_withInt_(self, inArg, true, nil, true, nil, 0, OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_DEFAULT_MAX_WORD_COUNT, OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_DEFAULT_MAX_TOKEN_LENGTH);
}

OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *new_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *self = [OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter alloc];
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

void OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_withJavaUtilCollection_withInt_withInt_withInt_(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jboolean onlyFirstWord, OrgApacheLuceneAnalysisUtilCharArraySet *keep, jboolean forceFirstLetter, id<JavaUtilCollection> okPrefix, jint minWordLength, jint maxWordCount, jint maxTokenLength) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  self->onlyFirstWord_ = onlyFirstWord;
  JreStrongAssign(&self->keep_, keep);
  self->forceFirstLetter_ = forceFirstLetter;
  JreStrongAssign(&self->okPrefix_, okPrefix);
  if (minWordLength < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"minWordLength must be greater than or equal to zero") autorelease];
  }
  if (maxWordCount < 1) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"maxWordCount must be greater than zero") autorelease];
  }
  if (maxTokenLength < 1) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"maxTokenLength must be greater than zero") autorelease];
  }
  self->minWordLength_ = minWordLength;
  self->maxWordCount_ = maxWordCount;
  self->maxTokenLength_ = maxTokenLength;
}

OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *new_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_withJavaUtilCollection_withInt_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jboolean onlyFirstWord, OrgApacheLuceneAnalysisUtilCharArraySet *keep, jboolean forceFirstLetter, id<JavaUtilCollection> okPrefix, jint minWordLength, jint maxWordCount, jint maxTokenLength) {
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *self = [OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter alloc];
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_withJavaUtilCollection_withInt_withInt_withInt_(self, inArg, onlyFirstWord, keep, forceFirstLetter, okPrefix, minWordLength, maxWordCount, maxTokenLength);
  return self;
}

void OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_processWordWithCharArray_withInt_withInt_withInt_(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *self, IOSCharArray *buffer, jint offset, jint length, jint wordCount) {
  if (length < 1) {
    return;
  }
  if (self->onlyFirstWord_ && wordCount > 0) {
    for (jint i = 0; i < length; i++) {
      *IOSCharArray_GetRef(nil_chk(buffer), offset + i) = JavaLangCharacter_toLowerCaseWithChar_(IOSCharArray_Get(buffer, offset + i));
    }
    return;
  }
  if (self->keep_ != nil && [self->keep_ containsWithCharArray:buffer withInt:offset withInt:length]) {
    if (wordCount == 0 && self->forceFirstLetter_) {
      *IOSCharArray_GetRef(nil_chk(buffer), offset) = JavaLangCharacter_toUpperCaseWithChar_(IOSCharArray_Get(buffer, offset));
    }
    return;
  }
  if (length < self->minWordLength_) {
    return;
  }
  if (self->okPrefix_ != nil) {
    for (IOSCharArray * __strong prefix in self->okPrefix_) {
      if (length >= ((IOSCharArray *) nil_chk(prefix))->size_) {
        jboolean match = true;
        for (jint i = 0; i < prefix->size_; i++) {
          if (IOSCharArray_Get(prefix, i) != IOSCharArray_Get(nil_chk(buffer), offset + i)) {
            match = false;
            break;
          }
        }
        if (match == true) {
          return;
        }
      }
    }
  }
  *IOSCharArray_GetRef(nil_chk(buffer), offset) = JavaLangCharacter_toUpperCaseWithChar_(IOSCharArray_Get(buffer, offset));
  for (jint i = 1; i < length; i++) {
    *IOSCharArray_GetRef(buffer, offset + i) = JavaLangCharacter_toLowerCaseWithChar_(IOSCharArray_Get(buffer, offset + i));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter)
