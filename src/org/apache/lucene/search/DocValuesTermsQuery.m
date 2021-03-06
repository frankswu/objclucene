//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/DocValuesTermsQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/StringBuilder.h"
#include "java/util/AbstractList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Comparator.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/search/DocValuesTermsQuery.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/RandomAccessWeight.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/LongBitSet.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneSearchDocValuesTermsQuery () {
 @public
  NSString *field_;
  IOSObjectArray *terms_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesTermsQuery, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesTermsQuery, terms_, IOSObjectArray *)

@interface OrgApacheLuceneSearchDocValuesTermsQuery_$1 : JavaUtilAbstractList {
 @public
  IOSObjectArray *val$terms_;
}

- (OrgApacheLuceneUtilBytesRef *)getWithInt:(jint)index;

- (jint)size;

- (instancetype)initWithNSStringArray:(IOSObjectArray *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesTermsQuery_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesTermsQuery_$1, val$terms_, IOSObjectArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchDocValuesTermsQuery_$1_initWithNSStringArray_(OrgApacheLuceneSearchDocValuesTermsQuery_$1 *self, IOSObjectArray *capture$0);

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesTermsQuery_$1 *new_OrgApacheLuceneSearchDocValuesTermsQuery_$1_initWithNSStringArray_(IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesTermsQuery_$1 *create_OrgApacheLuceneSearchDocValuesTermsQuery_$1_initWithNSStringArray_(IOSObjectArray *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocValuesTermsQuery_$1)

@interface OrgApacheLuceneSearchDocValuesTermsQuery_$2 : OrgApacheLuceneSearchRandomAccessWeight {
 @public
  OrgApacheLuceneSearchDocValuesTermsQuery *this$0_;
}

- (id<OrgApacheLuceneUtilBits>)getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (instancetype)initWithOrgApacheLuceneSearchDocValuesTermsQuery:(OrgApacheLuceneSearchDocValuesTermsQuery *)outer$
                                  withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesTermsQuery_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesTermsQuery_$2, this$0_, OrgApacheLuceneSearchDocValuesTermsQuery *)

__attribute__((unused)) static void OrgApacheLuceneSearchDocValuesTermsQuery_$2_initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesTermsQuery_$2 *self, OrgApacheLuceneSearchDocValuesTermsQuery *outer$, OrgApacheLuceneSearchQuery *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesTermsQuery_$2 *new_OrgApacheLuceneSearchDocValuesTermsQuery_$2_initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesTermsQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesTermsQuery_$2 *create_OrgApacheLuceneSearchDocValuesTermsQuery_$2_initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesTermsQuery *outer$, OrgApacheLuceneSearchQuery *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocValuesTermsQuery_$2)

@interface OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1 : NSObject < OrgApacheLuceneUtilBits > {
 @public
  OrgApacheLuceneIndexSortedSetDocValues *val$values_;
  OrgApacheLuceneUtilLongBitSet *val$bits_;
  OrgApacheLuceneIndexLeafReaderContext *val$context_;
}

- (jboolean)getWithInt:(jint)doc;

- (jint)length;

- (instancetype)initWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)capture$0
                             withOrgApacheLuceneUtilLongBitSet:(OrgApacheLuceneUtilLongBitSet *)capture$1
                     withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1, val$values_, OrgApacheLuceneIndexSortedSetDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1, val$bits_, OrgApacheLuceneUtilLongBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1, val$context_, OrgApacheLuceneIndexLeafReaderContext *)

__attribute__((unused)) static void OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1 *self, OrgApacheLuceneIndexSortedSetDocValues *capture$0, OrgApacheLuceneUtilLongBitSet *capture$1, OrgApacheLuceneIndexLeafReaderContext *capture$2);

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1 *new_OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneIndexSortedSetDocValues *capture$0, OrgApacheLuceneUtilLongBitSet *capture$1, OrgApacheLuceneIndexLeafReaderContext *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1 *create_OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneIndexSortedSetDocValues *capture$0, OrgApacheLuceneUtilLongBitSet *capture$1, OrgApacheLuceneIndexLeafReaderContext *capture$2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1)

@implementation OrgApacheLuceneSearchDocValuesTermsQuery

- (instancetype)initWithNSString:(NSString *)field
          withJavaUtilCollection:(id<JavaUtilCollection>)terms {
  OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withJavaUtilCollection_(self, field, terms);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneUtilBytesRefArray:(IOSObjectArray *)terms {
  OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(self, field, terms);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
               withNSStringArray:(IOSObjectArray *)terms {
  OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withNSStringArray_(self, field, terms);
  return self;
}

- (jboolean)isEqual:(id)obj {
  if ([obj isKindOfClass:[OrgApacheLuceneSearchDocValuesTermsQuery class]] == false) {
    return false;
  }
  OrgApacheLuceneSearchDocValuesTermsQuery *that = (OrgApacheLuceneSearchDocValuesTermsQuery *) cast_chk(obj, [OrgApacheLuceneSearchDocValuesTermsQuery class]);
  if (![super isEqual:obj]) {
    return false;
  }
  if (![((NSString *) nil_chk(field_)) isEqual:((OrgApacheLuceneSearchDocValuesTermsQuery *) nil_chk(that))->field_]) {
    return false;
  }
  return JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(terms_, that->terms_);
}

- (NSUInteger)hash {
  return OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ field_, JavaUtilArrays_asListWithNSObjectArray_(terms_), JavaLangFloat_valueOfWithFloat_([self getBoost]) } count:3 type:NSObject_class_()]);
}

- (NSString *)toStringWithNSString:(NSString *)defaultField {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:field_])) appendWithNSString:@": ["];
  {
    IOSObjectArray *a__ = terms_;
    OrgApacheLuceneUtilBytesRef * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilBytesRef * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilBytesRef *term = *b__++;
      [((JavaLangStringBuilder *) nil_chk([sb appendWithId:term])) appendWithNSString:@", "];
    }
  }
  if (((IOSObjectArray *) nil_chk(terms_))->size_ > 0) {
    [sb setLengthWithInt:[sb length] - 2];
  }
  return [((JavaLangStringBuilder *) nil_chk([sb appendWithChar:']'])) description];
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return create_OrgApacheLuceneSearchDocValuesTermsQuery_$2_initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_(self, self);
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(terms_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaUtilCollection:", "DocValuesTermsQuery", NULL, 0x1, NULL, "(Ljava/lang/String;Ljava/util/Collection<Lorg/apache/lucene/util/BytesRef;>;)V" },
    { "initWithNSString:withOrgApacheLuceneUtilBytesRefArray:", "DocValuesTermsQuery", NULL, 0x81, NULL, NULL },
    { "initWithNSString:withNSStringArray:", "DocValuesTermsQuery", NULL, 0x81, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "terms_", NULL, 0x12, "[Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesTermsQuery = { 2, "DocValuesTermsQuery", "org.apache.lucene.search", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchDocValuesTermsQuery;
}

@end

void OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withJavaUtilCollection_(OrgApacheLuceneSearchDocValuesTermsQuery *self, NSString *field, id<JavaUtilCollection> terms) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->field_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(field));
  OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(terms, @"Collection of terms must not be null");
  JreStrongAssign(&self->terms_, [((id<JavaUtilCollection>) nil_chk(terms)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[terms size] type:OrgApacheLuceneUtilBytesRef_class_()]]);
  OrgApacheLuceneUtilArrayUtil_timSortWithNSObjectArray_withJavaUtilComparator_(self->terms_, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator());
}

OrgApacheLuceneSearchDocValuesTermsQuery *new_OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withJavaUtilCollection_(NSString *field, id<JavaUtilCollection> terms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery, initWithNSString_withJavaUtilCollection_, field, terms)
}

OrgApacheLuceneSearchDocValuesTermsQuery *create_OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withJavaUtilCollection_(NSString *field, id<JavaUtilCollection> terms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery, initWithNSString_withJavaUtilCollection_, field, terms)
}

void OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(OrgApacheLuceneSearchDocValuesTermsQuery *self, NSString *field, IOSObjectArray *terms) {
  OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withJavaUtilCollection_(self, field, JavaUtilArrays_asListWithNSObjectArray_(terms));
}

OrgApacheLuceneSearchDocValuesTermsQuery *new_OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery, initWithNSString_withOrgApacheLuceneUtilBytesRefArray_, field, terms)
}

OrgApacheLuceneSearchDocValuesTermsQuery *create_OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery, initWithNSString_withOrgApacheLuceneUtilBytesRefArray_, field, terms)
}

void OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withNSStringArray_(OrgApacheLuceneSearchDocValuesTermsQuery *self, NSString *field, IOSObjectArray *terms) {
  OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withJavaUtilCollection_(self, field, create_OrgApacheLuceneSearchDocValuesTermsQuery_$1_initWithNSStringArray_(terms));
}

OrgApacheLuceneSearchDocValuesTermsQuery *new_OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withNSStringArray_(NSString *field, IOSObjectArray *terms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery, initWithNSString_withNSStringArray_, field, terms)
}

OrgApacheLuceneSearchDocValuesTermsQuery *create_OrgApacheLuceneSearchDocValuesTermsQuery_initWithNSString_withNSStringArray_(NSString *field, IOSObjectArray *terms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery, initWithNSString_withNSStringArray_, field, terms)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocValuesTermsQuery)

@implementation OrgApacheLuceneSearchDocValuesTermsQuery_$1

- (OrgApacheLuceneUtilBytesRef *)getWithInt:(jint)index {
  return create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(IOSObjectArray_Get(nil_chk(val$terms_), index));
}

- (jint)size {
  return ((IOSObjectArray *) nil_chk(val$terms_))->size_;
}

- (instancetype)initWithNSStringArray:(IOSObjectArray *)capture$0 {
  OrgApacheLuceneSearchDocValuesTermsQuery_$1_initWithNSStringArray_(self, capture$0);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (void)dealloc {
  RELEASE_(val$terms_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, "(I)Lorg/apache/lucene/util/BytesRef;" },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "initWithNSStringArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$terms_", NULL, 0x1012, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.util.BytesRef;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchDocValuesTermsQuery", "initWithNSString:withNSStringArray:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesTermsQuery_$1 = { 2, "", "org.apache.lucene.search", "DocValuesTermsQuery", 0x8008, 3, methods, 1, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Ljava/util/AbstractList<Lorg/apache/lucene/util/BytesRef;>;" };
  return &_OrgApacheLuceneSearchDocValuesTermsQuery_$1;
}

@end

void OrgApacheLuceneSearchDocValuesTermsQuery_$1_initWithNSStringArray_(OrgApacheLuceneSearchDocValuesTermsQuery_$1 *self, IOSObjectArray *capture$0) {
  JreStrongAssign(&self->val$terms_, capture$0);
  JavaUtilAbstractList_init(self);
}

OrgApacheLuceneSearchDocValuesTermsQuery_$1 *new_OrgApacheLuceneSearchDocValuesTermsQuery_$1_initWithNSStringArray_(IOSObjectArray *capture$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery_$1, initWithNSStringArray_, capture$0)
}

OrgApacheLuceneSearchDocValuesTermsQuery_$1 *create_OrgApacheLuceneSearchDocValuesTermsQuery_$1_initWithNSStringArray_(IOSObjectArray *capture$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery_$1, initWithNSStringArray_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocValuesTermsQuery_$1)

@implementation OrgApacheLuceneSearchDocValuesTermsQuery_$2

- (id<OrgApacheLuceneUtilBits>)getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneIndexSortedSetDocValues *values = OrgApacheLuceneIndexDocValues_getSortedSetWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], this$0_->field_);
  OrgApacheLuceneUtilLongBitSet *bits = create_OrgApacheLuceneUtilLongBitSet_initWithLong_([((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(values)) getValueCount]);
  {
    IOSObjectArray *a__ = this$0_->terms_;
    OrgApacheLuceneUtilBytesRef * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilBytesRef * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilBytesRef *term = *b__++;
      jlong ord = [values lookupTermWithOrgApacheLuceneUtilBytesRef:term];
      if (ord >= 0) {
        [bits setWithLong:ord];
      }
    }
  }
  return create_OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_(values, bits, context);
}

- (instancetype)initWithOrgApacheLuceneSearchDocValuesTermsQuery:(OrgApacheLuceneSearchDocValuesTermsQuery *)outer$
                                  withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0 {
  OrgApacheLuceneSearchDocValuesTermsQuery_$2_initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:", "getMatchingDocs", "Lorg.apache.lucene.util.Bits;", 0x4, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchDocValuesTermsQuery:withOrgApacheLuceneSearchQuery:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.DocValuesTermsQuery;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchDocValuesTermsQuery", "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesTermsQuery_$2 = { 2, "", "org.apache.lucene.search", "DocValuesTermsQuery", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchDocValuesTermsQuery_$2;
}

@end

void OrgApacheLuceneSearchDocValuesTermsQuery_$2_initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesTermsQuery_$2 *self, OrgApacheLuceneSearchDocValuesTermsQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchRandomAccessWeight_initWithOrgApacheLuceneSearchQuery_(self, arg$0);
}

OrgApacheLuceneSearchDocValuesTermsQuery_$2 *new_OrgApacheLuceneSearchDocValuesTermsQuery_$2_initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesTermsQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery_$2, initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_, outer$, arg$0)
}

OrgApacheLuceneSearchDocValuesTermsQuery_$2 *create_OrgApacheLuceneSearchDocValuesTermsQuery_$2_initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchDocValuesTermsQuery *outer$, OrgApacheLuceneSearchQuery *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery_$2, initWithOrgApacheLuceneSearchDocValuesTermsQuery_withOrgApacheLuceneSearchQuery_, outer$, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocValuesTermsQuery_$2)

@implementation OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1

- (jboolean)getWithInt:(jint)doc {
  [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(val$values_)) setDocumentWithInt:doc];
  for (jlong ord = [val$values_ nextOrd]; ord != OrgApacheLuceneIndexSortedSetDocValues_NO_MORE_ORDS; ord = [val$values_ nextOrd]) {
    if ([((OrgApacheLuceneUtilLongBitSet *) nil_chk(val$bits_)) getWithLong:ord]) {
      return true;
    }
  }
  return false;
}

- (jint)length {
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(val$context_)) reader])) maxDoc];
}

- (instancetype)initWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)capture$0
                             withOrgApacheLuceneUtilLongBitSet:(OrgApacheLuceneUtilLongBitSet *)capture$1
                     withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)capture$2 {
  OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_(self, capture$0, capture$1, capture$2);
  return self;
}

- (void)dealloc {
  RELEASE_(val$values_);
  RELEASE_(val$bits_);
  RELEASE_(val$context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "Z", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexSortedSetDocValues:withOrgApacheLuceneUtilLongBitSet:withOrgApacheLuceneIndexLeafReaderContext:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$values_", NULL, 0x1012, "Lorg.apache.lucene.index.SortedSetDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$bits_", NULL, 0x1012, "Lorg.apache.lucene.util.LongBitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$context_", NULL, 0x1012, "Lorg.apache.lucene.index.LeafReaderContext;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchDocValuesTermsQuery_$2", "getMatchingDocsWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1 = { 2, "", "org.apache.lucene.search", "DocValuesTermsQuery$", 0x8008, 3, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1;
}

@end

void OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1 *self, OrgApacheLuceneIndexSortedSetDocValues *capture$0, OrgApacheLuceneUtilLongBitSet *capture$1, OrgApacheLuceneIndexLeafReaderContext *capture$2) {
  JreStrongAssign(&self->val$values_, capture$0);
  JreStrongAssign(&self->val$bits_, capture$1);
  JreStrongAssign(&self->val$context_, capture$2);
  NSObject_init(self);
}

OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1 *new_OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneIndexSortedSetDocValues *capture$0, OrgApacheLuceneUtilLongBitSet *capture$1, OrgApacheLuceneIndexLeafReaderContext *capture$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1, initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_, capture$0, capture$1, capture$2)
}

OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1 *create_OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1_initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneIndexSortedSetDocValues *capture$0, OrgApacheLuceneUtilLongBitSet *capture$1, OrgApacheLuceneIndexLeafReaderContext *capture$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1, initWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneUtilLongBitSet_withOrgApacheLuceneIndexLeafReaderContext_, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocValuesTermsQuery_$2_$1)
