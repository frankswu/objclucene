//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/DoubleConstValueSource.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/DoubleDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/ConstNumberSource.h"
#include "org/apache/lucene/queries/function/valuesource/DoubleConstValueSource.h"

@interface OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource () {
 @public
  jfloat fv_;
  jlong lv_;
}

@end

@interface OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1 : OrgApacheLuceneQueriesFunctionDocvaluesDoubleDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *this$0_;
}

- (jfloat)floatValWithInt:(jint)doc;

- (jint)intValWithInt:(jint)doc;

- (jlong)longValWithInt:(jint)doc;

- (jdouble)doubleValWithInt:(jint)doc;

- (NSString *)strValWithInt:(jint)doc;

- (id)objectValWithInt:(jint)doc;

- (NSString *)toStringWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource:(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *)outer$
                                          withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1, this$0_, OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *outer$, OrgApacheLuceneQueriesFunctionValueSource *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *outer$, OrgApacheLuceneQueriesFunctionValueSource *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource

- (instancetype)initWithDouble:(jdouble)constant {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_initWithDouble_(self, constant);
  return self;
}

- (NSString *)description__ {
  return JreStrcat("$DC", @"const(", constant_, ')');
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  return [new_OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(self, self) autorelease];
}

- (NSUInteger)hash {
  jlong bits = JavaLangDouble_doubleToRawLongBitsWithDouble_(constant_);
  return (jint) (bits ^ (JreURShift64(bits, 32)));
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource class]])) return false;
  OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *other = (OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *) check_class_cast(o, [OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource class]);
  return self->constant_ == ((OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *) nil_chk(other))->constant_;
}

- (jint)getInt {
  return (jint) lv_;
}

- (jlong)getLong {
  return lv_;
}

- (jfloat)getFloat {
  return fv_;
}

- (jdouble)getDouble {
  return constant_;
}

- (NSNumber *)getNumber {
  return JavaLangDouble_valueOfWithDouble_(constant_);
}

- (jboolean)getBool {
  return constant_ != 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithDouble:", "DoubleConstValueSource", NULL, 0x1, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "getInt", NULL, "I", 0x1, NULL, NULL },
    { "getLong", NULL, "J", 0x1, NULL, NULL },
    { "getFloat", NULL, "F", 0x1, NULL, NULL },
    { "getDouble", NULL, "D", 0x1, NULL, NULL },
    { "getNumber", NULL, "Ljava.lang.Number;", 0x1, NULL, NULL },
    { "getBool", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "constant_", NULL, 0x10, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "fv_", NULL, 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "lv_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource = { 2, "DoubleConstValueSource", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 11, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_initWithDouble_(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *self, jdouble constant) {
  OrgApacheLuceneQueriesFunctionValuesourceConstNumberSource_init(self);
  self->constant_ = constant;
  self->fv_ = (jfloat) constant;
  self->lv_ = JreFpToLong(constant);
}

OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_initWithDouble_(jdouble constant) {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *self = [OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource alloc];
  OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_initWithDouble_(self, constant);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource)

@implementation OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1

- (jfloat)floatValWithInt:(jint)doc {
  return this$0_->fv_;
}

- (jint)intValWithInt:(jint)doc {
  return (jint) this$0_->lv_;
}

- (jlong)longValWithInt:(jint)doc {
  return this$0_->lv_;
}

- (jdouble)doubleValWithInt:(jint)doc {
  return this$0_->constant_;
}

- (NSString *)strValWithInt:(jint)doc {
  return JavaLangDouble_toStringWithDouble_(this$0_->constant_);
}

- (id)objectValWithInt:(jint)doc {
  return JavaLangDouble_valueOfWithDouble_(this$0_->constant_);
}

- (NSString *)toStringWithInt:(jint)doc {
  return [this$0_ description__];
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource:(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *)outer$
                                          withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0 {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "floatValWithInt:", "floatVal", "F", 0x1, NULL, NULL },
    { "intValWithInt:", "intVal", "I", 0x1, NULL, NULL },
    { "longValWithInt:", "longVal", "J", 0x1, NULL, NULL },
    { "doubleValWithInt:", "doubleVal", "D", 0x1, NULL, NULL },
    { "strValWithInt:", "strVal", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "objectValWithInt:", "objectVal", "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "toStringWithInt:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource:withOrgApacheLuceneQueriesFunctionValueSource:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.valuesource.DoubleConstValueSource;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "DoubleConstValueSource", 0x8008, 8, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *outer$, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneQueriesFunctionDocvaluesDoubleDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, arg$0);
}

OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource *outer$, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1 *self = [OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1 alloc];
  OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceDoubleConstValueSource_$1)
