//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BitSet.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/BitSet.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/FixedBitSet.h"
#include "org/apache/lucene/util/SparseFixedBitSet.h"

@class OrgApacheLuceneUtilBitSet_LeapFrogCallBack;

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneUtilBitSet ()

- (void)leapFrogWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter
           withOrgApacheLuceneUtilBitSet_LeapFrogCallBack:(OrgApacheLuceneUtilBitSet_LeapFrogCallBack *)callback;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilBitSet_assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneUtilBitSet *self, OrgApacheLuceneSearchDocIdSetIterator *iter);

__attribute__((unused)) static void OrgApacheLuceneUtilBitSet_leapFrogWithOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneUtilBitSet_LeapFrogCallBack_(OrgApacheLuceneUtilBitSet *self, OrgApacheLuceneSearchDocIdSetIterator *iter, OrgApacheLuceneUtilBitSet_LeapFrogCallBack *callback);

@interface OrgApacheLuceneUtilBitSet_LeapFrogCallBack : NSObject

- (void)onMatchWithInt:(jint)doc;

- (void)finish;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBitSet_LeapFrogCallBack)

__attribute__((unused)) static void OrgApacheLuceneUtilBitSet_LeapFrogCallBack_init(OrgApacheLuceneUtilBitSet_LeapFrogCallBack *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBitSet_LeapFrogCallBack)

@interface OrgApacheLuceneUtilBitSet_$1 : OrgApacheLuceneUtilBitSet_LeapFrogCallBack {
 @public
  OrgApacheLuceneUtilBitSet *this$0_;
  jint previous_;
}

- (void)onMatchWithInt:(jint)doc;

- (void)finish;

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBitSet_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBitSet_$1, this$0_, OrgApacheLuceneUtilBitSet *)

__attribute__((unused)) static void OrgApacheLuceneUtilBitSet_$1_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet_$1 *self, OrgApacheLuceneUtilBitSet *outer$);

__attribute__((unused)) static OrgApacheLuceneUtilBitSet_$1 *new_OrgApacheLuceneUtilBitSet_$1_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBitSet_$1)

@interface OrgApacheLuceneUtilBitSet_$2 : OrgApacheLuceneUtilBitSet_LeapFrogCallBack {
 @public
  OrgApacheLuceneUtilBitSet *this$0_;
}

- (void)onMatchWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBitSet_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBitSet_$2, this$0_, OrgApacheLuceneUtilBitSet *)

__attribute__((unused)) static void OrgApacheLuceneUtilBitSet_$2_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet_$2 *self, OrgApacheLuceneUtilBitSet *outer$);

__attribute__((unused)) static OrgApacheLuceneUtilBitSet_$2 *new_OrgApacheLuceneUtilBitSet_$2_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBitSet_$2)

@implementation OrgApacheLuceneUtilBitSet

+ (OrgApacheLuceneUtilBitSet *)ofWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)it
                                                                   withInt:(jint)maxDoc {
  return OrgApacheLuceneUtilBitSet_ofWithOrgApacheLuceneSearchDocIdSetIterator_withInt_(it, maxDoc);
}

- (void)setWithInt:(jint)i {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)clearWithInt:(jint)startIndex
             withInt:(jint)endIndex {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jint)cardinality {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)approximateCardinality {
  return [self cardinality];
}

- (jint)prevSetBitWithInt:(jint)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)nextSetBitWithInt:(jint)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter {
  OrgApacheLuceneUtilBitSet_assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator_(self, iter);
}

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter {
  OrgApacheLuceneUtilBitSet_assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator_(self, iter);
  for (jint doc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iter)) nextDoc]; doc != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS; doc = [iter nextDoc]) {
    [self setWithInt:doc];
  }
}

- (void)leapFrogWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter
           withOrgApacheLuceneUtilBitSet_LeapFrogCallBack:(OrgApacheLuceneUtilBitSet_LeapFrogCallBack *)callback {
  OrgApacheLuceneUtilBitSet_leapFrogWithOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneUtilBitSet_LeapFrogCallBack_(self, iter, callback);
}

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter {
  OrgApacheLuceneUtilBitSet_assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator_(self, iter);
  OrgApacheLuceneUtilBitSet_leapFrogWithOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneUtilBitSet_LeapFrogCallBack_(self, iter, [new_OrgApacheLuceneUtilBitSet_$1_initWithOrgApacheLuceneUtilBitSet_(self) autorelease]);
}

- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iter {
  OrgApacheLuceneUtilBitSet_assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator_(self, iter);
  OrgApacheLuceneUtilBitSet_leapFrogWithOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneUtilBitSet_LeapFrogCallBack_(self, iter, [new_OrgApacheLuceneUtilBitSet_$2_initWithOrgApacheLuceneUtilBitSet_(self) autorelease]);
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilBitSet_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)__annotations_and__WithOrgApacheLuceneSearchDocIdSetIterator_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_andNotWithOrgApacheLuceneSearchDocIdSetIterator_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "ofWithOrgApacheLuceneSearchDocIdSetIterator:withInt:", "of", "Lorg.apache.lucene.util.BitSet;", 0x9, "Ljava.io.IOException;", NULL },
    { "setWithInt:", "set", "V", 0x401, NULL, NULL },
    { "clearWithInt:withInt:", "clear", "V", 0x401, NULL, NULL },
    { "cardinality", NULL, "I", 0x401, NULL, NULL },
    { "approximateCardinality", NULL, "I", 0x1, NULL, NULL },
    { "prevSetBitWithInt:", "prevSetBit", "I", 0x401, NULL, NULL },
    { "nextSetBitWithInt:", "nextSetBit", "I", 0x401, NULL, NULL },
    { "assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:", "assertUnpositioned", "V", 0x14, NULL, NULL },
    { "or__WithOrgApacheLuceneSearchDocIdSetIterator:", "or", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "leapFrogWithOrgApacheLuceneSearchDocIdSetIterator:withOrgApacheLuceneUtilBitSet_LeapFrogCallBack:", "leapFrog", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "and__WithOrgApacheLuceneSearchDocIdSetIterator:", "and", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "andNotWithOrgApacheLuceneSearchDocIdSetIterator:", "andNot", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.BitSet$LeapFrogCallBack;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBitSet = { 2, "BitSet", "org.apache.lucene.util", NULL, 0x401, 14, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilBitSet;
}

@end

OrgApacheLuceneUtilBitSet *OrgApacheLuceneUtilBitSet_ofWithOrgApacheLuceneSearchDocIdSetIterator_withInt_(OrgApacheLuceneSearchDocIdSetIterator *it, jint maxDoc) {
  OrgApacheLuceneUtilBitSet_initialize();
  jlong cost = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(it)) cost];
  jint threshold = JreURShift32(maxDoc, 7);
  OrgApacheLuceneUtilBitSet *set;
  if (cost < threshold) {
    set = [new_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(maxDoc) autorelease];
  }
  else {
    set = [new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(maxDoc) autorelease];
  }
  [((OrgApacheLuceneUtilBitSet *) nil_chk(set)) or__WithOrgApacheLuceneSearchDocIdSetIterator:it];
  return set;
}

void OrgApacheLuceneUtilBitSet_assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneUtilBitSet *self, OrgApacheLuceneSearchDocIdSetIterator *iter) {
  if ([((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iter)) docID] != -1) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I", @"This operation only works with an unpositioned iterator, got current position = ", [iter docID])) autorelease];
  }
}

void OrgApacheLuceneUtilBitSet_leapFrogWithOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneUtilBitSet_LeapFrogCallBack_(OrgApacheLuceneUtilBitSet *self, OrgApacheLuceneSearchDocIdSetIterator *iter, OrgApacheLuceneUtilBitSet_LeapFrogCallBack *callback) {
  jint length = [self length];
  jint bitSetDoc = -1;
  jint disiDoc = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iter)) nextDoc];
  while (true) {
    JreAssert((bitSetDoc <= disiDoc), (@"org/apache/lucene/util/BitSet.java:111 condition failed: assert bitSetDoc <= disiDoc;"));
    if (disiDoc >= length) {
      [((OrgApacheLuceneUtilBitSet_LeapFrogCallBack *) nil_chk(callback)) finish];
      return;
    }
    if (bitSetDoc < disiDoc) {
      bitSetDoc = [self nextSetBitWithInt:disiDoc];
    }
    if (bitSetDoc == disiDoc) {
      [((OrgApacheLuceneUtilBitSet_LeapFrogCallBack *) nil_chk(callback)) onMatchWithInt:bitSetDoc];
      disiDoc = [iter nextDoc];
    }
    else {
      disiDoc = [iter advanceWithInt:bitSetDoc];
    }
  }
}

