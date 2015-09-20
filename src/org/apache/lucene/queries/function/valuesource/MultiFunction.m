//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/MultiFunction.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

@interface OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values () {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction *this$0_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values, this$0_, OrgApacheLuceneQueriesFunctionValuesourceMultiFunction *)

@implementation OrgApacheLuceneQueriesFunctionValuesourceMultiFunction

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)sources {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initWithJavaUtilList_(self, sources);
  return self;
}

- (NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description__ {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_description__WithNSString_withJavaUtilList_([self name], sources_);
}

+ (jboolean)allExistsWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)values {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_allExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(doc, values);
}

+ (jboolean)anyExistsWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)values {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_anyExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(doc, values);
}

+ (jboolean)allExistsWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)values1
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)values2 {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_allExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(doc, values1, values2);
}

+ (jboolean)anyExistsWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)values1
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)values2 {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_anyExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(doc, values1, values2);
}

+ (NSString *)description__WithNSString:(NSString *)name
                       withJavaUtilList:(id<JavaUtilList>)sources {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_description__WithNSString_withJavaUtilList_(name, sources);
}

+ (IOSObjectArray *)valsArrWithJavaUtilList:(id<JavaUtilList>)sources
                            withJavaUtilMap:(id<JavaUtilMap>)fcontext
  withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_valsArrWithJavaUtilList_withJavaUtilMap_withOrgApacheLuceneIndexLeafReaderContext_(sources, fcontext, readerContext);
}

+ (NSString *)toStringWithNSString:(NSString *)name
withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr
                           withInt:(jint)doc {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_toStringWithNSString_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withInt_(name, valsArr, doc);
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  for (OrgApacheLuceneQueriesFunctionValueSource * __strong source in nil_chk(sources_)) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (NSUInteger)hash {
  return ((jint) [((id<JavaUtilList>) nil_chk(sources_)) hash]) + ((jint) [((NSString *) nil_chk([self name])) hash]);
}

- (jboolean)isEqual:(id)o {
  if ([self getClass] != [nil_chk(o) getClass]) return false;
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceMultiFunction *) check_class_cast(o, [OrgApacheLuceneQueriesFunctionValuesourceMultiFunction class]);
  return [((id<JavaUtilList>) nil_chk(self->sources_)) isEqual:other->sources_];
}

- (void)dealloc {
  RELEASE_(sources_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:", "MultiFunction", NULL, 0x1, NULL, NULL },
    { "name", NULL, "Ljava.lang.String;", 0x404, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "allExistsWithInt:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:", "allExists", "Z", 0x9, NULL, NULL },
    { "anyExistsWithInt:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:", "anyExists", "Z", 0x9, NULL, NULL },
    { "allExistsWithInt:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:", "allExists", "Z", 0x9, NULL, NULL },
    { "anyExistsWithInt:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:", "anyExists", "Z", 0x9, NULL, NULL },
    { "description__WithNSString:withJavaUtilList:", "description", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "valsArrWithJavaUtilList:withJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "valsArr", "[Lorg.apache.lucene.queries.function.FunctionValues;", 0x9, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:withInt:", "toString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:", "createWeight", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sources_", NULL, 0x14, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/queries/function/ValueSource;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.queries.function.valuesource.MultiFunction$Values;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceMultiFunction = { 2, "MultiFunction", "org.apache.lucene.queries.function.valuesource", NULL, 0x401, 13, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceMultiFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initWithJavaUtilList_(OrgApacheLuceneQueriesFunctionValuesourceMultiFunction *self, id<JavaUtilList> sources) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->sources_, sources);
}

jboolean OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_allExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(jint doc, IOSObjectArray *values) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initialize();
  {
    IOSObjectArray *a__ = values;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionFunctionValues *v = *b__++;
      if (![((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(v)) existsWithInt:doc]) {
        return false;
      }
    }
  }
  return true;
}

jboolean OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_anyExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(jint doc, IOSObjectArray *values) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initialize();
  {
    IOSObjectArray *a__ = values;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionFunctionValues *v = *b__++;
      if ([((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(v)) existsWithInt:doc]) {
        return true;
      }
    }
  }
  return false;
}

jboolean OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_allExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(jint doc, OrgApacheLuceneQueriesFunctionFunctionValues *values1, OrgApacheLuceneQueriesFunctionFunctionValues *values2) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initialize();
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(values1)) existsWithInt:doc] && [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(values2)) existsWithInt:doc];
}

jboolean OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_anyExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(jint doc, OrgApacheLuceneQueriesFunctionFunctionValues *values1, OrgApacheLuceneQueriesFunctionFunctionValues *values2) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initialize();
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(values1)) existsWithInt:doc] || [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(values2)) existsWithInt:doc];
}

NSString *OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_description__WithNSString_withJavaUtilList_(NSString *name, id<JavaUtilList> sources) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initialize();
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:name])) appendWithChar:'('];
  jboolean firstTime = true;
  for (OrgApacheLuceneQueriesFunctionValueSource * __strong source in nil_chk(sources)) {
    if (firstTime) {
      firstTime = false;
    }
    else {
      [sb appendWithChar:','];
    }
    [sb appendWithId:source];
  }
  [sb appendWithChar:')'];
  return [sb description];
}

IOSObjectArray *OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_valsArrWithJavaUtilList_withJavaUtilMap_withOrgApacheLuceneIndexLeafReaderContext_(id<JavaUtilList> sources, id<JavaUtilMap> fcontext, OrgApacheLuceneIndexLeafReaderContext *readerContext) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initialize();
  IOSObjectArray *valsArr = [IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(sources)) size] type:OrgApacheLuceneQueriesFunctionFunctionValues_class_()];
  jint i = 0;
  for (OrgApacheLuceneQueriesFunctionValueSource * __strong source in sources) {
    IOSObjectArray_Set(valsArr, i++, [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source)) getValuesWithJavaUtilMap:fcontext withOrgApacheLuceneIndexLeafReaderContext:readerContext]);
  }
  return valsArr;
}

NSString *OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_toStringWithNSString_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withInt_(NSString *name, IOSObjectArray *valsArr, jint doc) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_initialize();
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:name])) appendWithChar:'('];
  jboolean firstTime = true;
  {
    IOSObjectArray *a__ = valsArr;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneQueriesFunctionFunctionValues * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneQueriesFunctionFunctionValues *vals = *b__++;
      if (firstTime) {
        firstTime = false;
      }
      else {
        [sb appendWithChar:','];
      }
      [sb appendWithNSString:[((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) toStringWithInt:doc]];
    }
  }
  [sb appendWithChar:')'];
  return [sb description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceMultiFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFunction:(OrgApacheLuceneQueriesFunctionValuesourceMultiFunction *)outer$
                         withOrgApacheLuceneQueriesFunctionFunctionValuesArray:(IOSObjectArray *)valsArr {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, outer$, valsArr);
  return self;
}

- (NSString *)toStringWithInt:(jint)doc {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_toStringWithNSString_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_withInt_([this$0_ name], valsArr_, doc);
}

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller {
  return [super getValueFiller];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(valsArr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFunction:withOrgApacheLuceneQueriesFunctionFunctionValuesArray:", "Values", NULL, 0x1, NULL, NULL },
    { "toStringWithInt:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValueFiller", NULL, "Lorg.apache.lucene.queries.function.FunctionValues$ValueFiller;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.valuesource.MultiFunction;", NULL, NULL, .constantValue.asLong = 0 },
    { "valsArr_", NULL, 0x10, "[Lorg.apache.lucene.queries.function.FunctionValues;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values = { 2, "Values", "org.apache.lucene.queries.function.valuesource", "MultiFunction", 0x1, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values *self, OrgApacheLuceneQueriesFunctionValuesourceMultiFunction *outer$, IOSObjectArray *valsArr) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneQueriesFunctionFunctionValues_init(self);
  JreStrongAssign(&self->valsArr_, valsArr);
}

OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values *new_OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(OrgApacheLuceneQueriesFunctionValuesourceMultiFunction *outer$, IOSObjectArray *valsArr) {
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values *self = [OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values alloc];
  OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values_initWithOrgApacheLuceneQueriesFunctionValuesourceMultiFunction_withOrgApacheLuceneQueriesFunctionFunctionValuesArray_(self, outer$, valsArr);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_Values)
