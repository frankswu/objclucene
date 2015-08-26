//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/DualFloatFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/FloatDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/DualFloatFunction.h"
#include "org/apache/lucene/queries/function/valuesource/MultiFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

@interface OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1 : OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *this$0_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$aVals_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$bVals_;
}

- (jfloat)floatValWithInt:(jint)doc;

- (jboolean)existsWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *)outer$
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$1
                                     withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1, this$0_, OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1, val$aVals_, OrgApacheLuceneQueriesFunctionFunctionValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1, val$bVals_, OrgApacheLuceneQueriesFunctionFunctionValues *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)a
                    withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)b {
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(self, a, b);
  return self;
}

- (NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jfloat)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)aVals
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)bVals {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description__ {
  return JreStrcat("$C$C$C", [self name], '(', [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(a_)) description__], ',', [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(b_)) description__], ')');
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneQueriesFunctionFunctionValues *aVals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(a_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  OrgApacheLuceneQueriesFunctionFunctionValues *bVals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(b_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  return [new_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, aVals, bVals, self) autorelease];
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(a_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(b_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (NSUInteger)hash {
  jint h = ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(a_)) hash]);
  h ^= (JreLShift32(h, 13)) | (JreURShift32(h, 20));
  h += ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(b_)) hash]);
  h ^= (JreLShift32(h, 23)) | (JreURShift32(h, 10));
  h += ((jint) [((NSString *) nil_chk([self name])) hash]);
  return h;
}

- (jboolean)isEqual:(id)o {
  if ([self getClass] != [nil_chk(o) getClass]) return NO;
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *) check_class_cast(o, [OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction class]);
  return [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->a_)) isEqual:other->a_] && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->b_)) isEqual:other->b_];
}

- (void)dealloc {
  RELEASE_(a_);
  RELEASE_(b_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withOrgApacheLuceneQueriesFunctionValueSource:", "DualFloatFunction", NULL, 0x1, NULL, NULL },
    { "name", NULL, "Ljava.lang.String;", 0x404, NULL, NULL },
    { "funcWithInt:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:", "func", "F", 0x404, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:", "createWeight", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "a_", NULL, 0x14, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "b_", NULL, 0x14, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction = { 2, "DualFloatFunction", "org.apache.lucene.queries.function.valuesource", NULL, 0x401, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *a, OrgApacheLuceneQueriesFunctionValueSource *b) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->a_, a);
  JreStrongAssign(&self->b_, b);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1

- (jfloat)floatValWithInt:(jint)doc {
  return [this$0_ funcWithInt:doc withOrgApacheLuceneQueriesFunctionFunctionValues:val$aVals_ withOrgApacheLuceneQueriesFunctionFunctionValues:val$bVals_];
}

- (jboolean)existsWithInt:(jint)doc {
  return OrgApacheLuceneQueriesFunctionValuesourceMultiFunction_allExistsWithInt_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_(doc, val$aVals_, val$bVals_);
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("$C$C$C", [this$0_ name], '(', [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$aVals_)) toStringWithInt:doc], ',', [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$bVals_)) toStringWithInt:doc], ')');
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *)outer$
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                  withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$1
                                     withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0 {
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$aVals_);
  RELEASE_(val$bVals_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "floatValWithInt:", "floatVal", "F", 0x1, NULL, NULL },
    { "existsWithInt:", "exists", "Z", 0x1, NULL, NULL },
    { "toStringWithInt:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionValueSource:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.valuesource.DualFloatFunction;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$aVals_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.FunctionValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$bVals_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.FunctionValues;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "DualFloatFunction", 0x8008, 4, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$aVals_, capture$0);
  JreStrongAssign(&self->val$bVals_, capture$1);
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, arg$0);
}

OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionFunctionValues *capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1 *self = [OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1 alloc];
  OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDualFloatFunction_$1)