//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/search/BlockJoinComparatorSource.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/BlockJoinComparatorSource.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/FieldComparatorSource.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/LeafFieldComparator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/util/BitDocIdSet.h"
#include "org/apache/lucene/util/BitSet.h"
#include "org/apache/lucene/util/Bits.h"

@interface OrgApacheLuceneSearchBlockJoinComparatorSource_$1 : OrgApacheLuceneSearchFieldComparator {
 @public
  OrgApacheLuceneSearchBlockJoinComparatorSource *this$0_;
  jint bottomParent_;
  jint bottomChild_;
  OrgApacheLuceneUtilBitSet *parentBits_;
  IOSObjectArray *parentLeafComparators_;
  IOSObjectArray *childLeafComparators_;
  IOSIntArray *val$childSlots_;
  IOSIntArray *val$parentSlots_;
  IOSObjectArray *val$parentComparators_;
  IOSObjectArray *val$childComparators_;
  IOSIntArray *val$childReverseMul_;
  IOSIntArray *val$parentReverseMul_;
}

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (void)setTopValueWithId:(JavaLangInteger *)value;

- (id<OrgApacheLuceneSearchLeafFieldComparator>)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (JavaLangInteger *)valueWithInt:(jint)slot;

- (jint)parentWithInt:(jint)doc;

- (jint)compareWithInt:(jint)docID1
               withInt:(jint)parent1
               withInt:(jint)docID2
               withInt:(jint)parent2;

- (jint)compareWithInt:(jint)docID1
               withInt:(jint)docID2
withOrgApacheLuceneSearchLeafFieldComparatorArray:(IOSObjectArray *)comparators
          withIntArray:(IOSIntArray *)reverseMul;

- (instancetype)initWithOrgApacheLuceneSearchBlockJoinComparatorSource:(OrgApacheLuceneSearchBlockJoinComparatorSource *)outer$
                                                          withIntArray:(IOSIntArray *)capture$0
                                                          withIntArray:(IOSIntArray *)capture$1
                         withOrgApacheLuceneSearchFieldComparatorArray:(IOSObjectArray *)capture$2
                         withOrgApacheLuceneSearchFieldComparatorArray:(IOSObjectArray *)capture$3
                                                          withIntArray:(IOSIntArray *)capture$4
                                                          withIntArray:(IOSIntArray *)capture$5;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBlockJoinComparatorSource_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, this$0_, OrgApacheLuceneSearchBlockJoinComparatorSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, parentBits_, OrgApacheLuceneUtilBitSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, parentLeafComparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, childLeafComparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, val$childSlots_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, val$parentSlots_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, val$parentComparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, val$childComparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, val$childReverseMul_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1, val$parentReverseMul_, IOSIntArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchBlockJoinComparatorSource_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_withIntArray_withIntArray_withOrgApacheLuceneSearchFieldComparatorArray_withOrgApacheLuceneSearchFieldComparatorArray_withIntArray_withIntArray_(OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *self, OrgApacheLuceneSearchBlockJoinComparatorSource *outer$, IOSIntArray *capture$0, IOSIntArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSIntArray *capture$4, IOSIntArray *capture$5);

__attribute__((unused)) static OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *new_OrgApacheLuceneSearchBlockJoinComparatorSource_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_withIntArray_withIntArray_withOrgApacheLuceneSearchFieldComparatorArray_withOrgApacheLuceneSearchFieldComparatorArray_withIntArray_withIntArray_(OrgApacheLuceneSearchBlockJoinComparatorSource *outer$, IOSIntArray *capture$0, IOSIntArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSIntArray *capture$4, IOSIntArray *capture$5) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1)

@interface OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1 : NSObject < OrgApacheLuceneSearchLeafFieldComparator > {
 @public
  OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *this$0_;
}

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)slot;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (instancetype)initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1:(OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1, this$0_, OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *)

__attribute__((unused)) static void OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1_(OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1 *self, OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *outer$);

__attribute__((unused)) static OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1 *new_OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1_(OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1)

@implementation OrgApacheLuceneSearchBlockJoinComparatorSource

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)parentsFilter
                      withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)parentSort {
  OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_(self, parentsFilter, parentSort);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)parentsFilter
                      withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)parentSort
                      withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)childSort {
  OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_(self, parentsFilter, parentSort, childSort);
  return self;
}

- (OrgApacheLuceneSearchFieldComparator *)newComparatorWithNSString:(NSString *)fieldname
                                                            withInt:(jint)numHits
                                                            withInt:(jint)sortPos
                                                        withBoolean:(jboolean)reversed {
  IOSIntArray *parentSlots = [IOSIntArray arrayWithLength:numHits];
  IOSIntArray *childSlots = [IOSIntArray arrayWithLength:numHits];
  IOSObjectArray *parentFields = [((OrgApacheLuceneSearchSort *) nil_chk(parentSort_)) getSort];
  IOSIntArray *parentReverseMul = [IOSIntArray arrayWithLength:((IOSObjectArray *) nil_chk(parentFields))->size_];
  IOSObjectArray *parentComparators = [IOSObjectArray arrayWithLength:parentFields->size_ type:OrgApacheLuceneSearchFieldComparator_class_()];
  for (jint i = 0; i < parentFields->size_; i++) {
    *IOSIntArray_GetRef(parentReverseMul, i) = [((OrgApacheLuceneSearchSortField *) nil_chk(IOSObjectArray_Get(parentFields, i))) getReverse] ? -1 : 1;
    IOSObjectArray_Set(parentComparators, i, [((OrgApacheLuceneSearchSortField *) nil_chk(IOSObjectArray_Get(parentFields, i))) getComparatorWithInt:1 withInt:i]);
  }
  IOSObjectArray *childFields = [((OrgApacheLuceneSearchSort *) nil_chk(childSort_)) getSort];
  IOSIntArray *childReverseMul = [IOSIntArray arrayWithLength:((IOSObjectArray *) nil_chk(childFields))->size_];
  IOSObjectArray *childComparators = [IOSObjectArray arrayWithLength:childFields->size_ type:OrgApacheLuceneSearchFieldComparator_class_()];
  for (jint i = 0; i < childFields->size_; i++) {
    *IOSIntArray_GetRef(childReverseMul, i) = [((OrgApacheLuceneSearchSortField *) nil_chk(IOSObjectArray_Get(childFields, i))) getReverse] ? -1 : 1;
    IOSObjectArray_Set(childComparators, i, [((OrgApacheLuceneSearchSortField *) nil_chk(IOSObjectArray_Get(childFields, i))) getComparatorWithInt:1 withInt:i]);
  }
  return [new_OrgApacheLuceneSearchBlockJoinComparatorSource_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_withIntArray_withIntArray_withOrgApacheLuceneSearchFieldComparatorArray_withOrgApacheLuceneSearchFieldComparatorArray_withIntArray_withIntArray_(self, childSlots, parentSlots, parentComparators, childComparators, childReverseMul, parentReverseMul) autorelease];
}

- (NSString *)description {
  return JreStrcat("$@$@C", @"blockJoin(parentSort=", parentSort_, @",childSort=", childSort_, ')');
}

- (void)dealloc {
  RELEASE_(parentsFilter_);
  RELEASE_(parentSort_);
  RELEASE_(childSort_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchFilter:withOrgApacheLuceneSearchSort:", "BlockJoinComparatorSource", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchFilter:withOrgApacheLuceneSearchSort:withOrgApacheLuceneSearchSort:", "BlockJoinComparatorSource", NULL, 0x1, NULL, NULL },
    { "newComparatorWithNSString:withInt:withInt:withBoolean:", "newComparator", "Lorg.apache.lucene.search.FieldComparator;", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "parentsFilter_", NULL, 0x10, "Lorg.apache.lucene.search.Filter;", NULL, NULL, .constantValue.asLong = 0 },
    { "parentSort_", NULL, 0x10, "Lorg.apache.lucene.search.Sort;", NULL, NULL, .constantValue.asLong = 0 },
    { "childSort_", NULL, 0x10, "Lorg.apache.lucene.search.Sort;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBlockJoinComparatorSource = { 2, "BlockJoinComparatorSource", "org.apache.lucene.search", NULL, 0x1, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchBlockJoinComparatorSource;
}

@end

void OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchBlockJoinComparatorSource *self, OrgApacheLuceneSearchFilter *parentsFilter, OrgApacheLuceneSearchSort *parentSort) {
  OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_(self, parentsFilter, parentSort, [new_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(JreLoadStatic(OrgApacheLuceneSearchSortField, FIELD_DOC_)) autorelease]);
}

OrgApacheLuceneSearchBlockJoinComparatorSource *new_OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchFilter *parentsFilter, OrgApacheLuceneSearchSort *parentSort) {
  OrgApacheLuceneSearchBlockJoinComparatorSource *self = [OrgApacheLuceneSearchBlockJoinComparatorSource alloc];
  OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_(self, parentsFilter, parentSort);
  return self;
}

void OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchBlockJoinComparatorSource *self, OrgApacheLuceneSearchFilter *parentsFilter, OrgApacheLuceneSearchSort *parentSort, OrgApacheLuceneSearchSort *childSort) {
  OrgApacheLuceneSearchFieldComparatorSource_init(self);
  JreStrongAssign(&self->parentsFilter_, parentsFilter);
  JreStrongAssign(&self->parentSort_, parentSort);
  JreStrongAssign(&self->childSort_, childSort);
}

OrgApacheLuceneSearchBlockJoinComparatorSource *new_OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchFilter *parentsFilter, OrgApacheLuceneSearchSort *parentSort, OrgApacheLuceneSearchSort *childSort) {
  OrgApacheLuceneSearchBlockJoinComparatorSource *self = [OrgApacheLuceneSearchBlockJoinComparatorSource alloc];
  OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_(self, parentsFilter, parentSort, childSort);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBlockJoinComparatorSource)

@implementation OrgApacheLuceneSearchBlockJoinComparatorSource_$1

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2 {
  @try {
    return [self compareWithInt:IOSIntArray_Get(nil_chk(val$childSlots_), slot1) withInt:IOSIntArray_Get(nil_chk(val$parentSlots_), slot1) withInt:IOSIntArray_Get(val$childSlots_, slot2) withInt:IOSIntArray_Get(val$parentSlots_, slot2)];
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)setTopValueWithId:(JavaLangInteger *)value {
  @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"this comparator cannot be used with deep paging") autorelease];
}

- (id<OrgApacheLuceneSearchLeafFieldComparator>)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  if (parentBits_ != nil) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"This comparator can only be used on a single segment") autorelease];
  }
  OrgApacheLuceneSearchDocIdSet *parents = [((OrgApacheLuceneSearchFilter *) nil_chk(this$0_->parentsFilter_)) getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneUtilBits:nil];
  if (parents == nil) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$", @"LeafReader ", [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], @" contains no parents!")) autorelease];
  }
  if ([parents isKindOfClass:[OrgApacheLuceneUtilBitDocIdSet class]] == false) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@", @"parentFilter must return BitSet; got ", parents)) autorelease];
  }
  JreStrongAssign(&parentBits_, (OrgApacheLuceneUtilBitSet *) check_class_cast([((OrgApacheLuceneSearchDocIdSet *) nil_chk(parents)) bits], [OrgApacheLuceneUtilBitSet class]));
  JreStrongAssignAndConsume(&parentLeafComparators_, [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(val$parentComparators_))->size_ type:OrgApacheLuceneSearchLeafFieldComparator_class_()]);
  for (jint i = 0; i < val$parentComparators_->size_; i++) {
    IOSObjectArray_Set(parentLeafComparators_, i, [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(val$parentComparators_, i))) getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:context]);
  }
  JreStrongAssignAndConsume(&childLeafComparators_, [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(val$childComparators_))->size_ type:OrgApacheLuceneSearchLeafFieldComparator_class_()]);
  for (jint i = 0; i < val$childComparators_->size_; i++) {
    IOSObjectArray_Set(childLeafComparators_, i, [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(val$childComparators_, i))) getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:context]);
  }
  return [new_OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1_(self) autorelease];
}

- (JavaLangInteger *)valueWithInt:(jint)slot {
  @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"filling sort field values is not yet supported") autorelease];
}

- (jint)parentWithInt:(jint)doc {
  return [((OrgApacheLuceneUtilBitSet *) nil_chk(parentBits_)) nextSetBitWithInt:doc];
}

- (jint)compareWithInt:(jint)docID1
               withInt:(jint)parent1
               withInt:(jint)docID2
               withInt:(jint)parent2 {
  if (parent1 == parent2) {
    if (docID1 == parent1 || docID2 == parent2) {
      return docID1 - docID2;
    }
    else {
      return [self compareWithInt:docID1 withInt:docID2 withOrgApacheLuceneSearchLeafFieldComparatorArray:childLeafComparators_ withIntArray:val$childReverseMul_];
    }
  }
  else {
    jint cmp = [self compareWithInt:parent1 withInt:parent2 withOrgApacheLuceneSearchLeafFieldComparatorArray:parentLeafComparators_ withIntArray:val$parentReverseMul_];
    if (cmp == 0) {
      return parent1 - parent2;
    }
    else {
      return cmp;
    }
  }
}

- (jint)compareWithInt:(jint)docID1
               withInt:(jint)docID2
withOrgApacheLuceneSearchLeafFieldComparatorArray:(IOSObjectArray *)comparators
          withIntArray:(IOSIntArray *)reverseMul {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(comparators))->size_; i++) {
    [((id<OrgApacheLuceneSearchLeafFieldComparator>) nil_chk(IOSObjectArray_Get(comparators, i))) copy__WithInt:0 withInt:docID1];
    [((id<OrgApacheLuceneSearchLeafFieldComparator>) nil_chk(IOSObjectArray_Get(comparators, i))) setBottomWithInt:0];
    jint comp = IOSIntArray_Get(nil_chk(reverseMul), i) * [((id<OrgApacheLuceneSearchLeafFieldComparator>) nil_chk(IOSObjectArray_Get(comparators, i))) compareBottomWithInt:docID2];
    if (comp != 0) {
      return comp;
    }
  }
  return 0;
}

- (instancetype)initWithOrgApacheLuceneSearchBlockJoinComparatorSource:(OrgApacheLuceneSearchBlockJoinComparatorSource *)outer$
                                                          withIntArray:(IOSIntArray *)capture$0
                                                          withIntArray:(IOSIntArray *)capture$1
                         withOrgApacheLuceneSearchFieldComparatorArray:(IOSObjectArray *)capture$2
                         withOrgApacheLuceneSearchFieldComparatorArray:(IOSObjectArray *)capture$3
                                                          withIntArray:(IOSIntArray *)capture$4
                                                          withIntArray:(IOSIntArray *)capture$5 {
  OrgApacheLuceneSearchBlockJoinComparatorSource_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_withIntArray_withIntArray_withOrgApacheLuceneSearchFieldComparatorArray_withOrgApacheLuceneSearchFieldComparatorArray_withIntArray_withIntArray_(self, outer$, capture$0, capture$1, capture$2, capture$3, capture$4, capture$5);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(parentBits_);
  RELEASE_(parentLeafComparators_);
  RELEASE_(childLeafComparators_);
  RELEASE_(val$childSlots_);
  RELEASE_(val$parentSlots_);
  RELEASE_(val$parentComparators_);
  RELEASE_(val$childComparators_);
  RELEASE_(val$childReverseMul_);
  RELEASE_(val$parentReverseMul_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "compareWithInt:withInt:", "compare", "I", 0x1, NULL, NULL },
    { "setTopValueWithId:", "setTopValue", "V", 0x1, NULL, NULL },
    { "getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:", "getLeafComparator", "Lorg.apache.lucene.search.LeafFieldComparator;", 0x1, "Ljava.io.IOException;", NULL },
    { "valueWithInt:", "value", "Ljava.lang.Integer;", 0x1, NULL, NULL },
    { "parentWithInt:", "parent", "I", 0x0, NULL, NULL },
    { "compareWithInt:withInt:withInt:withInt:", "compare", "I", 0x0, "Ljava.io.IOException;", NULL },
    { "compareWithInt:withInt:withOrgApacheLuceneSearchLeafFieldComparatorArray:withIntArray:", "compare", "I", 0x0, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneSearchBlockJoinComparatorSource:withIntArray:withIntArray:withOrgApacheLuceneSearchFieldComparatorArray:withOrgApacheLuceneSearchFieldComparatorArray:withIntArray:withIntArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.BlockJoinComparatorSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "bottomParent_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bottomChild_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "parentBits_", NULL, 0x0, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "parentLeafComparators_", NULL, 0x0, "[Lorg.apache.lucene.search.LeafFieldComparator;", NULL, NULL, .constantValue.asLong = 0 },
    { "childLeafComparators_", NULL, 0x0, "[Lorg.apache.lucene.search.LeafFieldComparator;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$childSlots_", NULL, 0x1012, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$parentSlots_", NULL, 0x1012, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$parentComparators_", NULL, 0x1012, "[Lorg.apache.lucene.search.FieldComparator;", NULL, "[Lorg/apache/lucene/search/FieldComparator<*>;", .constantValue.asLong = 0 },
    { "val$childComparators_", NULL, 0x1012, "[Lorg.apache.lucene.search.FieldComparator;", NULL, "[Lorg/apache/lucene/search/FieldComparator<*>;", .constantValue.asLong = 0 },
    { "val$childReverseMul_", NULL, 0x1012, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$parentReverseMul_", NULL, 0x1012, "[I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.Integer;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchBlockJoinComparatorSource", "newComparatorWithNSString:withInt:withInt:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBlockJoinComparatorSource_$1 = { 2, "", "org.apache.lucene.search", "BlockJoinComparatorSource", 0x8008, 8, methods, 12, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lorg/apache/lucene/search/FieldComparator<Ljava/lang/Integer;>;" };
  return &_OrgApacheLuceneSearchBlockJoinComparatorSource_$1;
}

@end

void OrgApacheLuceneSearchBlockJoinComparatorSource_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_withIntArray_withIntArray_withOrgApacheLuceneSearchFieldComparatorArray_withOrgApacheLuceneSearchFieldComparatorArray_withIntArray_withIntArray_(OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *self, OrgApacheLuceneSearchBlockJoinComparatorSource *outer$, IOSIntArray *capture$0, IOSIntArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSIntArray *capture$4, IOSIntArray *capture$5) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$childSlots_, capture$0);
  JreStrongAssign(&self->val$parentSlots_, capture$1);
  JreStrongAssign(&self->val$parentComparators_, capture$2);
  JreStrongAssign(&self->val$childComparators_, capture$3);
  JreStrongAssign(&self->val$childReverseMul_, capture$4);
  JreStrongAssign(&self->val$parentReverseMul_, capture$5);
  OrgApacheLuceneSearchFieldComparator_init(self);
}

OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *new_OrgApacheLuceneSearchBlockJoinComparatorSource_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_withIntArray_withIntArray_withOrgApacheLuceneSearchFieldComparatorArray_withOrgApacheLuceneSearchFieldComparatorArray_withIntArray_withIntArray_(OrgApacheLuceneSearchBlockJoinComparatorSource *outer$, IOSIntArray *capture$0, IOSIntArray *capture$1, IOSObjectArray *capture$2, IOSObjectArray *capture$3, IOSIntArray *capture$4, IOSIntArray *capture$5) {
  OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *self = [OrgApacheLuceneSearchBlockJoinComparatorSource_$1 alloc];
  OrgApacheLuceneSearchBlockJoinComparatorSource_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_withIntArray_withIntArray_withOrgApacheLuceneSearchFieldComparatorArray_withOrgApacheLuceneSearchFieldComparatorArray_withIntArray_withIntArray_(self, outer$, capture$0, capture$1, capture$2, capture$3, capture$4, capture$5);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBlockJoinComparatorSource_$1)

@implementation OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1

- (jint)compareBottomWithInt:(jint)doc {
  return [this$0_ compareWithInt:this$0_->bottomChild_ withInt:this$0_->bottomParent_ withInt:doc withInt:[this$0_ parentWithInt:doc]];
}

- (jint)compareTopWithInt:(jint)doc {
  @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"this comparator cannot be used with deep paging") autorelease];
}

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc {
  *IOSIntArray_GetRef(nil_chk(this$0_->val$childSlots_), slot) = doc;
  *IOSIntArray_GetRef(nil_chk(this$0_->val$parentSlots_), slot) = [this$0_ parentWithInt:doc];
}

- (void)setBottomWithInt:(jint)slot {
  this$0_->bottomParent_ = IOSIntArray_Get(nil_chk(this$0_->val$parentSlots_), slot);
  this$0_->bottomChild_ = IOSIntArray_Get(nil_chk(this$0_->val$childSlots_), slot);
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  {
    IOSObjectArray *a__ = this$0_->parentLeafComparators_;
    id<OrgApacheLuceneSearchLeafFieldComparator> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<OrgApacheLuceneSearchLeafFieldComparator> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<OrgApacheLuceneSearchLeafFieldComparator> comp = *b__++;
      [((id<OrgApacheLuceneSearchLeafFieldComparator>) nil_chk(comp)) setScorerWithOrgApacheLuceneSearchScorer:scorer];
    }
  }
  {
    IOSObjectArray *a__ = this$0_->childLeafComparators_;
    id<OrgApacheLuceneSearchLeafFieldComparator> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<OrgApacheLuceneSearchLeafFieldComparator> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<OrgApacheLuceneSearchLeafFieldComparator> comp = *b__++;
      [((id<OrgApacheLuceneSearchLeafFieldComparator>) nil_chk(comp)) setScorerWithOrgApacheLuceneSearchScorer:scorer];
    }
  }
}

- (instancetype)initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1:(OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *)outer$ {
  OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "compareBottomWithInt:", "compareBottom", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "compareTopWithInt:", "compareTop", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "copy__WithInt:withInt:", "copy", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "setBottomWithInt:", "setBottom", "V", 0x1, NULL, NULL },
    { "setScorerWithOrgApacheLuceneSearchScorer:", "setScorer", "V", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.BlockJoinComparatorSource$1;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchBlockJoinComparatorSource_$1", "getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1 = { 2, "", "org.apache.lucene.search", "BlockJoinComparatorSource$", 0x8008, 6, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1;
}

@end

void OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1_(OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1 *self, OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1 *new_OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1_(OrgApacheLuceneSearchBlockJoinComparatorSource_$1 *outer$) {
  OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1 *self = [OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1 alloc];
  OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1_initWithOrgApacheLuceneSearchBlockJoinComparatorSource_$1_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBlockJoinComparatorSource_$1_$1)
