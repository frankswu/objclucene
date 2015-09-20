//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BlockJoinSelector.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/search/SortedNumericSelector.h"
#include "org/apache/lucene/search/SortedSetSelector.h"
#include "org/apache/lucene/search/join/BlockJoinSelector.h"
#include "org/apache/lucene/util/BitSet.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneSearchJoinBlockJoinSelector ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneSearchJoinBlockJoinSelector_init(OrgApacheLuceneSearchJoinBlockJoinSelector *self);

__attribute__((unused)) static OrgApacheLuceneSearchJoinBlockJoinSelector *new_OrgApacheLuceneSearchJoinBlockJoinSelector_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static void OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initWithNSString_withInt_(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *new_OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface OrgApacheLuceneSearchJoinBlockJoinSelector_$1 : NSObject < OrgApacheLuceneUtilBits > {
 @public
  OrgApacheLuceneUtilBitSet *val$parents_;
  OrgApacheLuceneUtilBitSet *val$children_;
  id<OrgApacheLuceneUtilBits> val$docsWithValue_;
}

- (jboolean)getWithInt:(jint)docID;

- (jint)length;

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$0
                    withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$1
                      withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinBlockJoinSelector_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$1, val$parents_, OrgApacheLuceneUtilBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$1, val$children_, OrgApacheLuceneUtilBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$1, val$docsWithValue_, id<OrgApacheLuceneUtilBits>)

__attribute__((unused)) static void OrgApacheLuceneSearchJoinBlockJoinSelector_$1_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchJoinBlockJoinSelector_$1 *self, OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, id<OrgApacheLuceneUtilBits> capture$2);

__attribute__((unused)) static OrgApacheLuceneSearchJoinBlockJoinSelector_$1 *new_OrgApacheLuceneSearchJoinBlockJoinSelector_$1_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBits_(OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, id<OrgApacheLuceneUtilBits> capture$2) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinBlockJoinSelector_$1)

@interface OrgApacheLuceneSearchJoinBlockJoinSelector_$2 : OrgApacheLuceneIndexSortedDocValues {
 @public
  OrgApacheLuceneUtilBitSet *val$parents_;
  OrgApacheLuceneUtilBitSet *val$children_;
  OrgApacheLuceneIndexSortedDocValues *val$values_;
  OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *val$selection_;
}

- (jint)getOrdWithInt:(jint)docID;

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithInt:(jint)ord;

- (jint)getValueCount;

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$0
                    withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$1
          withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)capture$2
withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)capture$3;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinBlockJoinSelector_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$2, val$parents_, OrgApacheLuceneUtilBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$2, val$children_, OrgApacheLuceneUtilBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$2, val$values_, OrgApacheLuceneIndexSortedDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$2, val$selection_, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)

__attribute__((unused)) static void OrgApacheLuceneSearchJoinBlockJoinSelector_$2_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(OrgApacheLuceneSearchJoinBlockJoinSelector_$2 *self, OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, OrgApacheLuceneIndexSortedDocValues *capture$2, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *capture$3);

__attribute__((unused)) static OrgApacheLuceneSearchJoinBlockJoinSelector_$2 *new_OrgApacheLuceneSearchJoinBlockJoinSelector_$2_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, OrgApacheLuceneIndexSortedDocValues *capture$2, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *capture$3) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinBlockJoinSelector_$2)

@interface OrgApacheLuceneSearchJoinBlockJoinSelector_$3 : OrgApacheLuceneIndexNumericDocValues {
 @public
  OrgApacheLuceneUtilBitSet *val$parents_;
  OrgApacheLuceneUtilBitSet *val$children_;
  OrgApacheLuceneIndexNumericDocValues *val$values_;
  id<OrgApacheLuceneUtilBits> val$docsWithValue_;
  OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *val$selection_;
}

- (jlong)getWithInt:(jint)docID;

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$0
                    withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$1
         withOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)capture$2
                      withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$3
withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)capture$4;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinBlockJoinSelector_$3)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$3, val$parents_, OrgApacheLuceneUtilBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$3, val$children_, OrgApacheLuceneUtilBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$3, val$values_, OrgApacheLuceneIndexNumericDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$3, val$docsWithValue_, id<OrgApacheLuceneUtilBits>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBlockJoinSelector_$3, val$selection_, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)

__attribute__((unused)) static void OrgApacheLuceneSearchJoinBlockJoinSelector_$3_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(OrgApacheLuceneSearchJoinBlockJoinSelector_$3 *self, OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, OrgApacheLuceneIndexNumericDocValues *capture$2, id<OrgApacheLuceneUtilBits> capture$3, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *capture$4);

__attribute__((unused)) static OrgApacheLuceneSearchJoinBlockJoinSelector_$3 *new_OrgApacheLuceneSearchJoinBlockJoinSelector_$3_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, OrgApacheLuceneIndexNumericDocValues *capture$2, id<OrgApacheLuceneUtilBits> capture$3, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *capture$4) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinBlockJoinSelector_$3)

@implementation OrgApacheLuceneSearchJoinBlockJoinSelector

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchJoinBlockJoinSelector_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<OrgApacheLuceneUtilBits>)wrapWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)docsWithValue
                                 withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)parents
                                 withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)children {
  return OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneUtilBits_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(docsWithValue, parents, children);
}

+ (OrgApacheLuceneIndexSortedDocValues *)wrapWithOrgApacheLuceneIndexSortedSetDocValues:(OrgApacheLuceneIndexSortedSetDocValues *)sortedSet
                                withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)selection
                                                          withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)parents
                                                          withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)children {
  return OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(sortedSet, selection, parents, children);
}

+ (OrgApacheLuceneIndexSortedDocValues *)wrapWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)values
                             withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)selection
                                                       withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)parents
                                                       withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)children {
  return OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(values, selection, parents, children);
}

+ (OrgApacheLuceneIndexNumericDocValues *)wrapWithOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)sortedNumerics
                                     withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)selection
                                                               withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)parents
                                                               withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)children {
  return OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(sortedNumerics, selection, parents, children);
}

+ (OrgApacheLuceneIndexNumericDocValues *)wrapWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)values
                                                           withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)docsWithValue
                               withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)selection
                                                         withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)parents
                                                         withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)children {
  return OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(values, docsWithValue, selection, parents, children);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BlockJoinSelector", NULL, 0x2, NULL, NULL },
    { "wrapWithOrgApacheLuceneUtilBits:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:", "wrap", "Lorg.apache.lucene.util.Bits;", 0x9, NULL, NULL },
    { "wrapWithOrgApacheLuceneIndexSortedSetDocValues:withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:", "wrap", "Lorg.apache.lucene.index.SortedDocValues;", 0x9, NULL, NULL },
    { "wrapWithOrgApacheLuceneIndexSortedDocValues:withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:", "wrap", "Lorg.apache.lucene.index.SortedDocValues;", 0x9, NULL, NULL },
    { "wrapWithOrgApacheLuceneIndexSortedNumericDocValues:withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:", "wrap", "Lorg.apache.lucene.index.NumericDocValues;", 0x9, NULL, NULL },
    { "wrapWithOrgApacheLuceneIndexNumericDocValues:withOrgApacheLuceneUtilBits:withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:", "wrap", "Lorg.apache.lucene.index.NumericDocValues;", 0x9, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.join.BlockJoinSelector$Type;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBlockJoinSelector = { 2, "BlockJoinSelector", "org.apache.lucene.search.join", NULL, 0x1, 6, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinBlockJoinSelector;
}

@end

void OrgApacheLuceneSearchJoinBlockJoinSelector_init(OrgApacheLuceneSearchJoinBlockJoinSelector *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchJoinBlockJoinSelector *new_OrgApacheLuceneSearchJoinBlockJoinSelector_init() {
  OrgApacheLuceneSearchJoinBlockJoinSelector *self = [OrgApacheLuceneSearchJoinBlockJoinSelector alloc];
  OrgApacheLuceneSearchJoinBlockJoinSelector_init(self);
  return self;
}

id<OrgApacheLuceneUtilBits> OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneUtilBits_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(id<OrgApacheLuceneUtilBits> docsWithValue, OrgApacheLuceneUtilBitSet *parents, OrgApacheLuceneUtilBitSet *children) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_initialize();
  return [new_OrgApacheLuceneSearchJoinBlockJoinSelector_$1_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBits_(parents, children, docsWithValue) autorelease];
}

OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(OrgApacheLuceneIndexSortedSetDocValues *sortedSet, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *selection, OrgApacheLuceneUtilBitSet *parents, OrgApacheLuceneUtilBitSet *children) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_initialize();
  OrgApacheLuceneIndexSortedDocValues *values;
  switch ([selection ordinal]) {
    case OrgApacheLuceneSearchJoinBlockJoinSelector_Type_MIN:
    values = OrgApacheLuceneSearchSortedSetSelector_wrapWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneSearchSortedSetSelector_TypeEnum_(sortedSet, JreLoadStatic(OrgApacheLuceneSearchSortedSetSelector_TypeEnum, MIN));
    break;
    case OrgApacheLuceneSearchJoinBlockJoinSelector_Type_MAX:
    values = OrgApacheLuceneSearchSortedSetSelector_wrapWithOrgApacheLuceneIndexSortedSetDocValues_withOrgApacheLuceneSearchSortedSetSelector_TypeEnum_(sortedSet, JreLoadStatic(OrgApacheLuceneSearchSortedSetSelector_TypeEnum, MAX));
    break;
    default:
    @throw [new_JavaLangAssertionError_init() autorelease];
  }
  return OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(values, selection, parents, children);
}

OrgApacheLuceneIndexSortedDocValues *OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *selection, OrgApacheLuceneUtilBitSet *parents, OrgApacheLuceneUtilBitSet *children) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_initialize();
  return [new_OrgApacheLuceneSearchJoinBlockJoinSelector_$2_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(parents, children, values, selection) autorelease];
}

OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(OrgApacheLuceneIndexSortedNumericDocValues *sortedNumerics, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *selection, OrgApacheLuceneUtilBitSet *parents, OrgApacheLuceneUtilBitSet *children) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_initialize();
  OrgApacheLuceneIndexNumericDocValues *values;
  switch ([selection ordinal]) {
    case OrgApacheLuceneSearchJoinBlockJoinSelector_Type_MIN:
    values = OrgApacheLuceneSearchSortedNumericSelector_wrapWithOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneSearchSortedNumericSelector_TypeEnum_withOrgApacheLuceneSearchSortField_TypeEnum_(sortedNumerics, JreLoadStatic(OrgApacheLuceneSearchSortedNumericSelector_TypeEnum, MIN), JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, LONG));
    break;
    case OrgApacheLuceneSearchJoinBlockJoinSelector_Type_MAX:
    values = OrgApacheLuceneSearchSortedNumericSelector_wrapWithOrgApacheLuceneIndexSortedNumericDocValues_withOrgApacheLuceneSearchSortedNumericSelector_TypeEnum_withOrgApacheLuceneSearchSortField_TypeEnum_(sortedNumerics, JreLoadStatic(OrgApacheLuceneSearchSortedNumericSelector_TypeEnum, MAX), JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, LONG));
    break;
    default:
    @throw [new_JavaLangAssertionError_init() autorelease];
  }
  return OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(values, OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedNumericDocValues_withInt_(sortedNumerics, [((OrgApacheLuceneUtilBitSet *) nil_chk(parents)) length]), selection, parents, children);
}

OrgApacheLuceneIndexNumericDocValues *OrgApacheLuceneSearchJoinBlockJoinSelector_wrapWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_(OrgApacheLuceneIndexNumericDocValues *values, id<OrgApacheLuceneUtilBits> docsWithValue, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *selection, OrgApacheLuceneUtilBitSet *parents, OrgApacheLuceneUtilBitSet *children) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_initialize();
  return [new_OrgApacheLuceneSearchJoinBlockJoinSelector_$3_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(parents, children, values, docsWithValue, selection) autorelease];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBlockJoinSelector)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum)

OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_values_[2];

@implementation OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_values() {
  OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_values_ count:2 type:OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_values();
}

+ (OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initialize();
  for (int i = 0; i < 2; i++) {
    OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *e = OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum class]) {
    OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_MIN = new_OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initWithNSString_withInt_(@"MIN", 0);
    OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_MAX = new_OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initWithNSString_withInt_(@"MAX", 1);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "MIN", "MIN", 0x4019, "Lorg.apache.lucene.search.join.BlockJoinSelector$Type;", &OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_MIN, NULL, .constantValue.asLong = 0 },
    { "MAX", "MAX", 0x4019, "Lorg.apache.lucene.search.join.BlockJoinSelector$Type;", &OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_MAX, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.join.BlockJoinSelector$Type;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum = { 2, "Type", "org.apache.lucene.search.join", "BlockJoinSelector", 0x4019, 0, NULL, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/search/join/BlockJoinSelector$Type;>;" };
  return &_OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum;
}

@end

void OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initWithNSString_withInt_(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *new_OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *self = [OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum alloc];
  OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum)

@implementation OrgApacheLuceneSearchJoinBlockJoinSelector_$1

- (jboolean)getWithInt:(jint)docID {
  JreAssert(([((OrgApacheLuceneUtilBitSet *) nil_chk(val$parents_)) getWithInt:docID]), (@"this selector may only be used on parent documents"));
  if (docID == 0) {
    return false;
  }
  jint firstChild = [val$parents_ prevSetBitWithInt:docID - 1] + 1;
  for (jint child = [((OrgApacheLuceneUtilBitSet *) nil_chk(val$children_)) nextSetBitWithInt:firstChild]; child < docID; child = [val$children_ nextSetBitWithInt:child + 1]) {
    if ([((id<OrgApacheLuceneUtilBits>) nil_chk(val$docsWithValue_)) getWithInt:child]) {
      return true;
    }
  }
  return false;
}

- (jint)length {
  return [((id<OrgApacheLuceneUtilBits>) nil_chk(val$docsWithValue_)) length];
}

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$0
                    withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$1
                      withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$2 {
  OrgApacheLuceneSearchJoinBlockJoinSelector_$1_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBits_(self, capture$0, capture$1, capture$2);
  return self;
}

- (void)dealloc {
  RELEASE_(val$parents_);
  RELEASE_(val$children_);
  RELEASE_(val$docsWithValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "Z", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBits:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$parents_", NULL, 0x1012, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$children_", NULL, 0x1012, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$docsWithValue_", NULL, 0x1012, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchJoinBlockJoinSelector", "wrapWithOrgApacheLuceneUtilBits:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBlockJoinSelector_$1 = { 2, "", "org.apache.lucene.search.join", "BlockJoinSelector", 0x8008, 3, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchJoinBlockJoinSelector_$1;
}

@end

void OrgApacheLuceneSearchJoinBlockJoinSelector_$1_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchJoinBlockJoinSelector_$1 *self, OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, id<OrgApacheLuceneUtilBits> capture$2) {
  JreStrongAssign(&self->val$parents_, capture$0);
  JreStrongAssign(&self->val$children_, capture$1);
  JreStrongAssign(&self->val$docsWithValue_, capture$2);
  NSObject_init(self);
}

OrgApacheLuceneSearchJoinBlockJoinSelector_$1 *new_OrgApacheLuceneSearchJoinBlockJoinSelector_$1_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBits_(OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, id<OrgApacheLuceneUtilBits> capture$2) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_$1 *self = [OrgApacheLuceneSearchJoinBlockJoinSelector_$1 alloc];
  OrgApacheLuceneSearchJoinBlockJoinSelector_$1_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBits_(self, capture$0, capture$1, capture$2);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBlockJoinSelector_$1)

@implementation OrgApacheLuceneSearchJoinBlockJoinSelector_$2

- (jint)getOrdWithInt:(jint)docID {
  JreAssert(([((OrgApacheLuceneUtilBitSet *) nil_chk(val$parents_)) getWithInt:docID]), (@"this selector may only be used on parent documents"));
  if (docID == 0) {
    return -1;
  }
  jint firstChild = [val$parents_ prevSetBitWithInt:docID - 1] + 1;
  jint ord = -1;
  for (jint child = [((OrgApacheLuceneUtilBitSet *) nil_chk(val$children_)) nextSetBitWithInt:firstChild]; child < docID; child = [val$children_ nextSetBitWithInt:child + 1]) {
    jint childOrd = [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(val$values_)) getOrdWithInt:child];
    switch ([val$selection_ ordinal]) {
      case OrgApacheLuceneSearchJoinBlockJoinSelector_Type_MIN:
      if (ord == -1) {
        ord = childOrd;
      }
      else if (childOrd != -1) {
        ord = JavaLangMath_minWithInt_withInt_(ord, childOrd);
      }
      break;
      case OrgApacheLuceneSearchJoinBlockJoinSelector_Type_MAX:
      ord = JavaLangMath_maxWithInt_withInt_(ord, childOrd);
      break;
      default:
      @throw [new_JavaLangAssertionError_init() autorelease];
    }
  }
  return ord;
}

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithInt:(jint)ord {
  return [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(val$values_)) lookupOrdWithInt:ord];
}

- (jint)getValueCount {
  return [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(val$values_)) getValueCount];
}

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$0
                    withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$1
          withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)capture$2
withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)capture$3 {
  OrgApacheLuceneSearchJoinBlockJoinSelector_$2_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(self, capture$0, capture$1, capture$2, capture$3);
  return self;
}

- (void)dealloc {
  RELEASE_(val$parents_);
  RELEASE_(val$children_);
  RELEASE_(val$values_);
  RELEASE_(val$selection_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getOrdWithInt:", "getOrd", "I", 0x1, NULL, NULL },
    { "lookupOrdWithInt:", "lookupOrd", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "getValueCount", NULL, "I", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneIndexSortedDocValues:withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$parents_", NULL, 0x1012, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$children_", NULL, 0x1012, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$values_", NULL, 0x1012, "Lorg.apache.lucene.index.SortedDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$selection_", NULL, 0x1012, "Lorg.apache.lucene.search.join.BlockJoinSelector$Type;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchJoinBlockJoinSelector", "wrapWithOrgApacheLuceneIndexSortedDocValues:withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBlockJoinSelector_$2 = { 2, "", "org.apache.lucene.search.join", "BlockJoinSelector", 0x8008, 4, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchJoinBlockJoinSelector_$2;
}

@end

void OrgApacheLuceneSearchJoinBlockJoinSelector_$2_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(OrgApacheLuceneSearchJoinBlockJoinSelector_$2 *self, OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, OrgApacheLuceneIndexSortedDocValues *capture$2, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *capture$3) {
  JreStrongAssign(&self->val$parents_, capture$0);
  JreStrongAssign(&self->val$children_, capture$1);
  JreStrongAssign(&self->val$values_, capture$2);
  JreStrongAssign(&self->val$selection_, capture$3);
  OrgApacheLuceneIndexSortedDocValues_init(self);
}

OrgApacheLuceneSearchJoinBlockJoinSelector_$2 *new_OrgApacheLuceneSearchJoinBlockJoinSelector_$2_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, OrgApacheLuceneIndexSortedDocValues *capture$2, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *capture$3) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_$2 *self = [OrgApacheLuceneSearchJoinBlockJoinSelector_$2 alloc];
  OrgApacheLuceneSearchJoinBlockJoinSelector_$2_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(self, capture$0, capture$1, capture$2, capture$3);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBlockJoinSelector_$2)

@implementation OrgApacheLuceneSearchJoinBlockJoinSelector_$3

- (jlong)getWithInt:(jint)docID {
  JreAssert(([((OrgApacheLuceneUtilBitSet *) nil_chk(val$parents_)) getWithInt:docID]), (@"this selector may only be used on parent documents"));
  if (docID == 0) {
    return 0;
  }
  jint firstChild = [val$parents_ prevSetBitWithInt:docID - 1] + 1;
  jlong value = 0;
  jboolean hasValue = false;
  for (jint child = [((OrgApacheLuceneUtilBitSet *) nil_chk(val$children_)) nextSetBitWithInt:firstChild]; child < docID; child = [val$children_ nextSetBitWithInt:child + 1]) {
    jlong childValue = [((OrgApacheLuceneIndexNumericDocValues *) nil_chk(val$values_)) getWithInt:child];
    jboolean childHasValue = value != 0 || [((id<OrgApacheLuceneUtilBits>) nil_chk(val$docsWithValue_)) getWithInt:child];
    if (hasValue == false) {
      value = childValue;
      hasValue = childHasValue;
    }
    else if (childHasValue) {
      switch ([val$selection_ ordinal]) {
        case OrgApacheLuceneSearchJoinBlockJoinSelector_Type_MIN:
        value = JavaLangMath_minWithLong_withLong_(value, childValue);
        break;
        case OrgApacheLuceneSearchJoinBlockJoinSelector_Type_MAX:
        value = JavaLangMath_maxWithLong_withLong_(value, childValue);
        break;
        default:
        @throw [new_JavaLangAssertionError_init() autorelease];
      }
    }
  }
  return value;
}

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$0
                    withOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)capture$1
         withOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)capture$2
                      withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$3
withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:(OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *)capture$4 {
  OrgApacheLuceneSearchJoinBlockJoinSelector_$3_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(self, capture$0, capture$1, capture$2, capture$3, capture$4);
  return self;
}

- (void)dealloc {
  RELEASE_(val$parents_);
  RELEASE_(val$children_);
  RELEASE_(val$values_);
  RELEASE_(val$docsWithValue_);
  RELEASE_(val$selection_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneIndexNumericDocValues:withOrgApacheLuceneUtilBits:withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$parents_", NULL, 0x1012, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$children_", NULL, 0x1012, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$values_", NULL, 0x1012, "Lorg.apache.lucene.index.NumericDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$docsWithValue_", NULL, 0x1012, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$selection_", NULL, 0x1012, "Lorg.apache.lucene.search.join.BlockJoinSelector$Type;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchJoinBlockJoinSelector", "wrapWithOrgApacheLuceneIndexNumericDocValues:withOrgApacheLuceneUtilBits:withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum:withOrgApacheLuceneUtilBitSet:withOrgApacheLuceneUtilBitSet:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBlockJoinSelector_$3 = { 2, "", "org.apache.lucene.search.join", "BlockJoinSelector", 0x8008, 2, methods, 5, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchJoinBlockJoinSelector_$3;
}

@end

void OrgApacheLuceneSearchJoinBlockJoinSelector_$3_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(OrgApacheLuceneSearchJoinBlockJoinSelector_$3 *self, OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, OrgApacheLuceneIndexNumericDocValues *capture$2, id<OrgApacheLuceneUtilBits> capture$3, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *capture$4) {
  JreStrongAssign(&self->val$parents_, capture$0);
  JreStrongAssign(&self->val$children_, capture$1);
  JreStrongAssign(&self->val$values_, capture$2);
  JreStrongAssign(&self->val$docsWithValue_, capture$3);
  JreStrongAssign(&self->val$selection_, capture$4);
  OrgApacheLuceneIndexNumericDocValues_init(self);
}

OrgApacheLuceneSearchJoinBlockJoinSelector_$3 *new_OrgApacheLuceneSearchJoinBlockJoinSelector_$3_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(OrgApacheLuceneUtilBitSet *capture$0, OrgApacheLuceneUtilBitSet *capture$1, OrgApacheLuceneIndexNumericDocValues *capture$2, id<OrgApacheLuceneUtilBits> capture$3, OrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum *capture$4) {
  OrgApacheLuceneSearchJoinBlockJoinSelector_$3 *self = [OrgApacheLuceneSearchJoinBlockJoinSelector_$3 alloc];
  OrgApacheLuceneSearchJoinBlockJoinSelector_$3_initWithOrgApacheLuceneUtilBitSet_withOrgApacheLuceneUtilBitSet_withOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_withOrgApacheLuceneSearchJoinBlockJoinSelector_TypeEnum_(self, capture$0, capture$1, capture$2, capture$3, capture$4);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBlockJoinSelector_$3)
