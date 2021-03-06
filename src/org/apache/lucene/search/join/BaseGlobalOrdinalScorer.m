//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BaseGlobalOrdinalScorer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TwoPhaseIterator.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/join/BaseGlobalOrdinalScorer.h"

@interface OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1 : OrgApacheLuceneSearchDocIdSetIterator {
 @public
  OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *this$0_;
}

- (jint)docID;

- (jint)nextDoc;

- (jint)advanceWithInt:(jint)target;

- (jlong)cost;

- (instancetype)initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer:(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1, this$0_, OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *)

__attribute__((unused)) static void OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1_initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1 *self, OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *outer$);

__attribute__((unused)) static OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1 *new_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1_initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1 *create_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1_initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1)

@implementation OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
            withOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)values
                    withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)approximationScorer {
  OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_(self, weight, values, approximationScorer);
  return self;
}

- (jfloat)score {
  return score_;
}

- (jint)docID {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(approximationScorer_)) docID];
}

- (jint)nextDoc {
  return [self advanceWithInt:[((OrgApacheLuceneSearchScorer *) nil_chk(approximationScorer_)) docID] + 1];
}

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator {
  OrgApacheLuceneSearchDocIdSetIterator *approximation = create_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1_initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_(self);
  return [self createTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator:approximation];
}

- (jlong)cost {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(approximationScorer_)) cost];
}

- (jint)freq {
  return 1;
}

- (OrgApacheLuceneSearchTwoPhaseIterator *)createTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)approximation {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  RELEASE_(values_);
  RELEASE_(approximationScorer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneIndexSortedDocValues:withOrgApacheLuceneSearchScorer:", "BaseGlobalOrdinalScorer", NULL, 0x1, NULL, NULL },
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "asTwoPhaseIterator", NULL, "Lorg.apache.lucene.search.TwoPhaseIterator;", 0x1, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "createTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator:", "createTwoPhaseIterator", "Lorg.apache.lucene.search.TwoPhaseIterator;", 0x404, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "values_", NULL, 0x10, "Lorg.apache.lucene.index.SortedDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "approximationScorer_", NULL, 0x10, "Lorg.apache.lucene.search.Scorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "score_", NULL, 0x0, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer = { 2, "BaseGlobalOrdinalScorer", "org.apache.lucene.search.join", NULL, 0x400, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer;
}

@end

void OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *self, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneIndexSortedDocValues *values, OrgApacheLuceneSearchScorer *approximationScorer) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, weight);
  JreStrongAssign(&self->values_, values);
  JreStrongAssign(&self->approximationScorer_, approximationScorer);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer)

@implementation OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1

- (jint)docID {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(this$0_->approximationScorer_)) docID];
}

- (jint)nextDoc {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(this$0_->approximationScorer_)) nextDoc];
}

- (jint)advanceWithInt:(jint)target {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(this$0_->approximationScorer_)) advanceWithInt:target];
}

- (jlong)cost {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(this$0_->approximationScorer_)) cost];
}

- (instancetype)initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer:(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *)outer$ {
  OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1_initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.join.BaseGlobalOrdinalScorer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer", "asTwoPhaseIterator" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1 = { 2, "", "org.apache.lucene.search.join", "BaseGlobalOrdinalScorer", 0x8008, 5, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1;
}

@end

void OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1_initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1 *self, OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchDocIdSetIterator_init(self);
}

OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1 *new_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1_initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1, initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_, outer$)
}

OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1 *create_OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1_initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1, initWithOrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBaseGlobalOrdinalScorer_$1)
