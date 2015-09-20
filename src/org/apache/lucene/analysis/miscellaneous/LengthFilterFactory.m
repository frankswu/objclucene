//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LengthFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/LengthFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/LengthFilterFactory.h"
#include "org/apache/lucene/analysis/miscellaneous/Lucene43LengthFilter.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory () {
 @public
  jboolean enablePositionIncrements_;
}

@end

NSString *OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_MIN_KEY_ = @"min";
NSString *OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_MAX_KEY_ = @"max";

@implementation OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0_)]) {
    return [new_OrgApacheLuceneAnalysisMiscellaneousLengthFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(input, min_, max_) autorelease];
  }
  else {
    OrgApacheLuceneAnalysisTokenFilter *filter = [new_OrgApacheLuceneAnalysisMiscellaneousLucene43LengthFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(enablePositionIncrements_, input, min_, max_) autorelease];
    return filter;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "LengthFilterFactory", NULL, 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "min_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "max_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "MIN_KEY_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_MIN_KEY_, NULL, .constantValue.asLong = 0 },
    { "MAX_KEY_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_MAX_KEY_, NULL, .constantValue.asLong = 0 },
    { "enablePositionIncrements_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory = { 2, "LengthFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 2, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  self->min_ = [self requireIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_MIN_KEY_];
  self->max_ = [self requireIntWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_MAX_KEY_];
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(self->luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_5_0_0_)] == false) {
    jboolean defaultValue = [self->luceneMatchVersion_ onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0_)];
    self->enablePositionIncrements_ = [self getBooleanWithJavaUtilMap:args withNSString:@"enablePositionIncrements" withBoolean:defaultValue];
    if (self->enablePositionIncrements_ == false && [self->luceneMatchVersion_ onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0_)]) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"enablePositionIncrements=false is not supported anymore as of Lucene 4.4") autorelease];
    }
  }
  else if ([((id<JavaUtilMap>) nil_chk(args)) containsKeyWithId:@"enablePositionIncrements"]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"enablePositionIncrements is not a valid option as of Lucene 5.0") autorelease];
  }
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory *self = [OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory alloc];
  OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousLengthFilterFactory)
