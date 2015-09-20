//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BytesRefArray.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/util/Arrays.h"
#include "java/util/Comparator.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/ByteBlockPool.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefArray.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/BytesRefIterator.h"
#include "org/apache/lucene/util/Counter.h"
#include "org/apache/lucene/util/IntroSorter.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneUtilBytesRefArray () {
 @public
  OrgApacheLuceneUtilByteBlockPool *pool_;
  IOSIntArray *offsets_;
  jint lastElement_;
  jint currentOffset_;
  OrgApacheLuceneUtilCounter *bytesUsed_;
}

- (IOSIntArray *)sortWithJavaUtilComparator:(id<JavaUtilComparator>)comp;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray, pool_, OrgApacheLuceneUtilByteBlockPool *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray, offsets_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray, bytesUsed_, OrgApacheLuceneUtilCounter *)

__attribute__((unused)) static IOSIntArray *OrgApacheLuceneUtilBytesRefArray_sortWithJavaUtilComparator_(OrgApacheLuceneUtilBytesRefArray *self, id<JavaUtilComparator> comp);

@interface OrgApacheLuceneUtilBytesRefArray_$1 : OrgApacheLuceneUtilIntroSorter {
 @public
  OrgApacheLuceneUtilBytesRefArray *this$0_;
  OrgApacheLuceneUtilBytesRef *pivot_;
  OrgApacheLuceneUtilBytesRefBuilder *pivotBuilder_, *scratch1_, *scratch2_;
  IOSIntArray *val$orderedEntries_;
  id<JavaUtilComparator> val$comp_;
}

- (void)swapWithInt:(jint)i
            withInt:(jint)j;

- (jint)compareWithInt:(jint)i
               withInt:(jint)j;

- (void)setPivotWithInt:(jint)i;

- (jint)comparePivotWithInt:(jint)j;

- (instancetype)initWithOrgApacheLuceneUtilBytesRefArray:(OrgApacheLuceneUtilBytesRefArray *)outer$
                                            withIntArray:(IOSIntArray *)capture$0
                                  withJavaUtilComparator:(id<JavaUtilComparator>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRefArray_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$1, this$0_, OrgApacheLuceneUtilBytesRefArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$1, pivot_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$1, pivotBuilder_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$1, scratch1_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$1, scratch2_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$1, val$orderedEntries_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$1, val$comp_, id<JavaUtilComparator>)

__attribute__((unused)) static void OrgApacheLuceneUtilBytesRefArray_$1_initWithOrgApacheLuceneUtilBytesRefArray_withIntArray_withJavaUtilComparator_(OrgApacheLuceneUtilBytesRefArray_$1 *self, OrgApacheLuceneUtilBytesRefArray *outer$, IOSIntArray *capture$0, id<JavaUtilComparator> capture$1);

__attribute__((unused)) static OrgApacheLuceneUtilBytesRefArray_$1 *new_OrgApacheLuceneUtilBytesRefArray_$1_initWithOrgApacheLuceneUtilBytesRefArray_withIntArray_withJavaUtilComparator_(OrgApacheLuceneUtilBytesRefArray *outer$, IOSIntArray *capture$0, id<JavaUtilComparator> capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRefArray_$1)

@interface OrgApacheLuceneUtilBytesRefArray_$2 : NSObject < OrgApacheLuceneUtilBytesRefIterator > {
 @public
  OrgApacheLuceneUtilBytesRefArray *this$0_;
  jint pos_;
  jint val$size_;
  OrgApacheLuceneUtilBytesRefBuilder *val$spare_;
  IOSIntArray *val$indices_;
}

- (OrgApacheLuceneUtilBytesRef *)next;

- (instancetype)initWithOrgApacheLuceneUtilBytesRefArray:(OrgApacheLuceneUtilBytesRefArray *)outer$
                                                 withInt:(jint)capture$0
                  withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)capture$1
                                            withIntArray:(IOSIntArray *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRefArray_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$2, this$0_, OrgApacheLuceneUtilBytesRefArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$2, val$spare_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefArray_$2, val$indices_, IOSIntArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilBytesRefArray_$2_initWithOrgApacheLuceneUtilBytesRefArray_withInt_withOrgApacheLuceneUtilBytesRefBuilder_withIntArray_(OrgApacheLuceneUtilBytesRefArray_$2 *self, OrgApacheLuceneUtilBytesRefArray *outer$, jint capture$0, OrgApacheLuceneUtilBytesRefBuilder *capture$1, IOSIntArray *capture$2);

__attribute__((unused)) static OrgApacheLuceneUtilBytesRefArray_$2 *new_OrgApacheLuceneUtilBytesRefArray_$2_initWithOrgApacheLuceneUtilBytesRefArray_withInt_withOrgApacheLuceneUtilBytesRefBuilder_withIntArray_(OrgApacheLuceneUtilBytesRefArray *outer$, jint capture$0, OrgApacheLuceneUtilBytesRefBuilder *capture$1, IOSIntArray *capture$2) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRefArray_$2)

@implementation OrgApacheLuceneUtilBytesRefArray

- (instancetype)initWithOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed {
  OrgApacheLuceneUtilBytesRefArray_initWithOrgApacheLuceneUtilCounter_(self, bytesUsed);
  return self;
}

- (void)clear {
  lastElement_ = 0;
  currentOffset_ = 0;
  JavaUtilArrays_fillWithIntArray_withInt_(offsets_, 0);
  [((OrgApacheLuceneUtilByteBlockPool *) nil_chk(pool_)) resetWithBoolean:false withBoolean:true];
}

- (jint)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  if (lastElement_ >= ((IOSIntArray *) nil_chk(offsets_))->size_) {
    jint oldLen = offsets_->size_;
    JreStrongAssign(&offsets_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(offsets_, offsets_->size_ + 1));
    [((OrgApacheLuceneUtilCounter *) nil_chk(bytesUsed_)) addAndGetWithLong:(((IOSIntArray *) nil_chk(offsets_))->size_ - oldLen) * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT];
  }
  [((OrgApacheLuceneUtilByteBlockPool *) nil_chk(pool_)) appendWithOrgApacheLuceneUtilBytesRef:bytes];
  *IOSIntArray_GetRef(nil_chk(offsets_), lastElement_++) = currentOffset_;
  currentOffset_ += ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_;
  return lastElement_ - 1;
}

- (jint)size {
  return lastElement_;
}

- (OrgApacheLuceneUtilBytesRef *)getWithOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)spare
                                                                   withInt:(jint)index {
  if (lastElement_ > index) {
    jint offset = IOSIntArray_Get(nil_chk(offsets_), index);
    jint length = index == lastElement_ - 1 ? currentOffset_ - offset : IOSIntArray_Get(offsets_, index + 1) - offset;
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(spare)) growWithInt:length];
    [spare setLengthWithInt:length];
    [((OrgApacheLuceneUtilByteBlockPool *) nil_chk(pool_)) readBytesWithLong:offset withByteArray:[spare bytes] withInt:0 withInt:[spare length]];
    return [spare get];
  }
  @throw [new_JavaLangIndexOutOfBoundsException_initWithNSString_(JreStrcat("$I$I", @"index ", index, @" must be less than the size: ", lastElement_)) autorelease];
}

- (IOSIntArray *)sortWithJavaUtilComparator:(id<JavaUtilComparator>)comp {
  return OrgApacheLuceneUtilBytesRefArray_sortWithJavaUtilComparator_(self, comp);
}

- (id<OrgApacheLuceneUtilBytesRefIterator>)iterator {
  return [self iteratorWithJavaUtilComparator:nil];
}

- (id<OrgApacheLuceneUtilBytesRefIterator>)iteratorWithJavaUtilComparator:(id<JavaUtilComparator>)comp {
  OrgApacheLuceneUtilBytesRefBuilder *spare = [new_OrgApacheLuceneUtilBytesRefBuilder_init() autorelease];
  jint size = [self size];
  IOSIntArray *indices = comp == nil ? nil : OrgApacheLuceneUtilBytesRefArray_sortWithJavaUtilComparator_(self, comp);
  return [new_OrgApacheLuceneUtilBytesRefArray_$2_initWithOrgApacheLuceneUtilBytesRefArray_withInt_withOrgApacheLuceneUtilBytesRefBuilder_withIntArray_(self, size, spare, indices) autorelease];
}

- (void)dealloc {
  RELEASE_(pool_);
  RELEASE_(offsets_);
  RELEASE_(bytesUsed_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilCounter:", "BytesRefArray", NULL, 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "appendWithOrgApacheLuceneUtilBytesRef:", "append", "I", 0x1, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "getWithOrgApacheLuceneUtilBytesRefBuilder:withInt:", "get", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "sortWithJavaUtilComparator:", "sort", "[I", 0x2, NULL, NULL },
    { "iterator", NULL, "Lorg.apache.lucene.util.BytesRefIterator;", 0x1, NULL, NULL },
    { "iteratorWithJavaUtilComparator:", "iterator", "Lorg.apache.lucene.util.BytesRefIterator;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pool_", NULL, 0x12, "Lorg.apache.lucene.util.ByteBlockPool;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsets_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "lastElement_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "currentOffset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "bytesUsed_", NULL, 0x12, "Lorg.apache.lucene.util.Counter;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBytesRefArray = { 2, "BytesRefArray", "org.apache.lucene.util", NULL, 0x11, 8, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilBytesRefArray;
}

@end

void OrgApacheLuceneUtilBytesRefArray_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilBytesRefArray *self, OrgApacheLuceneUtilCounter *bytesUsed) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->offsets_, [IOSIntArray newArrayWithLength:1]);
  self->lastElement_ = 0;
  self->currentOffset_ = 0;
  JreStrongAssignAndConsume(&self->pool_, new_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_([new_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(bytesUsed) autorelease]));
  [self->pool_ nextBuffer];
  [((OrgApacheLuceneUtilCounter *) nil_chk(bytesUsed)) addAndGetWithLong:JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER_) + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT];
  JreStrongAssign(&self->bytesUsed_, bytesUsed);
}

OrgApacheLuceneUtilBytesRefArray *new_OrgApacheLuceneUtilBytesRefArray_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *bytesUsed) {
  OrgApacheLuceneUtilBytesRefArray *self = [OrgApacheLuceneUtilBytesRefArray alloc];
  OrgApacheLuceneUtilBytesRefArray_initWithOrgApacheLuceneUtilCounter_(self, bytesUsed);
  return self;
}

IOSIntArray *OrgApacheLuceneUtilBytesRefArray_sortWithJavaUtilComparator_(OrgApacheLuceneUtilBytesRefArray *self, id<JavaUtilComparator> comp) {
  IOSIntArray *orderedEntries = [IOSIntArray arrayWithLength:[self size]];
  for (jint i = 0; i < orderedEntries->size_; i++) {
    *IOSIntArray_GetRef(orderedEntries, i) = i;
  }
  [((OrgApacheLuceneUtilBytesRefArray_$1 *) [new_OrgApacheLuceneUtilBytesRefArray_$1_initWithOrgApacheLuceneUtilBytesRefArray_withIntArray_withJavaUtilComparator_(self, orderedEntries, comp) autorelease]) sortWithInt:0 withInt:[self size]];
  return orderedEntries;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBytesRefArray)

@implementation OrgApacheLuceneUtilBytesRefArray_$1

