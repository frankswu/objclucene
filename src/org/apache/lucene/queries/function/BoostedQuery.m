//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/BoostedQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/function/BoostedQuery.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/FilterScorer.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneQueriesFunctionBoostedQuery () {
 @public
  OrgApacheLuceneSearchQuery *q_;
  OrgApacheLuceneQueriesFunctionValueSource *boostVal_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery, q_, OrgApacheLuceneSearchQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery, boostVal_, OrgApacheLuceneQueriesFunctionValueSource *)

@interface OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight : OrgApacheLuceneSearchWeight {
 @public
  OrgApacheLuceneQueriesFunctionBoostedQuery *this$0_;
  OrgApacheLuceneSearchIndexSearcher *searcher_;
  OrgApacheLuceneSearchWeight *qWeight_;
  id<JavaUtilMap> fcontext_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionBoostedQuery:(OrgApacheLuceneQueriesFunctionBoostedQuery *)outer$
                            withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                       withBoolean:(jboolean)needsScores;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (jfloat)getValueForNormalization;

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext
                                                                               withInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight, this$0_, OrgApacheLuceneQueriesFunctionBoostedQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight, searcher_, OrgApacheLuceneSearchIndexSearcher *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight, qWeight_, OrgApacheLuceneSearchWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight, fcontext_, id<JavaUtilMap>)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *self, OrgApacheLuceneQueriesFunctionBoostedQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *new_OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(OrgApacheLuceneQueriesFunctionBoostedQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight)

@interface OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer : OrgApacheLuceneSearchFilterScorer {
 @public
  OrgApacheLuceneQueriesFunctionBoostedQuery *this$0_;
  OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *weight_CustomScorer_;
  jfloat qWeight_;
  OrgApacheLuceneQueriesFunctionFunctionValues *vals_;
  OrgApacheLuceneIndexLeafReaderContext *readerContext_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionBoostedQuery:(OrgApacheLuceneQueriesFunctionBoostedQuery *)outer$
                         withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext
      withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight:(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *)w
                                                         withFloat:(jfloat)qWeight
                                   withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer
                     withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (jfloat)score;

- (id<JavaUtilCollection>)getChildren;

- (OrgApacheLuceneSearchExplanation *)explainWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer, this$0_, OrgApacheLuceneQueriesFunctionBoostedQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer, weight_CustomScorer_, OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer, vals_, OrgApacheLuceneQueriesFunctionFunctionValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer, readerContext_, OrgApacheLuceneIndexLeafReaderContext *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_withFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer *self, OrgApacheLuceneQueriesFunctionBoostedQuery *outer$, OrgApacheLuceneIndexLeafReaderContext *readerContext, OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *w, jfloat qWeight, OrgApacheLuceneSearchScorer *scorer, OrgApacheLuceneQueriesFunctionValueSource *vs);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer *new_OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_withFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionBoostedQuery *outer$, OrgApacheLuceneIndexLeafReaderContext *readerContext, OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *w, jfloat qWeight, OrgApacheLuceneSearchScorer *scorer, OrgApacheLuceneQueriesFunctionValueSource *vs) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer)

@implementation OrgApacheLuceneQueriesFunctionBoostedQuery

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)subQuery
     withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)boostVal {
  OrgApacheLuceneQueriesFunctionBoostedQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionValueSource_(self, subQuery, boostVal);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQuery {
  return q_;
}

- (OrgApacheLuceneQueriesFunctionValueSource *)getValueSource {
  return boostVal_;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchQuery *newQ = [((OrgApacheLuceneSearchQuery *) nil_chk(q_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader];
  if (newQ == q_) return self;
  OrgApacheLuceneQueriesFunctionBoostedQuery *bq = (OrgApacheLuceneQueriesFunctionBoostedQuery *) check_class_cast([self clone], [OrgApacheLuceneQueriesFunctionBoostedQuery class]);
  JreStrongAssign(&((OrgApacheLuceneQueriesFunctionBoostedQuery *) nil_chk(bq))->q_, newQ);
  return bq;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  return [new_OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(self, searcher, needsScores) autorelease];
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"boost("])) appendWithNSString:[((OrgApacheLuceneSearchQuery *) nil_chk(q_)) toStringWithNSString:field]])) appendWithChar:','])) appendWithId:boostVal_])) appendWithChar:')'];
  [sb appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [sb description];
}

- (jboolean)isEqual:(id)o {
  if (![super isEqual:o]) return false;
  OrgApacheLuceneQueriesFunctionBoostedQuery *other = (OrgApacheLuceneQueriesFunctionBoostedQuery *) check_class_cast(o, [OrgApacheLuceneQueriesFunctionBoostedQuery class]);
  return [((OrgApacheLuceneSearchQuery *) nil_chk(self->q_)) isEqual:((OrgApacheLuceneQueriesFunctionBoostedQuery *) nil_chk(other))->q_] && [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(self->boostVal_)) isEqual:other->boostVal_];
}

- (NSUInteger)hash {
  jint h = ((jint) [((OrgApacheLuceneSearchQuery *) nil_chk(q_)) hash]);
  h ^= (JreLShift32(h, 17)) | (JreURShift32(h, 16));
  h += ((jint) [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(boostVal_)) hash]);
  h ^= (JreLShift32(h, 8)) | (JreURShift32(h, 25));
  h += JavaLangFloat_floatToIntBitsWithFloat_([self getBoost]);
  return h;
}

- (void)dealloc {
  RELEASE_(q_);
  RELEASE_(boostVal_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneQueriesFunctionValueSource:", "BoostedQuery", NULL, 0x1, NULL, NULL },
    { "getQuery", NULL, "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "getValueSource", NULL, "Lorg.apache.lucene.queries.function.ValueSource;", 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "q_", NULL, 0x2, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
    { "boostVal_", NULL, 0x12, "Lorg.apache.lucene.queries.function.ValueSource;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.queries.function.BoostedQuery$BoostedWeight;", "Lorg.apache.lucene.queries.function.BoostedQuery$CustomScorer;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionBoostedQuery = { 2, "BoostedQuery", "org.apache.lucene.queries.function", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionBoostedQuery;
}

@end

void OrgApacheLuceneQueriesFunctionBoostedQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionBoostedQuery *self, OrgApacheLuceneSearchQuery *subQuery, OrgApacheLuceneQueriesFunctionValueSource *boostVal) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->q_, subQuery);
  JreStrongAssign(&self->boostVal_, boostVal);
}

OrgApacheLuceneQueriesFunctionBoostedQuery *new_OrgApacheLuceneQueriesFunctionBoostedQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneSearchQuery *subQuery, OrgApacheLuceneQueriesFunctionValueSource *boostVal) {
  OrgApacheLuceneQueriesFunctionBoostedQuery *self = [OrgApacheLuceneQueriesFunctionBoostedQuery alloc];
  OrgApacheLuceneQueriesFunctionBoostedQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneQueriesFunctionValueSource_(self, subQuery, boostVal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionBoostedQuery)

@implementation OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight

- (instancetype)initWithOrgApacheLuceneQueriesFunctionBoostedQuery:(OrgApacheLuceneQueriesFunctionBoostedQuery *)outer$
                            withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                       withBoolean:(jboolean)needsScores {
  OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(self, outer$, searcher, needsScores);
  return self;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  [((OrgApacheLuceneSearchWeight *) nil_chk(qWeight_)) extractTermsWithJavaUtilSet:terms];
}

- (jfloat)getValueForNormalization {
  jfloat sum = [((OrgApacheLuceneSearchWeight *) nil_chk(qWeight_)) getValueForNormalization];
  JreTimesAssignFloatF(&sum, [this$0_ getBoost] * [this$0_ getBoost]);
  return sum;
}

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost {
  JreTimesAssignFloatF(&topLevelBoost, [this$0_ getBoost]);
  [((OrgApacheLuceneSearchWeight *) nil_chk(qWeight_)) normalizeWithFloat:norm withFloat:topLevelBoost];
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchScorer *subQueryScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(qWeight_)) scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
  if (subQueryScorer == nil) {
    return nil;
  }
  return [new_OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_withFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneQueriesFunctionValueSource_(this$0_, context, self, [this$0_ getBoost], subQueryScorer, this$0_->boostVal_) autorelease];
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext
                                                                               withInt:(jint)doc {
  OrgApacheLuceneSearchExplanation *subQueryExpl = [((OrgApacheLuceneSearchWeight *) nil_chk(qWeight_)) explainWithOrgApacheLuceneIndexLeafReaderContext:readerContext withInt:doc];
  if (![((OrgApacheLuceneSearchExplanation *) nil_chk(subQueryExpl)) isMatch]) {
    return subQueryExpl;
  }
  OrgApacheLuceneQueriesFunctionFunctionValues *vals = [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(this$0_->boostVal_)) getValuesWithJavaUtilMap:fcontext_ withOrgApacheLuceneIndexLeafReaderContext:readerContext];
  jfloat sc = [subQueryExpl getValue] * [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals)) floatValWithInt:doc];
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(sc, JreStrcat("$$", [this$0_ description], @", product of:"), [IOSObjectArray arrayWithObjects:(id[]){ subQueryExpl, [vals explainWithInt:doc] } count:2 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(searcher_);
  RELEASE_(qWeight_);
  RELEASE_(fcontext_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionBoostedQuery:withOrgApacheLuceneSearchIndexSearcher:withBoolean:", "BoostedWeight", NULL, 0x1, NULL, NULL },
    { "extractTermsWithJavaUtilSet:", "extractTerms", "V", 0x1, NULL, NULL },
    { "getValueForNormalization", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "normalizeWithFloat:withFloat:", "normalize", "V", 0x1, NULL, NULL },
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "explainWithOrgApacheLuceneIndexLeafReaderContext:withInt:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.BoostedQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "searcher_", NULL, 0x10, "Lorg.apache.lucene.search.IndexSearcher;", NULL, NULL, .constantValue.asLong = 0 },
    { "qWeight_", NULL, 0x0, "Lorg.apache.lucene.search.Weight;", NULL, NULL, .constantValue.asLong = 0 },
    { "fcontext_", NULL, 0x0, "Ljava.util.Map;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight = { 2, "BoostedWeight", "org.apache.lucene.queries.function", "BoostedQuery", 0x2, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight;
}

@end

void OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *self, OrgApacheLuceneQueriesFunctionBoostedQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(self, outer$);
  JreStrongAssign(&self->searcher_, searcher);
  JreStrongAssign(&self->qWeight_, [((OrgApacheLuceneSearchQuery *) nil_chk(outer$->q_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:needsScores]);
  JreStrongAssign(&self->fcontext_, OrgApacheLuceneQueriesFunctionValueSource_newContextWithOrgApacheLuceneSearchIndexSearcher_(searcher));
  [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(outer$->boostVal_)) createWeightWithJavaUtilMap:self->fcontext_ withOrgApacheLuceneSearchIndexSearcher:searcher];
}

OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *new_OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(OrgApacheLuceneQueriesFunctionBoostedQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, jboolean needsScores) {
  OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *self = [OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight alloc];
  OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(self, outer$, searcher, needsScores);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight)

@implementation OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer

- (instancetype)initWithOrgApacheLuceneQueriesFunctionBoostedQuery:(OrgApacheLuceneQueriesFunctionBoostedQuery *)outer$
                         withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext
      withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight:(OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *)w
                                                         withFloat:(jfloat)qWeight
                                   withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer
                     withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_withFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, readerContext, w, qWeight, scorer, vs);
  return self;
}

- (jfloat)score {
  jfloat score = qWeight_ * [((OrgApacheLuceneSearchScorer *) nil_chk(in_)) score] * [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals_)) floatValWithInt:[in_ docID]];
  return score > JavaLangFloat_NEGATIVE_INFINITY ? score : -JavaLangFloat_MAX_VALUE;
}

- (id<JavaUtilCollection>)getChildren {
  return JavaUtilCollections_singletonWithId_([new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(in_, @"CUSTOM") autorelease]);
}

- (OrgApacheLuceneSearchExplanation *)explainWithInt:(jint)doc {
  OrgApacheLuceneSearchExplanation *subQueryExpl = [((OrgApacheLuceneSearchWeight *) nil_chk(((OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *) nil_chk(weight_CustomScorer_))->qWeight_)) explainWithOrgApacheLuceneIndexLeafReaderContext:readerContext_ withInt:doc];
  if (![((OrgApacheLuceneSearchExplanation *) nil_chk(subQueryExpl)) isMatch]) {
    return subQueryExpl;
  }
  jfloat sc = [subQueryExpl getValue] * [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(vals_)) floatValWithInt:doc];
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(sc, JreStrcat("$$", [this$0_ description], @", product of:"), [IOSObjectArray arrayWithObjects:(id[]){ subQueryExpl, [vals_ explainWithInt:doc] } count:2 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(weight_CustomScorer_);
  RELEASE_(vals_);
  RELEASE_(readerContext_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionBoostedQuery:withOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight:withFloat:withOrgApacheLuceneSearchScorer:withOrgApacheLuceneQueriesFunctionValueSource:", "CustomScorer", NULL, 0x2, NULL, NULL },
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "getChildren", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "explainWithInt:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.function.BoostedQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "weight_CustomScorer_", "weight", 0x12, "Lorg.apache.lucene.queries.function.BoostedQuery$BoostedWeight;", NULL, NULL, .constantValue.asLong = 0 },
    { "qWeight_", NULL, 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "vals_", NULL, 0x12, "Lorg.apache.lucene.queries.function.FunctionValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "readerContext_", NULL, 0x12, "Lorg.apache.lucene.index.LeafReaderContext;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer = { 2, "CustomScorer", "org.apache.lucene.queries.function", "BoostedQuery", 0x2, 4, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer;
}

@end

void OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_withFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer *self, OrgApacheLuceneQueriesFunctionBoostedQuery *outer$, OrgApacheLuceneIndexLeafReaderContext *readerContext, OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *w, jfloat qWeight, OrgApacheLuceneSearchScorer *scorer, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, scorer);
  JreStrongAssign(&self->weight_CustomScorer_, w);
  self->qWeight_ = qWeight;
  JreStrongAssign(&self->readerContext_, readerContext);
  JreStrongAssign(&self->vals_, [((OrgApacheLuceneQueriesFunctionValueSource *) nil_chk(vs)) getValuesWithJavaUtilMap:((OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *) nil_chk(self->weight_CustomScorer_))->fcontext_ withOrgApacheLuceneIndexLeafReaderContext:readerContext]);
}

OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer *new_OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_withFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionBoostedQuery *outer$, OrgApacheLuceneIndexLeafReaderContext *readerContext, OrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight *w, jfloat qWeight, OrgApacheLuceneSearchScorer *scorer, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer *self = [OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer alloc];
  OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer_initWithOrgApacheLuceneQueriesFunctionBoostedQuery_withOrgApacheLuceneIndexLeafReaderContext_withOrgApacheLuceneQueriesFunctionBoostedQuery_BoostedWeight_withFloat_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, readerContext, w, qWeight, scorer, vs);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionBoostedQuery_CustomScorer)
