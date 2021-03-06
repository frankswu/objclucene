//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DisjunctionMaxQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/DisjunctionMaxQuery.h"
#include "org/apache/lucene/search/DisjunctionMaxScorer.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneSearchDisjunctionMaxQuery () {
 @public
  JavaUtilArrayList *disjuncts_;
  jfloat tieBreakerMultiplier_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDisjunctionMaxQuery, disjuncts_, JavaUtilArrayList *)

@interface OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight () {
 @public
  OrgApacheLuceneSearchDisjunctionMaxQuery *this$0_;
  jboolean needsScores_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight, this$0_, OrgApacheLuceneSearchDisjunctionMaxQuery *)

@implementation OrgApacheLuceneSearchDisjunctionMaxQuery

- (instancetype)initWithFloat:(jfloat)tieBreakerMultiplier {
  OrgApacheLuceneSearchDisjunctionMaxQuery_initWithFloat_(self, tieBreakerMultiplier);
  return self;
}

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)disjuncts
                                 withFloat:(jfloat)tieBreakerMultiplier {
  OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(self, disjuncts, tieBreakerMultiplier);
  return self;
}

- (void)addWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  [((JavaUtilArrayList *) nil_chk(disjuncts_)) addWithId:OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(query, @"Query must not be null")];
}

- (void)addWithJavaUtilCollection:(id<JavaUtilCollection>)disjuncts {
  [((JavaUtilArrayList *) nil_chk(self->disjuncts_)) addAllWithJavaUtilCollection:OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(disjuncts, @"Query connection must not be null")];
}

- (id<JavaUtilIterator>)iterator {
  return [((JavaUtilArrayList *) nil_chk(disjuncts_)) iterator];
}

- (JavaUtilArrayList *)getDisjuncts {
  return disjuncts_;
}

- (jfloat)getTieBreakerMultiplier {
  return tieBreakerMultiplier_;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return create_OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(self, searcher, needsScores);
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  jint numDisjunctions = [((JavaUtilArrayList *) nil_chk(disjuncts_)) size];
  if (numDisjunctions == 1) {
    OrgApacheLuceneSearchQuery *singleton = [((JavaUtilArrayList *) nil_chk(disjuncts_)) getWithInt:0];
    OrgApacheLuceneSearchQuery *result = [((OrgApacheLuceneSearchQuery *) nil_chk(singleton)) rewriteWithOrgApacheLuceneIndexIndexReader:reader];
    if ([self getBoost] != 1.0f) {
      if (result == singleton) result = [((OrgApacheLuceneSearchQuery *) nil_chk(result)) clone];
      [((OrgApacheLuceneSearchQuery *) nil_chk(result)) setBoostWithFloat:[self getBoost] * [result getBoost]];
    }
    return result;
  }
  OrgApacheLuceneSearchDisjunctionMaxQuery *clone = nil;
  for (jint i = 0; i < numDisjunctions; i++) {
    OrgApacheLuceneSearchQuery *clause = [((JavaUtilArrayList *) nil_chk(disjuncts_)) getWithInt:i];
    OrgApacheLuceneSearchQuery *rewrite = [((OrgApacheLuceneSearchQuery *) nil_chk(clause)) rewriteWithOrgApacheLuceneIndexIndexReader:reader];
    if (rewrite != clause) {
      if (clone == nil) clone = [self clone];
      [((JavaUtilArrayList *) nil_chk(((OrgApacheLuceneSearchDisjunctionMaxQuery *) nil_chk(clone))->disjuncts_)) setWithInt:i withId:rewrite];
    }
  }
  if (clone != nil) return clone;
  else return self;
}

- (OrgApacheLuceneSearchDisjunctionMaxQuery *)clone {
  OrgApacheLuceneSearchDisjunctionMaxQuery *clone = (OrgApacheLuceneSearchDisjunctionMaxQuery *) cast_chk([super clone], [OrgApacheLuceneSearchDisjunctionMaxQuery class]);
  JreStrongAssign(&((OrgApacheLuceneSearchDisjunctionMaxQuery *) nil_chk(clone))->disjuncts_, (JavaUtilArrayList *) cast_chk([((JavaUtilArrayList *) nil_chk(self->disjuncts_)) clone], [JavaUtilArrayList class]));
  return clone;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [buffer appendWithNSString:@"("];
  jint numDisjunctions = [((JavaUtilArrayList *) nil_chk(disjuncts_)) size];
  for (jint i = 0; i < numDisjunctions; i++) {
    OrgApacheLuceneSearchQuery *subquery = [((JavaUtilArrayList *) nil_chk(disjuncts_)) getWithInt:i];
    if ([subquery isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) {
      [buffer appendWithNSString:@"("];
      [buffer appendWithNSString:[((OrgApacheLuceneSearchQuery *) nil_chk(subquery)) toStringWithNSString:field]];
      [buffer appendWithNSString:@")"];
    }
    else [buffer appendWithNSString:[((OrgApacheLuceneSearchQuery *) nil_chk(subquery)) toStringWithNSString:field]];
    if (i != numDisjunctions - 1) [buffer appendWithNSString:@" | "];
  }
  [buffer appendWithNSString:@")"];
  if (tieBreakerMultiplier_ != 0.0f) {
    [buffer appendWithNSString:@"~"];
    [buffer appendWithFloat:tieBreakerMultiplier_];
  }
  if ([self getBoost] != 1.0) {
    [buffer appendWithNSString:@"^"];
    [buffer appendWithFloat:[self getBoost]];
  }
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneSearchDisjunctionMaxQuery class]])) return false;
  OrgApacheLuceneSearchDisjunctionMaxQuery *other = (OrgApacheLuceneSearchDisjunctionMaxQuery *) cast_chk(o, [OrgApacheLuceneSearchDisjunctionMaxQuery class]);
  return [super isEqual:o] && self->tieBreakerMultiplier_ == ((OrgApacheLuceneSearchDisjunctionMaxQuery *) nil_chk(other))->tieBreakerMultiplier_ && [((JavaUtilArrayList *) nil_chk(self->disjuncts_)) isEqual:other->disjuncts_];
}

