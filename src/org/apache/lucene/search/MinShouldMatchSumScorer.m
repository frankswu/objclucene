//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/MinShouldMatchSumScorer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/DisiPriorityQueue.h"
#include "org/apache/lucene/search/DisiWrapper.h"
#include "org/apache/lucene/search/MinShouldMatchSumScorer.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/PriorityQueue.h"

@interface OrgApacheLuceneSearchMinShouldMatchSumScorer ()

+ (jlong)costWithJavaUtilCollection:(id<JavaUtilCollection>)scorers
                            withInt:(jint)minShouldMatch;

- (void)addLeadWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)lead;

- (void)pushBackLeads;

- (void)advanceTailWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)top;

- (void)advanceTail;

- (void)setDocAndFreq;

- (jint)doNext;

- (void)updateFreq;

- (OrgApacheLuceneSearchDisiWrapper *)insertTailWithOverFlowWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)s;

- (void)addTailWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)s;

- (OrgApacheLuceneSearchDisiWrapper *)popTail;

+ (void)upHeapCostWithOrgApacheLuceneSearchDisiWrapperArray:(IOSObjectArray *)heap
                                                    withInt:(jint)i;

+ (void)downHeapCostWithOrgApacheLuceneSearchDisiWrapperArray:(IOSObjectArray *)heap
                                                      withInt:(jint)size;

@end

__attribute__((unused)) static jlong OrgApacheLuceneSearchMinShouldMatchSumScorer_costWithJavaUtilCollection_withInt_(id<JavaUtilCollection> scorers, jint minShouldMatch);

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_addLeadWithOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchMinShouldMatchSumScorer *self, OrgApacheLuceneSearchDisiWrapper *lead);

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_pushBackLeads(OrgApacheLuceneSearchMinShouldMatchSumScorer *self);

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_advanceTailWithOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchMinShouldMatchSumScorer *self, OrgApacheLuceneSearchDisiWrapper *top);

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_advanceTail(OrgApacheLuceneSearchMinShouldMatchSumScorer *self);

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_setDocAndFreq(OrgApacheLuceneSearchMinShouldMatchSumScorer *self);

__attribute__((unused)) static jint OrgApacheLuceneSearchMinShouldMatchSumScorer_doNext(OrgApacheLuceneSearchMinShouldMatchSumScorer *self);

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_updateFreq(OrgApacheLuceneSearchMinShouldMatchSumScorer *self);

__attribute__((unused)) static OrgApacheLuceneSearchDisiWrapper *OrgApacheLuceneSearchMinShouldMatchSumScorer_insertTailWithOverFlowWithOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchMinShouldMatchSumScorer *self, OrgApacheLuceneSearchDisiWrapper *s);

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_addTailWithOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchMinShouldMatchSumScorer *self, OrgApacheLuceneSearchDisiWrapper *s);

__attribute__((unused)) static OrgApacheLuceneSearchDisiWrapper *OrgApacheLuceneSearchMinShouldMatchSumScorer_popTail(OrgApacheLuceneSearchMinShouldMatchSumScorer *self);

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_upHeapCostWithOrgApacheLuceneSearchDisiWrapperArray_withInt_(IOSObjectArray *heap, jint i);

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_downHeapCostWithOrgApacheLuceneSearchDisiWrapperArray_withInt_(IOSObjectArray *heap, jint size);

@interface OrgApacheLuceneSearchMinShouldMatchSumScorer_$1 : OrgApacheLuceneUtilPriorityQueue

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchScorer *)a
                    withId:(OrgApacheLuceneSearchScorer *)b;

- (instancetype)initWithInt:(jint)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchMinShouldMatchSumScorer_$1)

__attribute__((unused)) static void OrgApacheLuceneSearchMinShouldMatchSumScorer_$1_initWithInt_(OrgApacheLuceneSearchMinShouldMatchSumScorer_$1 *self, jint arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchMinShouldMatchSumScorer_$1 *new_OrgApacheLuceneSearchMinShouldMatchSumScorer_$1_initWithInt_(jint arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchMinShouldMatchSumScorer_$1)

@implementation OrgApacheLuceneSearchMinShouldMatchSumScorer

+ (jlong)costWithJavaUtilCollection:(id<JavaUtilCollection>)scorers
                            withInt:(jint)minShouldMatch {
  return OrgApacheLuceneSearchMinShouldMatchSumScorer_costWithJavaUtilCollection_withInt_(scorers, minShouldMatch);
}

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                             withJavaUtilCollection:(id<JavaUtilCollection>)scorers
                                            withInt:(jint)minShouldMatch
                                     withFloatArray:(IOSFloatArray *)coord {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilCollection_withInt_withFloatArray_(self, weight, scorers, minShouldMatch, coord);
  return self;
}

- (jlong)cost {
  return cost_;
}

- (id<JavaUtilCollection>)getChildren {
  return childScorers_;
}

- (jint)nextDoc {
  for (OrgApacheLuceneSearchDisiWrapper *s = lead_; s != nil; s = ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(s))->next_) {
    OrgApacheLuceneSearchDisiWrapper *evicted = OrgApacheLuceneSearchMinShouldMatchSumScorer_insertTailWithOverFlowWithOrgApacheLuceneSearchDisiWrapper_(self, s);
    if (evicted != nil) {
      if (evicted->doc_ == doc_) {
        evicted->doc_ = [((OrgApacheLuceneSearchScorer *) nil_chk(evicted->iterator_)) nextDoc];
      }
      else {
        evicted->doc_ = [((OrgApacheLuceneSearchScorer *) nil_chk(evicted->iterator_)) advanceWithInt:doc_ + 1];
      }
      [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(head_)) addWithOrgApacheLuceneSearchDisiWrapper:evicted];
    }
  }
  OrgApacheLuceneSearchMinShouldMatchSumScorer_setDocAndFreq(self);
  return OrgApacheLuceneSearchMinShouldMatchSumScorer_doNext(self);
}

- (jint)advanceWithInt:(jint)target {
  for (OrgApacheLuceneSearchDisiWrapper *s = lead_; s != nil; s = ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(s))->next_) {
    OrgApacheLuceneSearchDisiWrapper *evicted = OrgApacheLuceneSearchMinShouldMatchSumScorer_insertTailWithOverFlowWithOrgApacheLuceneSearchDisiWrapper_(self, s);
    if (evicted != nil) {
      evicted->doc_ = [((OrgApacheLuceneSearchScorer *) nil_chk(evicted->iterator_)) advanceWithInt:target];
      [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(head_)) addWithOrgApacheLuceneSearchDisiWrapper:evicted];
    }
  }
  OrgApacheLuceneSearchDisiWrapper *headTop = [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(head_)) top];
  while (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(headTop))->doc_ < target) {
    OrgApacheLuceneSearchDisiWrapper *evicted = OrgApacheLuceneSearchMinShouldMatchSumScorer_insertTailWithOverFlowWithOrgApacheLuceneSearchDisiWrapper_(self, headTop);
    ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(evicted))->doc_ = [((OrgApacheLuceneSearchScorer *) nil_chk(evicted->iterator_)) advanceWithInt:target];
    headTop = [head_ updateTopWithOrgApacheLuceneSearchDisiWrapper:evicted];
  }
  OrgApacheLuceneSearchMinShouldMatchSumScorer_setDocAndFreq(self);
  return OrgApacheLuceneSearchMinShouldMatchSumScorer_doNext(self);
}

- (void)addLeadWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)lead {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_addLeadWithOrgApacheLuceneSearchDisiWrapper_(self, lead);
}

- (void)pushBackLeads {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_pushBackLeads(self);
}