- (void)swapWithInt:(jint)i
            withInt:(jint)j {
  jint o = IOSIntArray_Get(nil_chk(val$orderedEntries_), i);
  *IOSIntArray_GetRef(val$orderedEntries_, i) = IOSIntArray_Get(val$orderedEntries_, j);
  *IOSIntArray_GetRef(val$orderedEntries_, j) = o;
}

- (jint)compareWithInt:(jint)i
               withInt:(jint)j {
  jint idx1 = IOSIntArray_Get(nil_chk(val$orderedEntries_), i), idx2 = IOSIntArray_Get(val$orderedEntries_, j);
  return [((id<JavaUtilComparator>) nil_chk(val$comp_)) compareWithId:[this$0_ getWithOrgApacheLuceneUtilBytesRefBuilder:scratch1_ withInt:idx1] withId:[this$0_ getWithOrgApacheLuceneUtilBytesRefBuilder:scratch2_ withInt:idx2]];
}

- (void)setPivotWithInt:(jint)i {
  jint index = IOSIntArray_Get(nil_chk(val$orderedEntries_), i);
  JreStrongAssign(&pivot_, [this$0_ getWithOrgApacheLuceneUtilBytesRefBuilder:pivotBuilder_ withInt:index]);
}

- (jint)comparePivotWithInt:(jint)j {
  jint index = IOSIntArray_Get(nil_chk(val$orderedEntries_), j);
  return [((id<JavaUtilComparator>) nil_chk(val$comp_)) compareWithId:pivot_ withId:[this$0_ getWithOrgApacheLuceneUtilBytesRefBuilder:scratch2_ withInt:index]];
}

- (instancetype)initWithOrgApacheLuceneUtilBytesRefArray:(OrgApacheLuceneUtilBytesRefArray *)outer$
                                            withIntArray:(IOSIntArray *)capture$0
                                  withJavaUtilComparator:(id<JavaUtilComparator>)capture$1 {
  OrgApacheLuceneUtilBytesRefArray_$1_initWithOrgApacheLuceneUtilBytesRefArray_withIntArray_withJavaUtilComparator_(self, outer$, capture$0, capture$1);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(pivot_);
  RELEASE_(pivotBuilder_);
  RELEASE_(scratch1_);
  RELEASE_(scratch2_);
  RELEASE_(val$orderedEntries_);
  RELEASE_(val$comp_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "swapWithInt:withInt:", "swap", "V", 0x4, NULL, NULL },
    { "compareWithInt:withInt:", "compare", "I", 0x4, NULL, NULL },
    { "setPivotWithInt:", "setPivot", "V", 0x4, NULL, NULL },
    { "comparePivotWithInt:", "comparePivot", "I", 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBytesRefArray:withIntArray:withJavaUtilComparator:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.BytesRefArray;", NULL, NULL, .constantValue.asLong = 0 },
    { "pivot_", NULL, 0x2, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "pivotBuilder_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "scratch1_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "scratch2_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$orderedEntries_", NULL, 0x1012, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$comp_", NULL, 0x1012, "Ljava.util.Comparator;", NULL, "Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilBytesRefArray", "sortWithJavaUtilComparator:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBytesRefArray_$1 = { 2, "", "org.apache.lucene.util", "BytesRefArray", 0x8008, 5, methods, 7, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilBytesRefArray_$1;
}

@end

void OrgApacheLuceneUtilBytesRefArray_$1_initWithOrgApacheLuceneUtilBytesRefArray_withIntArray_withJavaUtilComparator_(OrgApacheLuceneUtilBytesRefArray_$1 *self, OrgApacheLuceneUtilBytesRefArray *outer$, IOSIntArray *capture$0, id<JavaUtilComparator> capture$1) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$orderedEntries_, capture$0);
  JreStrongAssign(&self->val$comp_, capture$1);
  OrgApacheLuceneUtilIntroSorter_init(self);
  JreStrongAssignAndConsume(&self->pivotBuilder_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssignAndConsume(&self->scratch1_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssignAndConsume(&self->scratch2_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
}

OrgApacheLuceneUtilBytesRefArray_$1 *new_OrgApacheLuceneUtilBytesRefArray_$1_initWithOrgApacheLuceneUtilBytesRefArray_withIntArray_withJavaUtilComparator_(OrgApacheLuceneUtilBytesRefArray *outer$, IOSIntArray *capture$0, id<JavaUtilComparator> capture$1) {
  OrgApacheLuceneUtilBytesRefArray_$1 *self = [OrgApacheLuceneUtilBytesRefArray_$1 alloc];
  OrgApacheLuceneUtilBytesRefArray_$1_initWithOrgApacheLuceneUtilBytesRefArray_withIntArray_withJavaUtilComparator_(self, outer$, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBytesRefArray_$1)

@implementation OrgApacheLuceneUtilBytesRefArray_$2

- (OrgApacheLuceneUtilBytesRef *)next {
  if (pos_ < val$size_) {
    return [this$0_ getWithOrgApacheLuceneUtilBytesRefBuilder:val$spare_ withInt:val$indices_ == nil ? pos_++ : IOSIntArray_Get(val$indices_, pos_++)];
  }
  return nil;
}

- (instancetype)initWithOrgApacheLuceneUtilBytesRefArray:(OrgApacheLuceneUtilBytesRefArray *)outer$
                                                 withInt:(jint)capture$0
                  withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)capture$1
                                            withIntArray:(IOSIntArray *)capture$2 {
  OrgApacheLuceneUtilBytesRefArray_$2_initWithOrgApacheLuceneUtilBytesRefArray_withInt_withOrgApacheLuceneUtilBytesRefBuilder_withIntArray_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$spare_);
  RELEASE_(val$indices_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBytesRefArray:withInt:withOrgApacheLuceneUtilBytesRefBuilder:withIntArray:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.BytesRefArray;", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$size_", NULL, 0x1012, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$spare_", NULL, 0x1012, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$indices_", NULL, 0x1012, "[I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilBytesRefArray", "iteratorWithJavaUtilComparator:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBytesRefArray_$2 = { 2, "", "org.apache.lucene.util", "BytesRefArray", 0x8008, 2, methods, 5, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilBytesRefArray_$2;
}

@end

void OrgApacheLuceneUtilBytesRefArray_$2_initWithOrgApacheLuceneUtilBytesRefArray_withInt_withOrgApacheLuceneUtilBytesRefBuilder_withIntArray_(OrgApacheLuceneUtilBytesRefArray_$2 *self, OrgApacheLuceneUtilBytesRefArray *outer$, jint capture$0, OrgApacheLuceneUtilBytesRefBuilder *capture$1, IOSIntArray *capture$2) {
  JreStrongAssign(&self->this$0_, outer$);
  self->val$size_ = capture$0;
  JreStrongAssign(&self->val$spare_, capture$1);
  JreStrongAssign(&self->val$indices_, capture$2);
  NSObject_init(self);
  self->pos_ = 0;
}

OrgApacheLuceneUtilBytesRefArray_$2 *new_OrgApacheLuceneUtilBytesRefArray_$2_initWithOrgApacheLuceneUtilBytesRefArray_withInt_withOrgApacheLuceneUtilBytesRefBuilder_withIntArray_(OrgApacheLuceneUtilBytesRefArray *outer$, jint capture$0, OrgApacheLuceneUtilBytesRefBuilder *capture$1, IOSIntArray *capture$2) {
  OrgApacheLuceneUtilBytesRefArray_$2 *self = [OrgApacheLuceneUtilBytesRefArray_$2 alloc];
  OrgApacheLuceneUtilBytesRefArray_$2_initWithOrgApacheLuceneUtilBytesRefArray_withInt_withOrgApacheLuceneUtilBytesRefBuilder_withIntArray_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBytesRefArray_$2)
