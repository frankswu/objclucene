//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/ClassicAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopAnalyzer.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/standard/ClassicAnalyzer.h"
#include "org/apache/lucene/analysis/standard/ClassicFilter.h"
#include "org/apache/lucene/analysis/standard/ClassicTokenizer.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"

@interface OrgApacheLuceneAnalysisStandardClassicAnalyzer () {
 @public
  jint maxTokenLength_;
}

@end

@interface OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1 : OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents {
 @public
  OrgApacheLuceneAnalysisStandardClassicAnalyzer *this$0_;
  OrgApacheLuceneAnalysisStandardClassicTokenizer *val$src_;
}

- (void)setReaderWithJavaIoReader:(JavaIoReader *)reader;

- (instancetype)initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer:(OrgApacheLuceneAnalysisStandardClassicAnalyzer *)outer$
                   withOrgApacheLuceneAnalysisStandardClassicTokenizer:(OrgApacheLuceneAnalysisStandardClassicTokenizer *)capture$0
                                  withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)arg$0
                                withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1, this$0_, OrgApacheLuceneAnalysisStandardClassicAnalyzer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1, val$src_, OrgApacheLuceneAnalysisStandardClassicTokenizer *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1 *self, OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *arg$0, OrgApacheLuceneAnalysisTokenStream *arg$1);

__attribute__((unused)) static OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1 *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *arg$0, OrgApacheLuceneAnalysisTokenStream *arg$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisStandardClassicAnalyzer)

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET_;

@implementation OrgApacheLuceneAnalysisStandardClassicAnalyzer

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopWords {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopWords);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaIoReader:(JavaIoReader *)stopwords {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithJavaIoReader_(self, stopwords);
  return self;
}

- (void)setMaxTokenLengthWithInt:(jint)length {
  maxTokenLength_ = length;
}

- (jint)getMaxTokenLength {
  return maxTokenLength_;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisStandardClassicTokenizer *src = [new_OrgApacheLuceneAnalysisStandardClassicTokenizer_init() autorelease];
  [src setMaxTokenLengthWithInt:maxTokenLength_];
  OrgApacheLuceneAnalysisTokenStream *tok = [new_OrgApacheLuceneAnalysisStandardClassicFilter_initWithOrgApacheLuceneAnalysisTokenStream_(src) autorelease];
  tok = [new_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(tok) autorelease];
  tok = [new_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(tok, stopwords_) autorelease];
  return [new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, src, src, tok) autorelease];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisStandardClassicAnalyzer class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET_, JreLoadStatic(OrgApacheLuceneAnalysisCoreStopAnalyzer, ENGLISH_STOP_WORDS_SET_));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisStandardClassicAnalyzer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "ClassicAnalyzer", NULL, 0x1, NULL, NULL },
    { "init", "ClassicAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithJavaIoReader:", "ClassicAnalyzer", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "setMaxTokenLengthWithInt:", "setMaxTokenLength", "V", 0x1, NULL, NULL },
    { "getMaxTokenLength", NULL, "I", 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_TOKEN_LENGTH", "DEFAULT_MAX_TOKEN_LENGTH", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisStandardClassicAnalyzer_DEFAULT_MAX_TOKEN_LENGTH },
    { "maxTokenLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "STOP_WORDS_SET_", NULL, 0x19, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardClassicAnalyzer = { 2, "ClassicAnalyzer", "org.apache.lucene.analysis.standard", NULL, 0x11, 6, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisStandardClassicAnalyzer;
}

@end

void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopWords);
  self->maxTokenLength_ = OrgApacheLuceneAnalysisStandardClassicAnalyzer_DEFAULT_MAX_TOKEN_LENGTH;
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopWords) {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer *self = [OrgApacheLuceneAnalysisStandardClassicAnalyzer alloc];
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopWords);
  return self;
}

void OrgApacheLuceneAnalysisStandardClassicAnalyzer_init(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self) {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET_);
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_init() {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer *self = [OrgApacheLuceneAnalysisStandardClassicAnalyzer alloc];
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_init(self);
  return self;
}

void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithJavaIoReader_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, JavaIoReader *stopwords) {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithJavaIoReader_(stopwords));
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithJavaIoReader_(JavaIoReader *stopwords) {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer *self = [OrgApacheLuceneAnalysisStandardClassicAnalyzer alloc];
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithJavaIoReader_(self, stopwords);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisStandardClassicAnalyzer)

@implementation OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1

- (void)setReaderWithJavaIoReader:(JavaIoReader *)reader {
  [((OrgApacheLuceneAnalysisStandardClassicTokenizer *) nil_chk(val$src_)) setMaxTokenLengthWithInt:this$0_->maxTokenLength_];
  [super setReaderWithJavaIoReader:reader];
}

- (instancetype)initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer:(OrgApacheLuceneAnalysisStandardClassicAnalyzer *)outer$
                   withOrgApacheLuceneAnalysisStandardClassicTokenizer:(OrgApacheLuceneAnalysisStandardClassicTokenizer *)capture$0
                                  withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)arg$0
                                withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg$1 {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, outer$, capture$0, arg$0, arg$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$src_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setReaderWithJavaIoReader:", "setReader", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer:withOrgApacheLuceneAnalysisStandardClassicTokenizer:withOrgApacheLuceneAnalysisTokenizer:withOrgApacheLuceneAnalysisTokenStream:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.analysis.standard.ClassicAnalyzer;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$src_", NULL, 0x1012, "Lorg.apache.lucene.analysis.standard.ClassicTokenizer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneAnalysisStandardClassicAnalyzer", "createComponentsWithNSString:" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1 = { 2, "", "org.apache.lucene.analysis.standard", "ClassicAnalyzer", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1;
}

@end

void OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1 *self, OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *arg$0, OrgApacheLuceneAnalysisTokenStream *arg$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$src_, capture$0);
  OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, arg$0, arg$1);
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1 *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *arg$0, OrgApacheLuceneAnalysisTokenStream *arg$1) {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1 *self = [OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1 alloc];
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, outer$, capture$0, arg$0, arg$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisStandardClassicAnalyzer_$1)
