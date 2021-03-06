//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/PerFieldSimilarityWrapper.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/CollectionStatistics.h"
#include "org/apache/lucene/search/similarities/PerFieldSimilarityWrapper.h"
#include "org/apache/lucene/search/similarities/Similarity.h"

@implementation OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)computeNormWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state {
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk([self getWithNSString:[((OrgApacheLuceneIndexFieldInvertState *) nil_chk(state)) getName]])) computeNormWithOrgApacheLuceneIndexFieldInvertState:state];
}

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)computeWeightWithFloat:(jfloat)queryBoost
                                    withOrgApacheLuceneSearchCollectionStatistics:(OrgApacheLuceneSearchCollectionStatistics *)collectionStats
                                     withOrgApacheLuceneSearchTermStatisticsArray:(IOSObjectArray *)termStats {
  OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *weight = create_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init();
  JreStrongAssign(&weight->delegate_, [self getWithNSString:[((OrgApacheLuceneSearchCollectionStatistics *) nil_chk(collectionStats)) field]]);
  JreStrongAssign(&weight->delegateWeight_, [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(weight->delegate_)) computeWeightWithFloat:queryBoost withOrgApacheLuceneSearchCollectionStatistics:collectionStats withOrgApacheLuceneSearchTermStatisticsArray:termStats]);
  return weight;
}

- (OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)weight
                                                                                    withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *perFieldWeight = (OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *) cast_chk(weight, [OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight class]);
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity *) nil_chk(((OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *) nil_chk(perFieldWeight))->delegate_)) simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:perFieldWeight->delegateWeight_ withOrgApacheLuceneIndexLeafReaderContext:context];
}

- (OrgApacheLuceneSearchSimilaritiesSimilarity *)getWithNSString:(NSString *)name {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PerFieldSimilarityWrapper", NULL, 0x1, NULL, NULL },
    { "computeNormWithOrgApacheLuceneIndexFieldInvertState:", "computeNorm", "J", 0x11, NULL, NULL },
    { "computeWeightWithFloat:withOrgApacheLuceneSearchCollectionStatistics:withOrgApacheLuceneSearchTermStatisticsArray:", "computeWeight", "Lorg.apache.lucene.search.similarities.Similarity$SimWeight;", 0x91, NULL, NULL },
    { "simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:withOrgApacheLuceneIndexLeafReaderContext:", "simScorer", "Lorg.apache.lucene.search.similarities.Similarity$SimScorer;", 0x11, "Ljava.io.IOException;", NULL },
    { "getWithNSString:", "get", "Lorg.apache.lucene.search.similarities.Similarity;", 0x401, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.similarities.PerFieldSimilarityWrapper$PerFieldSimWeight;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper = { 2, "PerFieldSimilarityWrapper", "org.apache.lucene.search.similarities", NULL, 0x401, 5, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper;
}

@end

void OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_init(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper *self) {
  OrgApacheLuceneSearchSimilaritiesSimilarity_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper)

@implementation OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight

- (jfloat)getValueForNormalization {
  return [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *) nil_chk(delegateWeight_)) getValueForNormalization];
}

- (void)normalizeWithFloat:(jfloat)queryNorm
                 withFloat:(jfloat)topLevelBoost {
  [((OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *) nil_chk(delegateWeight_)) normalizeWithFloat:queryNorm withFloat:topLevelBoost];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(delegate_);
  RELEASE_(delegateWeight_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValueForNormalization", NULL, "F", 0x1, NULL, NULL },
    { "normalizeWithFloat:withFloat:", "normalize", "V", 0x1, NULL, NULL },
    { "init", "PerFieldSimWeight", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", NULL, 0x0, "Lorg.apache.lucene.search.similarities.Similarity;", NULL, NULL, .constantValue.asLong = 0 },
    { "delegateWeight_", NULL, 0x0, "Lorg.apache.lucene.search.similarities.Similarity$SimWeight;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight = { 2, "PerFieldSimWeight", "org.apache.lucene.search.similarities", "PerFieldSimilarityWrapper", 0x8, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight;
}

@end

void OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *self) {
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight_init(self);
}

OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *new_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight, init)
}

OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight *create_OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesPerFieldSimilarityWrapper_PerFieldSimWeight)