- (NSUInteger)hash {
  return JavaLangFloat_floatToIntBitsWithFloat_([self getBoost]) + JavaLangFloat_floatToIntBitsWithFloat_(tieBreakerMultiplier_) + ((jint) [((JavaUtilArrayList *) nil_chk(disjuncts_)) hash]);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (void)dealloc {
  RELEASE_(disjuncts_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:", "DisjunctionMaxQuery", NULL, 0x1, NULL, NULL },
    { "initWithJavaUtilCollection:withFloat:", "DisjunctionMaxQuery", NULL, 0x1, NULL, "(Ljava/util/Collection<Lorg/apache/lucene/search/Query;>;F)V" },
    { "addWithOrgApacheLuceneSearchQuery:", "add", "V", 0x1, NULL, NULL },
    { "addWithJavaUtilCollection:", "add", "V", 0x1, NULL, "(Ljava/util/Collection<Lorg/apache/lucene/search/Query;>;)V" },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, "()Ljava/util/Iterator<Lorg/apache/lucene/search/Query;>;" },
    { "getDisjuncts", NULL, "Ljava.util.ArrayList;", 0x1, NULL, "()Ljava/util/ArrayList<Lorg/apache/lucene/search/Query;>;" },
    { "getTieBreakerMultiplier", NULL, "F", 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "clone", NULL, "Lorg.apache.lucene.search.DisjunctionMaxQuery;", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "disjuncts_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lorg/apache/lucene/search/Query;>;", .constantValue.asLong = 0 },
    { "tieBreakerMultiplier_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.DisjunctionMaxQuery$DisjunctionMaxWeight;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisjunctionMaxQuery = { 2, "DisjunctionMaxQuery", "org.apache.lucene.search", NULL, 0x1, 13, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, "Lorg/apache/lucene/search/Query;Ljava/lang/Iterable<Lorg/apache/lucene/search/Query;>;" };
  return &_OrgApacheLuceneSearchDisjunctionMaxQuery;
}

@end

void OrgApacheLuceneSearchDisjunctionMaxQuery_initWithFloat_(OrgApacheLuceneSearchDisjunctionMaxQuery *self, jfloat tieBreakerMultiplier) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssignAndConsume(&self->disjuncts_, new_JavaUtilArrayList_init());
  self->tieBreakerMultiplier_ = 0.0f;
  self->tieBreakerMultiplier_ = tieBreakerMultiplier;
}

OrgApacheLuceneSearchDisjunctionMaxQuery *new_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithFloat_(jfloat tieBreakerMultiplier) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery, initWithFloat_, tieBreakerMultiplier)
}

OrgApacheLuceneSearchDisjunctionMaxQuery *create_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithFloat_(jfloat tieBreakerMultiplier) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery, initWithFloat_, tieBreakerMultiplier)
}

void OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(OrgApacheLuceneSearchDisjunctionMaxQuery *self, id<JavaUtilCollection> disjuncts, jfloat tieBreakerMultiplier) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssignAndConsume(&self->disjuncts_, new_JavaUtilArrayList_init());
  self->tieBreakerMultiplier_ = 0.0f;
  OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(disjuncts, @"Collection of Querys must not be null");
  self->tieBreakerMultiplier_ = tieBreakerMultiplier;
  [self addWithJavaUtilCollection:disjuncts];
}

OrgApacheLuceneSearchDisjunctionMaxQuery *new_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(id<JavaUtilCollection> disjuncts, jfloat tieBreakerMultiplier) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery, initWithJavaUtilCollection_withFloat_, disjuncts, tieBreakerMultiplier)
}

OrgApacheLuceneSearchDisjunctionMaxQuery *create_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(id<JavaUtilCollection> disjuncts, jfloat tieBreakerMultiplier) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery, initWithJavaUtilCollection_withFloat_, disjuncts, tieBreakerMultiplier)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisjunctionMaxQuery)

@implementation OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight

- (instancetype)initWithOrgApacheLuceneSearchDisjunctionMaxQuery:(OrgApacheLuceneSearchDisjunctionMaxQuery *)outer$
                          withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                     withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(self, outer$, searcher, needsScores);
  return self;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  for (OrgApacheLuceneSearchWeight * __strong weight in nil_chk(weights_)) {
    [((OrgApacheLuceneSearchWeight *) nil_chk(weight)) extractTermsWithJavaUtilSet:terms];
  }
}

- (jfloat)getValueForNormalization {
  jfloat max = 0.0f, sum = 0.0f;
  for (OrgApacheLuceneSearchWeight * __strong currentWeight in nil_chk(weights_)) {
    jfloat sub = [((OrgApacheLuceneSearchWeight *) nil_chk(currentWeight)) getValueForNormalization];
    JrePlusAssignFloatF(&sum, sub);
    max = JavaLangMath_maxWithFloat_withFloat_(max, sub);
  }
  jfloat boost = [this$0_ getBoost];
  return (((sum - max) * this$0_->tieBreakerMultiplier_ * this$0_->tieBreakerMultiplier_) + max) * boost * boost;
}

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost {
  JreTimesAssignFloatF(&topLevelBoost, [this$0_ getBoost]);
  for (OrgApacheLuceneSearchWeight * __strong wt in nil_chk(weights_)) {
    [((OrgApacheLuceneSearchWeight *) nil_chk(wt)) normalizeWithFloat:norm withFloat:topLevelBoost];
  }
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  id<JavaUtilList> scorers = create_JavaUtilArrayList_init();
  for (OrgApacheLuceneSearchWeight * __strong w in nil_chk(weights_)) {
    OrgApacheLuceneSearchScorer *subScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(w)) scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
    if (subScorer != nil) {
      [scorers addWithId:subScorer];
    }
  }
  if ([scorers isEmpty]) {
    return nil;
  }
  else if ([scorers size] == 1) {
    return [scorers getWithInt:0];
  }
  else {
    return create_OrgApacheLuceneSearchDisjunctionMaxScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(self, this$0_->tieBreakerMultiplier_, scorers, needsScores_);
  }
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc {
  jboolean match = false;
  jfloat max = 0.0f, sum = 0.0f;
  id<JavaUtilList> subs = create_JavaUtilArrayList_init();
  for (OrgApacheLuceneSearchWeight * __strong wt in nil_chk(weights_)) {
    OrgApacheLuceneSearchExplanation *e = [((OrgApacheLuceneSearchWeight *) nil_chk(wt)) explainWithOrgApacheLuceneIndexLeafReaderContext:context withInt:doc];
    if ([((OrgApacheLuceneSearchExplanation *) nil_chk(e)) isMatch]) {
      match = true;
      [subs addWithId:e];
      JrePlusAssignFloatF(&sum, [e getValue]);
      max = JavaLangMath_maxWithFloat_withFloat_(max, [e getValue]);
    }
  }
  if (match) {
    jfloat score = max + (sum - max) * this$0_->tieBreakerMultiplier_;
    NSString *desc = this$0_->tieBreakerMultiplier_ == 0.0f ? @"max of:" : JreStrcat("$F$", @"max plus ", this$0_->tieBreakerMultiplier_, @" times others of:");
    return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(score, desc, subs);
  }
  else {
    return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(@"No matching clause", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(weights_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchDisjunctionMaxQuery:withOrgApacheLuceneSearchIndexSearcher:withBoolean:", "DisjunctionMaxWeight", NULL, 0x1, NULL, NULL },
    { "extractTermsWithJavaUtilSet:", "extractTerms", "V", 0x1, NULL, "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V" },
    { "getValueForNormalization", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "normalizeWithFloat:withFloat:", "normalize", "V", 0x1, NULL, NULL },
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "explainWithOrgApacheLuceneIndexLeafReaderContext:withInt:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.DisjunctionMaxQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "weights_", NULL, 0x14, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lorg/apache/lucene/search/Weight;>;", .constantValue.asLong = 0 },
    { "needsScores_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight = { 2, "DisjunctionMaxWeight", "org.apache.lucene.search", "DisjunctionMaxQuery", 0x4, 6, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight;
}

@end

void OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight *self, OrgApacheLuceneSearchDisjunctionMaxQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(self, outer$);
  JreStrongAssignAndConsume(&self->weights_, new_JavaUtilArrayList_init());
  for (OrgApacheLuceneSearchQuery * __strong disjunctQuery in nil_chk(outer$->disjuncts_)) {
    [self->weights_ addWithId:[((OrgApacheLuceneSearchQuery *) nil_chk(disjunctQuery)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:needsScores]];
  }
  self->needsScores_ = needsScores;
}

OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight *new_OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(OrgApacheLuceneSearchDisjunctionMaxQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight, initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_, outer$, searcher, needsScores)
}

OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight *create_OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(OrgApacheLuceneSearchDisjunctionMaxQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight, initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_, outer$, searcher, needsScores)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight)
