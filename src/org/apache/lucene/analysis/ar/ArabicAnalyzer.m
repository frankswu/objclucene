//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ar/ArabicAnalyzer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/ar/ArabicAnalyzer.h"
#include "org/apache/lucene/analysis/ar/ArabicNormalizationFilter.h"
#include "org/apache/lucene/analysis/ar/ArabicStemFilter.h"
#include "org/apache/lucene/analysis/core/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/analysis/standard/std40/StandardTokenizer40.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisArArabicAnalyzer () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisArArabicAnalyzer, stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet *)

@interface OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder)

static OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_, OrgApacheLuceneAnalysisUtilCharArraySet *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisArArabicAnalyzer_DEFAULT_STOPWORD_FILE_ = @"stopwords.txt";

@implementation OrgApacheLuceneAnalysisArArabicAnalyzer

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)getDefaultStopSet {
  return OrgApacheLuceneAnalysisArArabicAnalyzer_getDefaultStopSet();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisArArabicAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords
                    withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stemExclusionSet {
  OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *source;
  if ([((OrgApacheLuceneUtilVersion *) nil_chk([self getVersion])) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_7_0_)]) {
    source = [new_OrgApacheLuceneAnalysisStandardStandardTokenizer_init() autorelease];
  }
  else {
    source = [new_OrgApacheLuceneAnalysisStandardStd40StandardTokenizer40_init() autorelease];
  }
  OrgApacheLuceneAnalysisTokenStream *result = [new_OrgApacheLuceneAnalysisCoreLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(source) autorelease];
  result = [new_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stopwords_) autorelease];
  result = [new_OrgApacheLuceneAnalysisArArabicNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result) autorelease];
  if (![((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(stemExclusionSet_)) isEmpty]) {
    result = [new_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(result, stemExclusionSet_) autorelease];
  }
  return [new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, [new_OrgApacheLuceneAnalysisArArabicStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(result) autorelease]) autorelease];
}

- (void)dealloc {
  RELEASE_(stemExclusionSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDefaultStopSet", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x9, NULL, NULL },
    { "init", "ArabicAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "ArabicAnalyzer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:withOrgApacheLuceneAnalysisUtilCharArraySet:", "ArabicAnalyzer", NULL, 0x1, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOPWORD_FILE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisArArabicAnalyzer_DEFAULT_STOPWORD_FILE_, NULL, .constantValue.asLong = 0 },
    { "stemExclusionSet_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.ar.ArabicAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisArArabicAnalyzer = { 2, "ArabicAnalyzer", "org.apache.lucene.analysis.ar", NULL, 0x11, 5, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisArArabicAnalyzer;
}

@end

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisArArabicAnalyzer_getDefaultStopSet() {
  OrgApacheLuceneAnalysisArArabicAnalyzer_initialize();
  return JreLoadStatic(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_);
}

void OrgApacheLuceneAnalysisArArabicAnalyzer_init(OrgApacheLuceneAnalysisArArabicAnalyzer *self) {
  OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, JreLoadStatic(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder, DEFAULT_STOP_SET_));
}

OrgApacheLuceneAnalysisArArabicAnalyzer *new_OrgApacheLuceneAnalysisArArabicAnalyzer_init() {
  OrgApacheLuceneAnalysisArArabicAnalyzer *self = [OrgApacheLuceneAnalysisArArabicAnalyzer alloc];
  OrgApacheLuceneAnalysisArArabicAnalyzer_init(self);
  return self;
}

void OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisArArabicAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET_));
}

OrgApacheLuceneAnalysisArArabicAnalyzer *new_OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisArArabicAnalyzer *self = [OrgApacheLuceneAnalysisArArabicAnalyzer alloc];
  OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

void OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisArArabicAnalyzer *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  JreStrongAssign(&self->stemExclusionSet_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stemExclusionSet)));
}

OrgApacheLuceneAnalysisArArabicAnalyzer *new_OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *stopwords, OrgApacheLuceneAnalysisUtilCharArraySet *stemExclusionSet) {
  OrgApacheLuceneAnalysisArArabicAnalyzer *self = [OrgApacheLuceneAnalysisArArabicAnalyzer alloc];
  OrgApacheLuceneAnalysisArArabicAnalyzer_initWithOrgApacheLuceneAnalysisUtilCharArraySet_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords, stemExclusionSet);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisArArabicAnalyzer)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder)

@implementation OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder class]) {
    {
      @try {
        JreStrongAssign(&OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_, OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithBoolean_withIOSClass_withNSString_withNSString_(false, OrgApacheLuceneAnalysisArArabicAnalyzer_class_(), OrgApacheLuceneAnalysisArArabicAnalyzer_DEFAULT_STOPWORD_FILE_, @"#"));
      }
      @catch (JavaIoIOException *ex) {
        @throw [new_JavaLangRuntimeException_initWithNSString_(@"Unable to load default stopword set") autorelease];
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOP_SET_", NULL, 0x18, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder_DEFAULT_STOP_SET_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.ar", "ArabicAnalyzer", 0xa, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder_init() {
  OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder *self = [OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder alloc];
  OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisArArabicAnalyzer_DefaultSetHolder)
