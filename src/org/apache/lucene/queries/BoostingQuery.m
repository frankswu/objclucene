//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/BoostingQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/BoostingQuery.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/FilterScorer.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TwoPhaseIterator.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneQueriesBoostingQuery () {
 @public
  jfloat boost_BoostingQuery_;
  OrgApacheLuceneSearchQuery *match_;
  OrgApacheLuceneSearchQuery *context_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesBoostingQuery, match_, OrgApacheLuceneSearchQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesBoostingQuery, context_, OrgApacheLuceneSearchQuery *)

@interface OrgApacheLuceneQueriesBoostingQuery_$1 : OrgApacheLuceneSearchWeight {
 @public
  OrgApacheLuceneQueriesBoostingQuery *this$0_;
  OrgApacheLuceneSearchWeight *val$matchWeight_;
  OrgApacheLuceneSearchWeight *val$contextWeight_;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc;

- (jfloat)getValueForNormalization;

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (instancetype)initWithOrgApacheLuceneQueriesBoostingQuery:(OrgApacheLuceneQueriesBoostingQuery *)outer$
                            withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$0
                            withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$1
                             withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesBoostingQuery_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesBoostingQuery_$1, this$0_, OrgApacheLuceneQueriesBoostingQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesBoostingQuery_$1, val$matchWeight_, OrgApacheLuceneSearchWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesBoostingQuery_$1, val$contextWeight_, OrgApacheLuceneSearchWeight *)

__attribute__((unused)) static void OrgApacheLuceneQueriesBoostingQuery_$1_initWithOrgApacheLuceneQueriesBoostingQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneQueriesBoostingQuery_$1 *self, OrgApacheLuceneQueriesBoostingQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchWeight *capture$1, OrgApacheLuceneSearchQuery *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesBoostingQuery_$1 *new_OrgApacheLuceneQueriesBoostingQuery_$1_initWithOrgApacheLuceneQueriesBoostingQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneQueriesBoostingQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchWeight *capture$1, OrgApacheLuceneSearchQuery *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesBoostingQuery_$1)

@interface OrgApacheLuceneQueriesBoostingQuery_$1_$1 : OrgApacheLuceneSearchFilterScorer {
 @public
  OrgApacheLuceneQueriesBoostingQuery_$1 *this$0_;
  OrgApacheLuceneSearchDocIdSetIterator *val$contextApproximation_;
  OrgApacheLuceneSearchTwoPhaseIterator *val$contextTwoPhase_;
}

- (jfloat)score;

- (instancetype)initWithOrgApacheLuceneQueriesBoostingQuery_$1:(OrgApacheLuceneQueriesBoostingQuery_$1 *)outer$
                     withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)capture$0
                     withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)capture$1
                               withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesBoostingQuery_$1_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesBoostingQuery_$1_$1, this$0_, OrgApacheLuceneQueriesBoostingQuery_$1 *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesBoostingQuery_$1_$1, val$contextApproximation_, OrgApacheLuceneSearchDocIdSetIterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesBoostingQuery_$1_$1, val$contextTwoPhase_, OrgApacheLuceneSearchTwoPhaseIterator *)

__attribute__((unused)) static void OrgApacheLuceneQueriesBoostingQuery_$1_$1_initWithOrgApacheLuceneQueriesBoostingQuery_$1_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneQueriesBoostingQuery_$1_$1 *self, OrgApacheLuceneQueriesBoostingQuery_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *capture$0, OrgApacheLuceneSearchTwoPhaseIterator *capture$1, OrgApacheLuceneSearchScorer *arg$0);

__attribute__((unused)) static OrgApacheLuceneQueriesBoostingQuery_$1_$1 *new_OrgApacheLuceneQueriesBoostingQuery_$1_$1_initWithOrgApacheLuceneQueriesBoostingQuery_$1_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneQueriesBoostingQuery_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *capture$0, OrgApacheLuceneSearchTwoPhaseIterator *capture$1, OrgApacheLuceneSearchScorer *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesBoostingQuery_$1_$1)

@implementation OrgApacheLuceneQueriesBoostingQuery

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)match
                    withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)context
                                         withFloat:(jfloat)boost {
  OrgApacheLuceneQueriesBoostingQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withFloat_(self, match, context, boost);
  return self;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  if (needsScores == false) {
    return [((OrgApacheLuceneSearchQuery *) nil_chk(match_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:needsScores];
  }
  OrgApacheLuceneSearchWeight *matchWeight = [((OrgApacheLuceneSearchQuery *) nil_chk(match_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:needsScores];
  OrgApacheLuceneSearchWeight *contextWeight = [((OrgApacheLuceneSearchQuery *) nil_chk(context_)) createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:false];
  return [new_OrgApacheLuceneQueriesBoostingQuery_$1_initWithOrgApacheLuceneQueriesBoostingQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(self, matchWeight, contextWeight, self) autorelease];
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ match_, context_, JavaLangFloat_valueOfWithFloat_(boost_BoostingQuery_) } count:3 type:NSObject_class_()]);
}

- (jboolean)isEqual:(id)obj {
  if ([super isEqual:obj] == false) {
    return false;
  }
  OrgApacheLuceneQueriesBoostingQuery *that = (OrgApacheLuceneQueriesBoostingQuery *) check_class_cast(obj, [OrgApacheLuceneQueriesBoostingQuery class]);
  return [((OrgApacheLuceneSearchQuery *) nil_chk(match_)) isEqual:((OrgApacheLuceneQueriesBoostingQuery *) nil_chk(that))->match_] && [((OrgApacheLuceneSearchQuery *) nil_chk(context_)) isEqual:that->context_] && JavaLangFloat_floatToIntBitsWithFloat_(boost_BoostingQuery_) == JavaLangFloat_floatToIntBitsWithFloat_(that->boost_BoostingQuery_);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$C$", [((OrgApacheLuceneSearchQuery *) nil_chk(match_)) toStringWithNSString:field], '/', [((OrgApacheLuceneSearchQuery *) nil_chk(context_)) toStringWithNSString:field]);
}

- (void)dealloc {
  RELEASE_(match_);
  RELEASE_(context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchQuery:withFloat:", "BoostingQuery", NULL, 0x1, NULL, NULL },
    { "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", "createWeight", "Lorg.apache.lucene.search.Weight;", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "boost_BoostingQuery_", "boost", 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "match_", NULL, 0x12, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
    { "context_", NULL, 0x12, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesBoostingQuery = { 2, "BoostingQuery", "org.apache.lucene.queries", NULL, 0x1, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesBoostingQuery;
}

@end

void OrgApacheLuceneQueriesBoostingQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withFloat_(OrgApacheLuceneQueriesBoostingQuery *self, OrgApacheLuceneSearchQuery *match, OrgApacheLuceneSearchQuery *context, jfloat boost) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->match_, match);
  JreStrongAssign(&self->context_, [((OrgApacheLuceneSearchQuery *) nil_chk(context)) clone]);
  self->boost_BoostingQuery_ = boost;
  [((OrgApacheLuceneSearchQuery *) nil_chk(self->context_)) setBoostWithFloat:0.0f];
}

OrgApacheLuceneQueriesBoostingQuery *new_OrgApacheLuceneQueriesBoostingQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withFloat_(OrgApacheLuceneSearchQuery *match, OrgApacheLuceneSearchQuery *context, jfloat boost) {
  OrgApacheLuceneQueriesBoostingQuery *self = [OrgApacheLuceneQueriesBoostingQuery alloc];
  OrgApacheLuceneQueriesBoostingQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchQuery_withFloat_(self, match, context, boost);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesBoostingQuery)

@implementation OrgApacheLuceneQueriesBoostingQuery_$1

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  [((OrgApacheLuceneSearchWeight *) nil_chk(val$matchWeight_)) extractTermsWithJavaUtilSet:terms];
  if (this$0_->boost_BoostingQuery_ >= 1) {
    [((OrgApacheLuceneSearchWeight *) nil_chk(val$contextWeight_)) extractTermsWithJavaUtilSet:terms];
  }
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc {
  OrgApacheLuceneSearchExplanation *matchExplanation = [((OrgApacheLuceneSearchWeight *) nil_chk(val$matchWeight_)) explainWithOrgApacheLuceneIndexLeafReaderContext:context withInt:doc];
  OrgApacheLuceneSearchExplanation *contextExplanation = [((OrgApacheLuceneSearchWeight *) nil_chk(val$contextWeight_)) explainWithOrgApacheLuceneIndexLeafReaderContext:context withInt:doc];
  if ([((OrgApacheLuceneSearchExplanation *) nil_chk(matchExplanation)) isMatch] == false || [((OrgApacheLuceneSearchExplanation *) nil_chk(contextExplanation)) isMatch] == false) {
    return matchExplanation;
  }
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_([matchExplanation getValue] * this$0_->boost_BoostingQuery_, @"product of:", [IOSObjectArray arrayWithObjects:(id[]){ matchExplanation, OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(this$0_->boost_BoostingQuery_, @"boost", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]) } count:2 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (jfloat)getValueForNormalization {
  return [((OrgApacheLuceneSearchWeight *) nil_chk(val$matchWeight_)) getValueForNormalization];
}

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost {
  [((OrgApacheLuceneSearchWeight *) nil_chk(val$matchWeight_)) normalizeWithFloat:norm withFloat:topLevelBoost];
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneSearchScorer *matchScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(val$matchWeight_)) scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
  if (matchScorer == nil) {
    return nil;
  }
  OrgApacheLuceneSearchScorer *contextScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(val$contextWeight_)) scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
  if (contextScorer == nil) {
    return matchScorer;
  }
  OrgApacheLuceneSearchTwoPhaseIterator *contextTwoPhase = [((OrgApacheLuceneSearchScorer *) nil_chk(contextScorer)) asTwoPhaseIterator];
  OrgApacheLuceneSearchDocIdSetIterator *contextApproximation = contextTwoPhase == nil ? contextScorer : [contextTwoPhase approximation];
  return [new_OrgApacheLuceneQueriesBoostingQuery_$1_$1_initWithOrgApacheLuceneQueriesBoostingQuery_$1_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchScorer_(self, contextApproximation, contextTwoPhase, matchScorer) autorelease];
}

- (instancetype)initWithOrgApacheLuceneQueriesBoostingQuery:(OrgApacheLuceneQueriesBoostingQuery *)outer$
                            withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$0
                            withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)capture$1
                             withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)arg$0 {
  OrgApacheLuceneQueriesBoostingQuery_$1_initWithOrgApacheLuceneQueriesBoostingQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$matchWeight_);
  RELEASE_(val$contextWeight_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "extractTermsWithJavaUtilSet:", "extractTerms", "V", 0x1, NULL, NULL },
    { "explainWithOrgApacheLuceneIndexLeafReaderContext:withInt:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x1, "Ljava.io.IOException;", NULL },
    { "getValueForNormalization", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "normalizeWithFloat:withFloat:", "normalize", "V", 0x1, NULL, NULL },
    { "scorerWithOrgApacheLuceneIndexLeafReaderContext:", "scorer", "Lorg.apache.lucene.search.Scorer;", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneQueriesBoostingQuery:withOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchQuery:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.BoostingQuery;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$matchWeight_", NULL, 0x1012, "Lorg.apache.lucene.search.Weight;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$contextWeight_", NULL, 0x1012, "Lorg.apache.lucene.search.Weight;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesBoostingQuery", "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesBoostingQuery_$1 = { 2, "", "org.apache.lucene.queries", "BoostingQuery", 0x8008, 6, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesBoostingQuery_$1;
}

@end

void OrgApacheLuceneQueriesBoostingQuery_$1_initWithOrgApacheLuceneQueriesBoostingQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneQueriesBoostingQuery_$1 *self, OrgApacheLuceneQueriesBoostingQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchWeight *capture$1, OrgApacheLuceneSearchQuery *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$matchWeight_, capture$0);
  JreStrongAssign(&self->val$contextWeight_, capture$1);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(self, arg$0);
}

OrgApacheLuceneQueriesBoostingQuery_$1 *new_OrgApacheLuceneQueriesBoostingQuery_$1_initWithOrgApacheLuceneQueriesBoostingQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(OrgApacheLuceneQueriesBoostingQuery *outer$, OrgApacheLuceneSearchWeight *capture$0, OrgApacheLuceneSearchWeight *capture$1, OrgApacheLuceneSearchQuery *arg$0) {
  OrgApacheLuceneQueriesBoostingQuery_$1 *self = [OrgApacheLuceneQueriesBoostingQuery_$1 alloc];
  OrgApacheLuceneQueriesBoostingQuery_$1_initWithOrgApacheLuceneQueriesBoostingQuery_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchQuery_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesBoostingQuery_$1)

@implementation OrgApacheLuceneQueriesBoostingQuery_$1_$1

- (jfloat)score {
  if ([((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(val$contextApproximation_)) docID] < [self docID]) {
    [val$contextApproximation_ advanceWithInt:[self docID]];
  }
  JreAssert(([val$contextApproximation_ docID] >= [self docID]), (@"org/apache/lucene/queries/BoostingQuery.java:116 condition failed: assert contextApproximation.docID() >= docID();"));
  jfloat score = [super score];
  if ([val$contextApproximation_ docID] == [self docID] && (val$contextTwoPhase_ == nil || [val$contextTwoPhase_ matches])) {
    JreTimesAssignFloatF(&score, this$0_->this$0_->boost_BoostingQuery_);
  }
  return score;
}

- (instancetype)initWithOrgApacheLuceneQueriesBoostingQuery_$1:(OrgApacheLuceneQueriesBoostingQuery_$1 *)outer$
                     withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)capture$0
                     withOrgApacheLuceneSearchTwoPhaseIterator:(OrgApacheLuceneSearchTwoPhaseIterator *)capture$1
                               withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)arg$0 {
  OrgApacheLuceneQueriesBoostingQuery_$1_$1_initWithOrgApacheLuceneQueriesBoostingQuery_$1_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchScorer_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$contextApproximation_);
  RELEASE_(val$contextTwoPhase_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneQueriesBoostingQuery_$1:withOrgApacheLuceneSearchDocIdSetIterator:withOrgApacheLuceneSearchTwoPhaseIterator:withOrgApacheLuceneSearchScorer:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.queries.BoostingQuery$1;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$contextApproximation_", NULL, 0x1012, "Lorg.apache.lucene.search.DocIdSetIterator;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$contextTwoPhase_", NULL, 0x1012, "Lorg.apache.lucene.search.TwoPhaseIterator;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueriesBoostingQuery_$1", "scorerWithOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesBoostingQuery_$1_$1 = { 2, "", "org.apache.lucene.queries", "BoostingQuery$", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneQueriesBoostingQuery_$1_$1;
}

@end

void OrgApacheLuceneQueriesBoostingQuery_$1_$1_initWithOrgApacheLuceneQueriesBoostingQuery_$1_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneQueriesBoostingQuery_$1_$1 *self, OrgApacheLuceneQueriesBoostingQuery_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *capture$0, OrgApacheLuceneSearchTwoPhaseIterator *capture$1, OrgApacheLuceneSearchScorer *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$contextApproximation_, capture$0);
  JreStrongAssign(&self->val$contextTwoPhase_, capture$1);
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, arg$0);
}

OrgApacheLuceneQueriesBoostingQuery_$1_$1 *new_OrgApacheLuceneQueriesBoostingQuery_$1_$1_initWithOrgApacheLuceneQueriesBoostingQuery_$1_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneQueriesBoostingQuery_$1 *outer$, OrgApacheLuceneSearchDocIdSetIterator *capture$0, OrgApacheLuceneSearchTwoPhaseIterator *capture$1, OrgApacheLuceneSearchScorer *arg$0) {
  OrgApacheLuceneQueriesBoostingQuery_$1_$1 *self = [OrgApacheLuceneQueriesBoostingQuery_$1_$1 alloc];
  OrgApacheLuceneQueriesBoostingQuery_$1_$1_initWithOrgApacheLuceneQueriesBoostingQuery_$1_withOrgApacheLuceneSearchDocIdSetIterator_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneSearchScorer_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesBoostingQuery_$1_$1)
