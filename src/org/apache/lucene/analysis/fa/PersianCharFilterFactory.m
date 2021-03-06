//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fa/PersianCharFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/CharFilter.h"
#include "org/apache/lucene/analysis/fa/PersianCharFilter.h"
#include "org/apache/lucene/analysis/fa/PersianCharFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"

@implementation OrgApacheLuceneAnalysisFaPersianCharFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisFaPersianCharFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisCharFilter *)createWithJavaIoReader:(JavaIoReader *)input {
  return create_OrgApacheLuceneAnalysisFaPersianCharFilter_initWithJavaIoReader_(input);
}

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "PersianCharFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithJavaIoReader:", "create", "Lorg.apache.lucene.analysis.CharFilter;", 0x1, NULL, NULL },
    { "getMultiTermComponent", NULL, "Lorg.apache.lucene.analysis.util.AbstractAnalysisFactory;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFaPersianCharFilterFactory = { 2, "PersianCharFilterFactory", "org.apache.lucene.analysis.fa", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisFaPersianCharFilterFactory;
}

@end

void OrgApacheLuceneAnalysisFaPersianCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisFaPersianCharFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilCharFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisFaPersianCharFilterFactory *new_OrgApacheLuceneAnalysisFaPersianCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisFaPersianCharFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisFaPersianCharFilterFactory *create_OrgApacheLuceneAnalysisFaPersianCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisFaPersianCharFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFaPersianCharFilterFactory)
