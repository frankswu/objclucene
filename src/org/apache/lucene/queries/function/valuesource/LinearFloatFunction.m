//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/LinearFloatFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/FloatDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/LinearFloatFunction.h"
#include "org/apache/lucene/search/IndexSearcher.h"

@interface OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1 : OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *this$0_;
  OrgApacheLuceneQueriesFunctionFunctionValues *val$vals_;
}

- (jfloat)floatValWithInt:(jint)doc;

- (jboolean)existsWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *)outer$
                                    withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                       withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1, this$0_, OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1, val$vals_, OrgApacheLuceneQueriesFunctionFunctionValues *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1)

@implementation OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source
                                                        withFloat:(jfloat)slope
                                                        withFloat:(jfloat)intercept {
  OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(self, source, slope, intercept);
  return self;
}

- (NSString *)description__ {
  return JreStrcat("F$$$F", slope_, @"*float(", [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) description__], @")+", intercept_);
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneQueriesFunctionFunctionValues *vals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) getValuesWithJavaUtilMap:context withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  return [new_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, vals, self) autorelease];
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) createWeightWithJavaUtilMap:context withOrgApacheLuceneSearchIndexSearcher:searcher];
}

- (NSUInteger)hash {
  jint h = JavaLangFloat_floatToIntBitsWithFloat_(slope_);
  h = (JreURShift32(h, 2)) | (JreLShift32(h, 30));
  h += JavaLangFloat_floatToIntBitsWithFloat_(intercept_);
  h ^= (JreLShift32(h, 14)) | (JreURShift32(h, 19));
  return h + ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(source_)) hash]);
}

- (jboolean)isEqual:(id)o {
  if (OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_class_() != [nil_chk(o) getClass]) return NO;
  OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *other = (OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *) check_class_cast(o, [OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction class]);
  return self->slope_ == other->slope_ && self->intercept_ == other->intercept_ && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->source_)) isEqual:other->source_];
}

- (void)dealloc {
  RELEASE_(source_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withFloat:withFloat:", "LinearFloatFunction", NULL, 0x1, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:", "createWeight", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "source_", NULL, 0x14, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "slope_", NULL, 0x14, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "intercept_", NULL, 0x14, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction = { 2, "LinearFloatFunction", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 6, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source, jfloat slope, jfloat intercept) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->source_, source);
  self->slope_ = slope;
  self->intercept_ = intercept;
}

OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *new_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(OrgApacheLuceneQueriesFunctionValueSource *source, jfloat slope, jfloat intercept) {
  OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *self = [OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction alloc];
  OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_withFloat_withFloat_(self, source, slope, intercept);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction)

@implementation OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1

- (jfloat)floatValWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) floatValWithInt:doc] * this$0_->slope_ + this$0_->intercept_;
}

- (jboolean)existsWithInt:(jint)doc {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) existsWithInt:doc];
}

- (NSString *)toStringWithInt:(jint)doc {
  return JreStrcat("F$$$F", this$0_->slope_, @"*float(", [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(val$vals_)) toStringWithInt:doc], @")+", this$0_->intercept_);
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction:(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *)outer$
                                    withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)capture$0
                                       withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0 {
  OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$vals_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "floatValWithInt:", "floatVal", "F", 0x1, NULL, NULL },
    { "existsWithInt:", "exists", "Z", 0x1, NULL, NULL },
    { "toStringWithInt:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction:withOrgApacheLuceneQueriesFunctionFunctionValues:withOrgApacheLuceneQueriesFunctionValueSource:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.valuesource.LinearFloatFunction;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$vals_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.FunctionValues;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "LinearFloatFunction", 0x8008, 4, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$vals_, capture$0);
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, arg$0);
}

OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction *outer$, OrgApacheLuceneQueriesFunctionFunctionValues *capture$0, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1 *self = [OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1 alloc];
  OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_withOrgApacheLuceneQueriesFunctionFunctionValues_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceLinearFloatFunction_$1)