void OrgApacheLuceneUtilBitSet_init(OrgApacheLuceneUtilBitSet *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBitSet)

@implementation OrgApacheLuceneUtilBitSet_LeapFrogCallBack

- (void)onMatchWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)finish {
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilBitSet_LeapFrogCallBack_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onMatchWithInt:", "onMatch", "V", 0x400, NULL, NULL },
    { "finish", NULL, "V", 0x0, NULL, NULL },
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBitSet_LeapFrogCallBack = { 2, "LeapFrogCallBack", "org.apache.lucene.util", "BitSet", 0x40a, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilBitSet_LeapFrogCallBack;
}

@end

void OrgApacheLuceneUtilBitSet_LeapFrogCallBack_init(OrgApacheLuceneUtilBitSet_LeapFrogCallBack *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBitSet_LeapFrogCallBack)

@implementation OrgApacheLuceneUtilBitSet_$1

- (void)onMatchWithInt:(jint)doc {
  [this$0_ clearWithInt:previous_ + 1 withInt:doc];
  previous_ = doc;
}

- (void)finish {
  if (previous_ + 1 < [this$0_ length]) {
    [this$0_ clearWithInt:previous_ + 1 withInt:[this$0_ length]];
  }
}

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)outer$ {
  OrgApacheLuceneUtilBitSet_$1_initWithOrgApacheLuceneUtilBitSet_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onMatchWithInt:", "onMatch", "V", 0x1, NULL, NULL },
    { "finish", NULL, "V", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBitSet:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "previous_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilBitSet", "and__WithOrgApacheLuceneSearchDocIdSetIterator:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBitSet_$1 = { 2, "", "org.apache.lucene.util", "BitSet", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilBitSet_$1;
}

@end

void OrgApacheLuceneUtilBitSet_$1_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet_$1 *self, OrgApacheLuceneUtilBitSet *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneUtilBitSet_LeapFrogCallBack_init(self);
  self->previous_ = -1;
}

OrgApacheLuceneUtilBitSet_$1 *new_OrgApacheLuceneUtilBitSet_$1_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet *outer$) {
  OrgApacheLuceneUtilBitSet_$1 *self = [OrgApacheLuceneUtilBitSet_$1 alloc];
  OrgApacheLuceneUtilBitSet_$1_initWithOrgApacheLuceneUtilBitSet_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBitSet_$1)

@implementation OrgApacheLuceneUtilBitSet_$2

- (void)onMatchWithInt:(jint)doc {
  [this$0_ clearWithInt:doc];
}

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)outer$ {
  OrgApacheLuceneUtilBitSet_$2_initWithOrgApacheLuceneUtilBitSet_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onMatchWithInt:", "onMatch", "V", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBitSet:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.BitSet;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilBitSet", "andNotWithOrgApacheLuceneSearchDocIdSetIterator:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBitSet_$2 = { 2, "", "org.apache.lucene.util", "BitSet", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilBitSet_$2;
}

@end

void OrgApacheLuceneUtilBitSet_$2_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet_$2 *self, OrgApacheLuceneUtilBitSet *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneUtilBitSet_LeapFrogCallBack_init(self);
}

OrgApacheLuceneUtilBitSet_$2 *new_OrgApacheLuceneUtilBitSet_$2_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet *outer$) {
  OrgApacheLuceneUtilBitSet_$2 *self = [OrgApacheLuceneUtilBitSet_$2 alloc];
  OrgApacheLuceneUtilBitSet_$2_initWithOrgApacheLuceneUtilBitSet_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBitSet_$2)
