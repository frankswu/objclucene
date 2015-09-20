//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/CapitalizationFilterFactory.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/CapitalizationFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/CapitalizationFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_ = @"keep";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_IGNORE_CASE_ = @"keepIgnoreCase";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_OK_PREFIX_ = @"okPrefix";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MIN_WORD_LENGTH_ = @"minWordLength";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_WORD_COUNT_ = @"maxWordCount";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_TOKEN_LENGTH_ = @"maxTokenLength";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_ONLY_FIRST_WORD_ = @"onlyFirstWord";
NSString *OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_FORCE_FIRST_LETTER_ = @"forceFirstLetter";

@implementation OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return [new_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_withJavaUtilCollection_withInt_withInt_withInt_(input, onlyFirstWord_, keep_, forceFirstLetter_, okPrefix_, minWordLength_, maxWordCount_, maxTokenLength_) autorelease];
}

- (void)dealloc {
  RELEASE_(keep_);
  RELEASE_(okPrefix_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "CapitalizationFilterFactory", NULL, 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.miscellaneous.CapitalizationFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "KEEP_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_, NULL, .constantValue.asLong = 0 },
    { "KEEP_IGNORE_CASE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_IGNORE_CASE_, NULL, .constantValue.asLong = 0 },
    { "OK_PREFIX_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_OK_PREFIX_, NULL, .constantValue.asLong = 0 },
    { "MIN_WORD_LENGTH_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MIN_WORD_LENGTH_, NULL, .constantValue.asLong = 0 },
    { "MAX_WORD_COUNT_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_WORD_COUNT_, NULL, .constantValue.asLong = 0 },
    { "MAX_TOKEN_LENGTH_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_TOKEN_LENGTH_, NULL, .constantValue.asLong = 0 },
    { "ONLY_FIRST_WORD_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_ONLY_FIRST_WORD_, NULL, .constantValue.asLong = 0 },
    { "FORCE_FIRST_LETTER_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_FORCE_FIRST_LETTER_, NULL, .constantValue.asLong = 0 },
    { "keep_", NULL, 0x0, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "okPrefix_", NULL, 0x0, "Ljava.util.Collection;", NULL, "Ljava/util/Collection<L[C;>;", .constantValue.asLong = 0 },
    { "minWordLength_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxWordCount_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxTokenLength_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "onlyFirstWord_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "forceFirstLetter_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory = { 2, "CapitalizationFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 2, methods, 15, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->okPrefix_, JavaUtilCollections_emptyList());
  jboolean ignoreCase = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_IGNORE_CASE_ withBoolean:false];
  id<JavaUtilSet> k = [self getSetWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_KEEP_];
  if (k != nil) {
    JreStrongAssignAndConsume(&self->keep_, new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_(10, ignoreCase));
    [self->keep_ addAllWithJavaUtilCollection:k];
  }
  k = [self getSetWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_OK_PREFIX_];
  if (k != nil) {
    JreStrongAssignAndConsume(&self->okPrefix_, new_JavaUtilArrayList_init());
    for (NSString * __strong item in k) {
      [self->okPrefix_ addWithId:[((NSString *) nil_chk(item)) toCharArray]];
    }
  }
  self->minWordLength_ = [self getIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MIN_WORD_LENGTH_ withInt:0];
  self->maxWordCount_ = [self getIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_WORD_COUNT_ withInt:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_DEFAULT_MAX_WORD_COUNT];
  self->maxTokenLength_ = [self getIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_MAX_TOKEN_LENGTH_ withInt:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilter_DEFAULT_MAX_TOKEN_LENGTH];
  self->onlyFirstWord_ = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_ONLY_FIRST_WORD_ withBoolean:true];
  self->forceFirstLetter_ = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_FORCE_FIRST_LETTER_ withBoolean:true];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory *self = [OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory alloc];
  OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousCapitalizationFilterFactory)
