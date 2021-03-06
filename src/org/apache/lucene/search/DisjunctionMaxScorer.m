//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DisjunctionMaxScorer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/DisiWrapper.h"
#include "org/apache/lucene/search/DisjunctionMaxScorer.h"
#include "org/apache/lucene/search/DisjunctionScorer.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchDisjunctionMaxScorer () {
 @public
  jfloat tieBreakerMultiplier_;
}

@end

@implementation OrgApacheLuceneSearchDisjunctionMaxScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                          withFloat:(jfloat)tieBreakerMultiplier
                                   withJavaUtilList:(id<JavaUtilList>)subScorers
                                        withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchDisjunctionMaxScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(self, weight, tieBreakerMultiplier, subScorers, needsScores);
  return self;
}

- (jfloat)scoreWithOrgApacheLuceneSearchDisiWrapper:(OrgApacheLuceneSearchDisiWrapper *)topList {
  jfloat scoreSum = 0;
  jfloat scoreMax = 0;
  for (OrgApacheLuceneSearchDisiWrapper *w = topList; w != nil; w = w->next_) {
    jfloat subScore = [((OrgApacheLuceneSearchScorer *) nil_chk(w->iterator_)) score];
    JrePlusAssignFloatF(&scoreSum, subScore);
    if (subScore > scoreMax) {
      scoreMax = subScore;
    }
  }
  return scoreMax + (scoreSum - scoreMax) * tieBreakerMultiplier_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchWeight:withFloat:withJavaUtilList:withBoolean:", "DisjunctionMaxScorer", NULL, 0x0, NULL, "(Lorg/apache/lucene/search/Weight;FLjava/util/List<Lorg/apache/lucene/search/Scorer;>;Z)V" },
    { "scoreWithOrgApacheLuceneSearchDisiWrapper:", "score", "F", 0x4, "Ljava.io.IOException;", "(Lorg/apache/lucene/search/DisiWrapper<Lorg/apache/lucene/search/Scorer;>;)F" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "tieBreakerMultiplier_", NULL, 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisjunctionMaxScorer = { 2, "DisjunctionMaxScorer", "org.apache.lucene.search", NULL, 0x10, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchDisjunctionMaxScorer;
}

@end

void OrgApacheLuceneSearchDisjunctionMaxScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(OrgApacheLuceneSearchDisjunctionMaxScorer *self, OrgApacheLuceneSearchWeight *weight, jfloat tieBreakerMultiplier, id<JavaUtilList> subScorers, jboolean needsScores) {
  OrgApacheLuceneSearchDisjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withBoolean_(self, weight, subScorers, needsScores);
  self->tieBreakerMultiplier_ = tieBreakerMultiplier;
}

OrgApacheLuceneSearchDisjunctionMaxScorer *new_OrgApacheLuceneSearchDisjunctionMaxScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(OrgApacheLuceneSearchWeight *weight, jfloat tieBreakerMultiplier, id<JavaUtilList> subScorers, jboolean needsScores) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionMaxScorer, initWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_, weight, tieBreakerMultiplier, subScorers, needsScores)
}

OrgApacheLuceneSearchDisjunctionMaxScorer *create_OrgApacheLuceneSearchDisjunctionMaxScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(OrgApacheLuceneSearchWeight *weight, jfloat tieBreakerMultiplier, id<JavaUtilList> subScorers, jboolean needsScores) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionMaxScorer, initWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_, weight, tieBreakerMultiplier, subScorers, needsScores)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisjunctionMaxScorer)