- (void)advanceTailWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)top {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_advanceTailWithOrgApacheLuceneSearchDisiWrapper_(self, top);
}

- (void)advanceTail {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_advanceTail(self);
}

- (void)setDocAndFreq {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_setDocAndFreq(self);
}

- (jint)doNext {
  return OrgApacheLuceneSearchMinShouldMatchSumScorer_doNext(self);
}

- (void)updateFreq {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_updateFreq(self);
}

- (jint)freq {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_updateFreq(self);
  return freq_;
}

- (jfloat)score {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_updateFreq(self);
  jdouble score = 0;
  for (OrgApacheLuceneSearchDisiWrapper *s = lead_; s != nil; s = s->next_) {
    JrePlusAssignDoubleD(&score, [((OrgApacheLuceneSearchScorer *) nil_chk(((OrgApacheLuceneSearchDisiWrapper *) nil_chk(s))->iterator_)) score]);
  }
  return IOSFloatArray_Get(nil_chk(coord_), freq_) * (jfloat) score;
}

- (jint)docID {
  JreAssert((doc_ == ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(lead_))->doc_), (@"org/apache/lucene/search/MinShouldMatchSumScorer.java:287 condition failed: assert doc == lead.doc;"));
  return doc_;
}

- (OrgApacheLuceneSearchDisiWrapper *)insertTailWithOverFlowWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)s {
  return OrgApacheLuceneSearchMinShouldMatchSumScorer_insertTailWithOverFlowWithOrgApacheLuceneSearchDisiWrapper_(self, s);
}

- (void)addTailWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)s {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_addTailWithOrgApacheLuceneSearchDisiWrapper_(self, s);
}

- (OrgApacheLuceneSearchDisiWrapper *)popTail {
  return OrgApacheLuceneSearchMinShouldMatchSumScorer_popTail(self);
}

+ (void)upHeapCostWithOrgApacheLuceneSearchDisiWrapperArray:(IOSObjectArray *)heap
                                                    withInt:(jint)i {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_upHeapCostWithOrgApacheLuceneSearchDisiWrapperArray_withInt_(heap, i);
}

+ (void)downHeapCostWithOrgApacheLuceneSearchDisiWrapperArray:(IOSObjectArray *)heap
                                                      withInt:(jint)size {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_downHeapCostWithOrgApacheLuceneSearchDisiWrapperArray_withInt_(heap, size);
}

- (void)dealloc {
  RELEASE_(coord_);
  RELEASE_(lead_);
  RELEASE_(head_);
  RELEASE_(tail_);
  RELEASE_(childScorers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "costWithJavaUtilCollection:withInt:", "cost", "J", 0xa, NULL, NULL },
    { "initWithOrgApacheLuceneSearchWeight:withJavaUtilCollection:withInt:withFloatArray:", "MinShouldMatchSumScorer", NULL, 0x0, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "getChildren", NULL, "Ljava.util.Collection;", 0x11, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "addLeadWithOrgApacheLuceneSearchDisiWrapper:", "addLead", "V", 0x2, NULL, NULL },
    { "pushBackLeads", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "advanceTailWithOrgApacheLuceneSearchDisiWrapper:", "advanceTail", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "advanceTail", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "setDocAndFreq", NULL, "V", 0x2, NULL, NULL },
    { "doNext", NULL, "I", 0x2, "Ljava.io.IOException;", NULL },
    { "updateFreq", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "insertTailWithOverFlowWithOrgApacheLuceneSearchDisiWrapper:", "insertTailWithOverFlow", "Lorg.apache.lucene.search.DisiWrapper;", 0x2, NULL, NULL },
    { "addTailWithOrgApacheLuceneSearchDisiWrapper:", "addTail", "V", 0x2, NULL, NULL },
    { "popTail", NULL, "Lorg.apache.lucene.search.DisiWrapper;", 0x2, NULL, NULL },
    { "upHeapCostWithOrgApacheLuceneSearchDisiWrapperArray:withInt:", "upHeapCost", "V", 0xa, NULL, NULL },
    { "downHeapCostWithOrgApacheLuceneSearchDisiWrapperArray:withInt:", "downHeapCost", "V", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "minShouldMatch_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "coord_", NULL, 0x10, "[F", NULL, NULL, .constantValue.asLong = 0 },
    { "lead_", NULL, 0x0, "Lorg.apache.lucene.search.DisiWrapper;", NULL, "Lorg/apache/lucene/search/DisiWrapper<Lorg/apache/lucene/search/Scorer;>;", .constantValue.asLong = 0 },
    { "doc_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "freq_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "head_", NULL, 0x10, "Lorg.apache.lucene.search.DisiPriorityQueue;", NULL, "Lorg/apache/lucene/search/DisiPriorityQueue<Lorg/apache/lucene/search/Scorer;>;", .constantValue.asLong = 0 },
    { "tail_", NULL, 0x10, "[Lorg.apache.lucene.search.DisiWrapper;", NULL, "[Lorg/apache/lucene/search/DisiWrapper<Lorg/apache/lucene/search/Scorer;>;", .constantValue.asLong = 0 },
    { "tailSize_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "childScorers_", NULL, 0x10, "Ljava.util.Collection;", NULL, "Ljava/util/Collection<Lorg/apache/lucene/search/Scorer$ChildScorer;>;", .constantValue.asLong = 0 },
    { "cost_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMinShouldMatchSumScorer = { 2, "MinShouldMatchSumScorer", "org.apache.lucene.search", NULL, 0x10, 21, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchMinShouldMatchSumScorer;
}

@end

jlong OrgApacheLuceneSearchMinShouldMatchSumScorer_costWithJavaUtilCollection_withInt_(id<JavaUtilCollection> scorers, jint minShouldMatch) {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_initialize();
  OrgApacheLuceneUtilPriorityQueue *pq = [new_OrgApacheLuceneSearchMinShouldMatchSumScorer_$1_initWithInt_([((id<JavaUtilCollection>) nil_chk(scorers)) size] - minShouldMatch + 1) autorelease];
  for (OrgApacheLuceneSearchScorer * __strong scorer in scorers) {
    [pq insertWithOverflowWithId:scorer];
  }
  jlong cost = 0;
  for (OrgApacheLuceneSearchScorer *scorer = [pq pop]; scorer != nil; scorer = [pq pop]) {
    cost += [((OrgApacheLuceneSearchScorer *) nil_chk(scorer)) cost];
  }
  return cost;
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilCollection_withInt_withFloatArray_(OrgApacheLuceneSearchMinShouldMatchSumScorer *self, OrgApacheLuceneSearchWeight *weight, id<JavaUtilCollection> scorers, jint minShouldMatch, IOSFloatArray *coord) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, weight);
  if (minShouldMatch > [((id<JavaUtilCollection>) nil_chk(scorers)) size]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"minShouldMatch should be <= the number of scorers") autorelease];
  }
  if (minShouldMatch < 1) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"minShouldMatch should be >= 1") autorelease];
  }
  self->minShouldMatch_ = minShouldMatch;
  JreStrongAssign(&self->coord_, coord);
  self->doc_ = -1;
  JreStrongAssignAndConsume(&self->head_, new_OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_([scorers size] - minShouldMatch + 1));
  JreStrongAssignAndConsume(&self->tail_, [IOSObjectArray newArrayWithLength:minShouldMatch - 1 type:OrgApacheLuceneSearchDisiWrapper_class_()]);
  for (OrgApacheLuceneSearchScorer * __strong scorer in scorers) {
    OrgApacheLuceneSearchMinShouldMatchSumScorer_addLeadWithOrgApacheLuceneSearchDisiWrapper_(self, [new_OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(scorer) autorelease]);
  }
  id<JavaUtilList> children = [new_JavaUtilArrayList_init() autorelease];
  for (OrgApacheLuceneSearchScorer * __strong scorer in scorers) {
    [children addWithId:[new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(scorer, @"SHOULD") autorelease]];
  }
  JreStrongAssign(&self->childScorers_, JavaUtilCollections_unmodifiableCollectionWithJavaUtilCollection_(children));
  self->cost_ = OrgApacheLuceneSearchMinShouldMatchSumScorer_costWithJavaUtilCollection_withInt_(scorers, minShouldMatch);
}

OrgApacheLuceneSearchMinShouldMatchSumScorer *new_OrgApacheLuceneSearchMinShouldMatchSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilCollection_withInt_withFloatArray_(OrgApacheLuceneSearchWeight *weight, id<JavaUtilCollection> scorers, jint minShouldMatch, IOSFloatArray *coord) {
  OrgApacheLuceneSearchMinShouldMatchSumScorer *self = [OrgApacheLuceneSearchMinShouldMatchSumScorer alloc];
  OrgApacheLuceneSearchMinShouldMatchSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilCollection_withInt_withFloatArray_(self, weight, scorers, minShouldMatch, coord);
  return self;
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_addLeadWithOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchMinShouldMatchSumScorer *self, OrgApacheLuceneSearchDisiWrapper *lead) {
  JreStrongAssign(&((OrgApacheLuceneSearchDisiWrapper *) nil_chk(lead))->next_, self->lead_);
  JreStrongAssign(&self->lead_, lead);
  self->freq_ += 1;
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_pushBackLeads(OrgApacheLuceneSearchMinShouldMatchSumScorer *self) {
  for (OrgApacheLuceneSearchDisiWrapper *s = self->lead_; s != nil; s = ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(s))->next_) {
    OrgApacheLuceneSearchMinShouldMatchSumScorer_addTailWithOrgApacheLuceneSearchDisiWrapper_(self, s);
  }
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_advanceTailWithOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchMinShouldMatchSumScorer *self, OrgApacheLuceneSearchDisiWrapper *top) {
  ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(top))->doc_ = [((OrgApacheLuceneSearchScorer *) nil_chk(top->iterator_)) advanceWithInt:self->doc_];
  if (top->doc_ == self->doc_) {
    OrgApacheLuceneSearchMinShouldMatchSumScorer_addLeadWithOrgApacheLuceneSearchDisiWrapper_(self, top);
  }
  else {
    [((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(self->head_)) addWithOrgApacheLuceneSearchDisiWrapper:top];
  }
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_advanceTail(OrgApacheLuceneSearchMinShouldMatchSumScorer *self) {
  OrgApacheLuceneSearchDisiWrapper *top = OrgApacheLuceneSearchMinShouldMatchSumScorer_popTail(self);
  OrgApacheLuceneSearchMinShouldMatchSumScorer_advanceTailWithOrgApacheLuceneSearchDisiWrapper_(self, top);
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_setDocAndFreq(OrgApacheLuceneSearchMinShouldMatchSumScorer *self) {
  JreAssert(([((OrgApacheLuceneSearchDisiPriorityQueue *) nil_chk(self->head_)) size] > 0), (@"org/apache/lucene/search/MinShouldMatchSumScorer.java:219 condition failed: assert head.size() > 0;"));
  JreStrongAssign(&self->lead_, [self->head_ pop]);
  JreStrongAssign(&((OrgApacheLuceneSearchDisiWrapper *) nil_chk(self->lead_))->next_, nil);
  self->freq_ = 1;
  self->doc_ = self->lead_->doc_;
  while ([self->head_ size] > 0 && ((OrgApacheLuceneSearchDisiWrapper *) nil_chk([self->head_ top]))->doc_ == self->doc_) {
    OrgApacheLuceneSearchMinShouldMatchSumScorer_addLeadWithOrgApacheLuceneSearchDisiWrapper_(self, [self->head_ pop]);
  }
}

jint OrgApacheLuceneSearchMinShouldMatchSumScorer_doNext(OrgApacheLuceneSearchMinShouldMatchSumScorer *self) {
  while (self->freq_ < self->minShouldMatch_) {
    JreAssert((self->freq_ > 0), (@"org/apache/lucene/search/MinShouldMatchSumScorer.java:235 condition failed: assert freq > 0;"));
    if (self->freq_ + self->tailSize_ >= self->minShouldMatch_) {
      OrgApacheLuceneSearchMinShouldMatchSumScorer_advanceTail(self);
    }
    else {
      OrgApacheLuceneSearchMinShouldMatchSumScorer_pushBackLeads(self);
      OrgApacheLuceneSearchMinShouldMatchSumScorer_setDocAndFreq(self);
    }
  }
  return self->doc_;
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_updateFreq(OrgApacheLuceneSearchMinShouldMatchSumScorer *self) {
  JreAssert((self->freq_ >= self->minShouldMatch_), (@"org/apache/lucene/search/MinShouldMatchSumScorer.java:253 condition failed: assert freq >= minShouldMatch;"));
  for (jint i = self->tailSize_ - 1; i >= 0; --i) {
    OrgApacheLuceneSearchMinShouldMatchSumScorer_advanceTailWithOrgApacheLuceneSearchDisiWrapper_(self, IOSObjectArray_Get(nil_chk(self->tail_), i));
  }
  self->tailSize_ = 0;
}

OrgApacheLuceneSearchDisiWrapper *OrgApacheLuceneSearchMinShouldMatchSumScorer_insertTailWithOverFlowWithOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchMinShouldMatchSumScorer *self, OrgApacheLuceneSearchDisiWrapper *s) {
  if (self->tailSize_ < ((IOSObjectArray *) nil_chk(self->tail_))->size_) {
    OrgApacheLuceneSearchMinShouldMatchSumScorer_addTailWithOrgApacheLuceneSearchDisiWrapper_(self, s);
    return nil;
  }
  else if (self->tail_->size_ >= 1) {
    OrgApacheLuceneSearchDisiWrapper *top = IOSObjectArray_Get(self->tail_, 0);
    if (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(top))->cost_ < ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(s))->cost_) {
      IOSObjectArray_Set(self->tail_, 0, s);
      OrgApacheLuceneSearchMinShouldMatchSumScorer_downHeapCostWithOrgApacheLuceneSearchDisiWrapperArray_withInt_(self->tail_, self->tailSize_);
      return top;
    }
  }
  return s;
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_addTailWithOrgApacheLuceneSearchDisiWrapper_(OrgApacheLuceneSearchMinShouldMatchSumScorer *self, OrgApacheLuceneSearchDisiWrapper *s) {
  IOSObjectArray_Set(nil_chk(self->tail_), self->tailSize_, s);
  OrgApacheLuceneSearchMinShouldMatchSumScorer_upHeapCostWithOrgApacheLuceneSearchDisiWrapperArray_withInt_(self->tail_, self->tailSize_);
  self->tailSize_ += 1;
}

OrgApacheLuceneSearchDisiWrapper *OrgApacheLuceneSearchMinShouldMatchSumScorer_popTail(OrgApacheLuceneSearchMinShouldMatchSumScorer *self) {
  JreAssert((self->tailSize_ > 0), (@"org/apache/lucene/search/MinShouldMatchSumScorer.java:316 condition failed: assert tailSize > 0;"));
  OrgApacheLuceneSearchDisiWrapper *result = IOSObjectArray_Get(nil_chk(self->tail_), 0);
  IOSObjectArray_Set(self->tail_, 0, IOSObjectArray_Get(self->tail_, --self->tailSize_));
  OrgApacheLuceneSearchMinShouldMatchSumScorer_downHeapCostWithOrgApacheLuceneSearchDisiWrapperArray_withInt_(self->tail_, self->tailSize_);
  return result;
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_upHeapCostWithOrgApacheLuceneSearchDisiWrapperArray_withInt_(IOSObjectArray *heap, jint i) {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_initialize();
  OrgApacheLuceneSearchDisiWrapper *node = IOSObjectArray_Get(nil_chk(heap), i);
  jlong nodeCost = ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(node))->cost_;
  jint j = OrgApacheLuceneSearchDisiPriorityQueue_parentNodeWithInt_(i);
  while (j >= 0 && nodeCost < ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap, j)))->cost_) {
    IOSObjectArray_Set(heap, i, IOSObjectArray_Get(heap, j));
    i = j;
    j = OrgApacheLuceneSearchDisiPriorityQueue_parentNodeWithInt_(j);
  }
  IOSObjectArray_Set(heap, i, node);
}

void OrgApacheLuceneSearchMinShouldMatchSumScorer_downHeapCostWithOrgApacheLuceneSearchDisiWrapperArray_withInt_(IOSObjectArray *heap, jint size) {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_initialize();
  jint i = 0;
  OrgApacheLuceneSearchDisiWrapper *node = IOSObjectArray_Get(nil_chk(heap), 0);
  jint j = OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(i);
  if (j < size) {
    jint k = OrgApacheLuceneSearchDisiPriorityQueue_rightNodeWithInt_(j);
    if (k < size && ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap, k)))->cost_ < ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap, j)))->cost_) {
      j = k;
    }
    if (((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap, j)))->cost_ < ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(node))->cost_) {
      do {
        IOSObjectArray_Set(heap, i, IOSObjectArray_Get(heap, j));
        i = j;
        j = OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(i);
        k = OrgApacheLuceneSearchDisiPriorityQueue_rightNodeWithInt_(j);
        if (k < size && ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap, k)))->cost_ < ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap, j)))->cost_) {
          j = k;
        }
      }
      while (j < size && ((OrgApacheLuceneSearchDisiWrapper *) nil_chk(IOSObjectArray_Get(heap, j)))->cost_ < node->cost_);
      IOSObjectArray_Set(heap, i, node);
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMinShouldMatchSumScorer)

@implementation OrgApacheLuceneSearchMinShouldMatchSumScorer_$1

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchScorer *)a
                    withId:(OrgApacheLuceneSearchScorer *)b {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(a)) cost] > [((OrgApacheLuceneSearchScorer *) nil_chk(b)) cost];
}

- (instancetype)initWithInt:(jint)arg$0 {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_$1_initWithInt_(self, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "lessThanWithId:withId:", "lessThan", "Z", 0x4, NULL, NULL },
    { "initWithInt:", "", NULL, 0x0, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.Scorer;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchMinShouldMatchSumScorer", "costWithJavaUtilCollection:withInt:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMinShouldMatchSumScorer_$1 = { 2, "", "org.apache.lucene.search", "MinShouldMatchSumScorer", 0x8008, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/Scorer;>;" };
  return &_OrgApacheLuceneSearchMinShouldMatchSumScorer_$1;
}

@end

void OrgApacheLuceneSearchMinShouldMatchSumScorer_$1_initWithInt_(OrgApacheLuceneSearchMinShouldMatchSumScorer_$1 *self, jint arg$0) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(self, arg$0);
}

OrgApacheLuceneSearchMinShouldMatchSumScorer_$1 *new_OrgApacheLuceneSearchMinShouldMatchSumScorer_$1_initWithInt_(jint arg$0) {
  OrgApacheLuceneSearchMinShouldMatchSumScorer_$1 *self = [OrgApacheLuceneSearchMinShouldMatchSumScorer_$1 alloc];
  OrgApacheLuceneSearchMinShouldMatchSumScorer_$1_initWithInt_(self, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMinShouldMatchSumScorer_$1)