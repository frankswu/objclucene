//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/IntFieldSource.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/IntDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/FieldCacheSource.h"
#include "org/apache/lucene/queries/function/valuesource/IntFieldSource.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueInt.h"

@interface OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 : OrgApacheLuceneQueriesFunctionDocvaluesIntDocValues {
 @public
  OrgApacheLuceneUtilMutableMutableValueInt *val_;
  OrgApacheLuceneIndexNumericDocValues *val$arr_;
  id<OrgApacheLuceneUtilBits> val$valid_;
}

- (jint)intValWithInt:(jint)doc;

- (NSString *)strValWithInt:(jint)doc;

- (jboolean)existsWithInt:(jint)doc;

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller;

- (instancetype)initWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)capture$0
                                 withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$1
               withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1, val_, OrgApacheLuceneUtilMutableMutableValueInt *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1, val$arr_, OrgApacheLuceneIndexNumericDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1, val$valid_, id<OrgApacheLuceneUtilBits>)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *self, OrgApacheLuceneIndexNumericDocValues *capture$0, id<OrgApacheLuceneUtilBits> capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneIndexNumericDocValues *capture$0, id<OrgApacheLuceneUtilBits> capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1)

@interface OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1 : OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *this$0_;
  OrgApacheLuceneUtilMutableMutableValueInt *mval_;
}

- (OrgApacheLuceneUtilMutableMutableValue *)getValue;

- (void)fillValueWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1:(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1, this$0_, OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1, mval_, OrgApacheLuceneUtilMutableMutableValueInt *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *outer$);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1)

@implementation OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource

- (instancetype)initWithNSString:(NSString *)field {
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_initWithNSString_(self, field);
  return self;
}

- (NSString *)description__ {
  return JreStrcat("$$C", @"int(", field_, ')');
}

- (OrgApacheLuceneSearchSortField *)getSortFieldWithBoolean:(jboolean)reverse {
  return [new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(field_, JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, INT), reverse) autorelease];
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneIndexNumericDocValues *arr = OrgApacheLuceneIndexDocValues_getNumericWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(readerContext)) reader], field_);
  id<OrgApacheLuceneUtilBits> valid = OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_([readerContext reader], field_);
  return [new_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(arr, valid, self) autorelease];
}

- (jboolean)isEqual:(id)o {
  if ([nil_chk(o) getClass] != OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_class_()) return false;
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource *other = (OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource *) check_class_cast(o, [OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource class]);
  return [super isEqual:other];
}

- (NSUInteger)hash {
  jint h = ((jint) [JavaLangInteger_class_() hash]);
  h += ((jint) [super hash]);
  return h;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "IntFieldSource", NULL, 0x1, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getSortFieldWithBoolean:", "getSortField", "Lorg.apache.lucene.search.SortField;", 0x1, NULL, NULL },
    { "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:", "getValues", "Lorg.apache.lucene.queries.function.FunctionValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource = { 2, "IntFieldSource", "org.apache.lucene.queries.function.valuesource", NULL, 0x1, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_initWithNSString_(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource *self, NSString *field) {
  OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_initWithNSString_(self, field);
}

OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource *new_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_initWithNSString_(NSString *field) {
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource *self = [OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource alloc];
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_initWithNSString_(self, field);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource)

@implementation OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1

- (jint)intValWithInt:(jint)doc {
  return (jint) [((OrgApacheLuceneIndexNumericDocValues *) nil_chk(val$arr_)) getWithInt:doc];
}

- (NSString *)strValWithInt:(jint)doc {
  return JavaLangInteger_toStringWithInt_([self intValWithInt:doc]);
}

- (jboolean)existsWithInt:(jint)doc {
  return [((OrgApacheLuceneIndexNumericDocValues *) nil_chk(val$arr_)) getWithInt:doc] != 0 || [((id<OrgApacheLuceneUtilBits>) nil_chk(val$valid_)) getWithInt:doc];
}

- (OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller *)getValueFiller {
  return [new_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_(self) autorelease];
}

- (instancetype)initWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)capture$0
                                 withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$1
               withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)arg$0 {
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(self, capture$0, capture$1, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val_);
  RELEASE_(val$arr_);
  RELEASE_(val$valid_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "intValWithInt:", "intVal", "I", 0x1, NULL, NULL },
    { "strValWithInt:", "strVal", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "existsWithInt:", "exists", "Z", 0x1, NULL, NULL },
    { "getValueFiller", NULL, "Lorg.apache.lucene.queries.function.FunctionValues$ValueFiller;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexNumericDocValues:withOrgApacheLuceneUtilBits:withOrgApacheLuceneQueriesFunctionValueSource:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val_", NULL, 0x10, "Lorg.apache.lucene.util.mutable.MutableValueInt;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$arr_", NULL, 0x1012, "Lorg.apache.lucene.index.NumericDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$valid_", NULL, 0x1012, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "IntFieldSource", 0x8008, 5, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *self, OrgApacheLuceneIndexNumericDocValues *capture$0, id<OrgApacheLuceneUtilBits> capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  JreStrongAssign(&self->val$arr_, capture$0);
  JreStrongAssign(&self->val$valid_, capture$1);
  OrgApacheLuceneQueriesFunctionDocvaluesIntDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, arg$0);
  JreStrongAssignAndConsume(&self->val_, new_OrgApacheLuceneUtilMutableMutableValueInt_init());
}

OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneIndexNumericDocValues *capture$0, id<OrgApacheLuceneUtilBits> capture$1, OrgApacheLuceneQueriesFunctionValueSource *arg$0) {
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *self = [OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 alloc];
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneQueriesFunctionValueSource_(self, capture$0, capture$1, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1)

@implementation OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1

- (OrgApacheLuceneUtilMutableMutableValue *)getValue {
  return mval_;
}

- (void)fillValueWithInt:(jint)doc {
  ((OrgApacheLuceneUtilMutableMutableValueInt *) nil_chk(mval_))->value_ = [this$0_ intValWithInt:doc];
  mval_->exists_ = (mval_->value_ != 0 || [((id<OrgApacheLuceneUtilBits>) nil_chk(this$0_->val$valid_)) getWithInt:doc]);
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1:(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *)outer$ {
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(mval_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "Lorg.apache.lucene.util.mutable.MutableValue;", 0x1, NULL, NULL },
    { "fillValueWithInt:", "fillValue", "V", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.valuesource.IntFieldSource$1;", NULL, NULL, .constantValue.asLong = 0 },
    { "mval_", NULL, 0x12, "Lorg.apache.lucene.util.mutable.MutableValueInt;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1", "getValueFiller" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1 = { 2, "", "org.apache.lucene.queries.function.valuesource", "IntFieldSource$", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1 *self, OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneQueriesFunctionFunctionValues_ValueFiller_init(self);
  JreStrongAssignAndConsume(&self->mval_, new_OrgApacheLuceneUtilMutableMutableValueInt_init());
}

OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1 *new_OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1 *outer$) {
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1 *self = [OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1 alloc];
  OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1_initWithOrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceIntFieldSource_$1_$1)
