//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/lt/LithuanianAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/lt/LithuanianAnalyzer.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/snowball/SnowballFilter.h"
#include "org/apache/lucene/analysis/standard/StandardFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/tartarus/snowball/ext/LithuanianStemmer.h"

@interface OrgApacheLuceneAnalysisLtLithuanianAnalyzer () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisLtLithuanianAnalyzer, stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet *)

@interface OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder)

static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DEFAULT_STOPWORD_FILE_ = @"stopwords.txt";

@implementation OrgApacheLuceneAnalysisLtLithuanianAnalyzer

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisLtLithuanianAnalyzer_getDefaultStopSet();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *source = [new_OrgApacheLuceneAnalysisStandardStandardTokenizer_init() autorelease];
  OrgApacheLuceneAnalysisTokenStream *result = [new_OrgApacheLuceneAnalysisStandardStandardFilter_initWithOrgApacheLuceneAnalysisTokenStream_(source) autorelease];
  result = [new_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result) autorelease];
  result = [new_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_) autorelease];
  if (![((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(stemExclusionSet_)) isEmpty]) result = [new_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stemExclusionSet_) autorelease];
  result = [new_OrgApacheLuceneAnalysisSnowballSnowballFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgTartarusSnowballSnowballProgram_(result, [new_OrgTartarusSnowballExtLithuanianStemmer_init() autorelease]) autorelease];
  return [new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, result) autorelease];
}

- (void)dealloc {
  RELEASE_(stemExclusionSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDefaultStopSet", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, NULL, NULL },
    { "init", "LithuanianAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "LithuanianAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:withOrgApacheLuceneAnalysisUtilCharArraySet:", "LithuanianAnalyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemExclusionSet_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_STOPWORD_FILE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DEFAULT_STOPWORD_FILE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.lt.LithuanianAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisLtLithuanianAnalyzer = { 2, "LithuanianAnalyzer", "org.apache.lucene.analysis.lt", NULL, 0x11, 5, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisLtLithuanianAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisLtLithuanianAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_);
}

void OrgApacheLuceneAnalysisLtLithuanianAnalyzer_init(OrgApacheLuceneAnalysisLtLithuanianAnalyzer *self) {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_));
}

OrgApacheLuceneAnalysisLtLithuanianAnalyzer *new_OrgApacheLuceneAnalysisLtLithuanianAnalyzer_init() {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer *self = [OrgApacheLuceneAnalysisLtLithuanianAnalyzer alloc];
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_init(self);
  return self;
}

void OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisLtLithuanianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET_));
}

OrgApacheLuceneAnalysisLtLithuanianAnalyzer *new_OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer *self = [OrgApacheLuceneAnalysisLtLithuanianAnalyzer alloc];
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

void OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisLtLithuanianAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  JreStrongAssign(&self->stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stemExclusionSet)));
}

OrgApacheLuceneAnalysisLtLithuanianAnalyzer *new_OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer *self = [OrgApacheLuceneAnalysisLtLithuanianAnalyzer alloc];
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisLtLithuanianAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_, OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithBoolean_withIOSClass_withNSString_withNSString_(false, OrgApacheLuceneAnalysisLtLithuanianAnalyzer_class_(), OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DEFAULT_STOPWORD_FILE_, @"#"));
      }
      @catch (JavaIoIOException *ex) {
        @throw [new_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set") autorelease];
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOP_SET_", NULL, 0x18, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.lt", "LithuanianAnalyzer", 0xa, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder_init() {
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder *self = [OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder alloc];
  OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisLtLithuanianAnalyzer_DefaultSetHolder)
