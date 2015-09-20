//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/analyzing/SuggestStopFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/search/suggest/analyzing/SuggestStopFilter.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  OrgApacheLuceneAnalysisUtilCharArraySet *stopWords_;
  OrgApacheLuceneUtilAttributeSource_State *endState_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter, posIncAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter, keywordAtt_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter, stopWords_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter, endState_, OrgApacheLuceneUtilAttributeSource_State *)

@implementation OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopWords {
  OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, stopWords);
  return self;
}

- (void)reset {
  [super reset];
  JreStrongAssign(&endState_, nil);
}

- (void)end {
  if (endState_ == nil) {
    [super end];
  }
  else {
    [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:endState_];
  }
}

- (jboolean)incrementToken {
  if (endState_ != nil) {
    return false;
  }
  if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    return false;
  }
  jint skippedPositions = 0;
  while (true) {
    if ([((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(stopWords_)) containsWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:0 withInt:[termAtt_ length]]) {
      jint posInc = [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt_)) getPositionIncrement];
      jint endOffset = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) endOffset];
      OrgApacheLuceneUtilAttributeSource_State *sav = [self captureState];
      if ([input_ incrementToken]) {
        skippedPositions += posInc;
      }
      else {
        [self clearAttributes];
        [input_ end];
        JreStrongAssign(&endState_, [self captureState]);
        jint finalEndOffset = [offsetAtt_ endOffset];
        JreAssert((finalEndOffset >= endOffset), (@"org/apache/lucene/search/suggest/analyzing/SuggestStopFilter.java:103 condition failed: assert finalEndOffset >= endOffset;"));
        if (finalEndOffset > endOffset) {
          return false;
        }
        else {
          [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:sav];
          [posIncAtt_ setPositionIncrementWithInt:skippedPositions + [posIncAtt_ getPositionIncrement]];
          [((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAtt_)) setKeywordWithBoolean:true];
          return true;
        }
      }
    }
    else {
      [posIncAtt_ setPositionIncrementWithInt:skippedPositions + [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt_)) getPositionIncrement]];
      return true;
    }
  }
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(posIncAtt_);
  RELEASE_(keywordAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(stopWords_);
  RELEASE_(endState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:", "SuggestStopFilter", NULL, 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "end", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "keywordAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.KeywordAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "stopWords_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "endState_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter = { 2, "SuggestStopFilter", "org.apache.lucene.search.suggest.analyzing", NULL, 0x11, 4, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter;
}

@end

void OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->posIncAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssign(&self->keywordAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->stopWords_, stopWords);
}

OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter *new_OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) {
  OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter *self = [OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter alloc];
  OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, stopWords);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestAnalyzingSuggestStopFilter)
