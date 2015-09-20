//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/QueryScorer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/highlight/QueryScorer.h"
#include "org/apache/lucene/search/highlight/TextFragment.h"
#include "org/apache/lucene/search/highlight/WeightedSpanTerm.h"
#include "org/apache/lucene/search/highlight/WeightedSpanTermExtractor.h"

@interface OrgApacheLuceneSearchHighlightQueryScorer () {
 @public
  jfloat totalScore_;
  id<JavaUtilSet> foundTerms_;
  id<JavaUtilMap> fieldWeightedSpanTerms_;
  jfloat maxTermWeight_;
  jint position_;
  NSString *defaultField_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt_;
  jboolean expandMultiTermQuery_;
  OrgApacheLuceneSearchQuery *query_;
  NSString *field_;
  OrgApacheLuceneIndexIndexReader *reader_;
  jboolean skipInitExtractor_;
  jboolean wrapToCaching_;
  jint maxCharsToAnalyze_;
  jboolean usePayloads_;
}

- (void)init__WithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                withNSString:(NSString *)field
         withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                 withBoolean:(jboolean)expandMultiTermQuery OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneAnalysisTokenStream *)initExtractorWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryScorer, foundTerms_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryScorer, fieldWeightedSpanTerms_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryScorer, defaultField_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryScorer, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryScorer, posIncAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryScorer, query_, OrgApacheLuceneSearchQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryScorer, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightQueryScorer, reader_, OrgApacheLuceneIndexIndexReader *)

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightQueryScorer_init__WithOrgApacheLuceneSearchQuery_withNSString_withOrgApacheLuceneIndexIndexReader_withBoolean_(OrgApacheLuceneSearchHighlightQueryScorer *self, OrgApacheLuceneSearchQuery *query, NSString *field, OrgApacheLuceneIndexIndexReader *reader, jboolean expandMultiTermQuery);

__attribute__((unused)) static OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightQueryScorer_initExtractorWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneSearchHighlightQueryScorer *self, OrgApacheLuceneAnalysisTokenStream *tokenStream);

@implementation OrgApacheLuceneSearchHighlightQueryScorer

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_(self, query);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                      withNSString:(NSString *)field {
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withNSString_(self, query, field);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
               withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                      withNSString:(NSString *)field {
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(self, query, reader, field);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
               withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                      withNSString:(NSString *)field
                                      withNSString:(NSString *)defaultField {
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(self, query, reader, field, defaultField);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                      withNSString:(NSString *)field
                                      withNSString:(NSString *)defaultField {
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withNSString_withNSString_(self, query, field, defaultField);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchHighlightWeightedSpanTermArray:(IOSObjectArray *)weightedTerms {
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchHighlightWeightedSpanTermArray_(self, weightedTerms);
  return self;
}

- (jfloat)getFragmentScore {
  return totalScore_;
}

- (jfloat)getMaxTermWeight {
  return maxTermWeight_;
}

- (jfloat)getTokenScore {
  position_ += [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt_)) getPositionIncrement];
  NSString *termText = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) description];
  OrgApacheLuceneSearchHighlightWeightedSpanTerm *weightedSpanTerm;
  if ((weightedSpanTerm = [((id<JavaUtilMap>) nil_chk(fieldWeightedSpanTerms_)) getWithId:termText]) == nil) {
    return 0;
  }
  if (((OrgApacheLuceneSearchHighlightWeightedSpanTerm *) nil_chk(weightedSpanTerm))->positionSensitive_ && ![weightedSpanTerm checkPositionWithInt:position_]) {
    return 0;
  }
  jfloat score = [weightedSpanTerm getWeight];
  if (![((id<JavaUtilSet>) nil_chk(foundTerms_)) containsWithId:termText]) {
    JrePlusAssignFloatF(&totalScore_, score);
    [foundTerms_ addWithId:termText];
  }
  return score;
}

- (OrgApacheLuceneAnalysisTokenStream *)init__WithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream {
  position_ = -1;
  JreStrongAssign(&termAtt_, [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(tokenStream)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&posIncAtt_, [tokenStream addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  if (!skipInitExtractor_) {
    if (fieldWeightedSpanTerms_ != nil) {
      [fieldWeightedSpanTerms_ clear];
    }
    return OrgApacheLuceneSearchHighlightQueryScorer_initExtractorWithOrgApacheLuceneAnalysisTokenStream_(self, tokenStream);
  }
  return nil;
}

- (OrgApacheLuceneSearchHighlightWeightedSpanTerm *)getWeightedSpanTermWithNSString:(NSString *)token {
  return [((id<JavaUtilMap>) nil_chk(fieldWeightedSpanTerms_)) getWithId:token];
}

- (void)init__WithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                withNSString:(NSString *)field
         withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                 withBoolean:(jboolean)expandMultiTermQuery {
  OrgApacheLuceneSearchHighlightQueryScorer_init__WithOrgApacheLuceneSearchQuery_withNSString_withOrgApacheLuceneIndexIndexReader_withBoolean_(self, query, field, reader, expandMultiTermQuery);
}

- (OrgApacheLuceneAnalysisTokenStream *)initExtractorWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream {
  return OrgApacheLuceneSearchHighlightQueryScorer_initExtractorWithOrgApacheLuceneAnalysisTokenStream_(self, tokenStream);
}

- (OrgApacheLuceneSearchHighlightWeightedSpanTermExtractor *)newTermExtractorWithNSString:(NSString *)defaultField {
  return defaultField == nil ? [new_OrgApacheLuceneSearchHighlightWeightedSpanTermExtractor_init() autorelease] : [new_OrgApacheLuceneSearchHighlightWeightedSpanTermExtractor_initWithNSString_(defaultField) autorelease];
}

- (void)startFragmentWithOrgApacheLuceneSearchHighlightTextFragment:(OrgApacheLuceneSearchHighlightTextFragment *)newFragment {
  JreStrongAssignAndConsume(&foundTerms_, new_JavaUtilHashSet_init());
  totalScore_ = 0;
}

- (jboolean)isExpandMultiTermQuery {
  return expandMultiTermQuery_;
}

- (void)setExpandMultiTermQueryWithBoolean:(jboolean)expandMultiTermQuery {
  self->expandMultiTermQuery_ = expandMultiTermQuery;
}

- (jboolean)isUsePayloads {
  return usePayloads_;
}

- (void)setUsePayloadsWithBoolean:(jboolean)usePayloads {
  self->usePayloads_ = usePayloads;
}

- (void)setWrapIfNotCachingTokenFilterWithBoolean:(jboolean)wrap {
  self->wrapToCaching_ = wrap;
}

- (void)setMaxDocCharsToAnalyzeWithInt:(jint)maxDocCharsToAnalyze {
  self->maxCharsToAnalyze_ = maxDocCharsToAnalyze;
}

- (void)dealloc {
  RELEASE_(foundTerms_);
  RELEASE_(fieldWeightedSpanTerms_);
  RELEASE_(defaultField_);
  RELEASE_(termAtt_);
  RELEASE_(posIncAtt_);
  RELEASE_(query_);
  RELEASE_(field_);
  RELEASE_(reader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchQuery:", "QueryScorer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchQuery:withNSString:", "QueryScorer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexIndexReader:withNSString:", "QueryScorer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexIndexReader:withNSString:withNSString:", "QueryScorer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchQuery:withNSString:withNSString:", "QueryScorer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchHighlightWeightedSpanTermArray:", "QueryScorer", NULL, 0x1, NULL, NULL },
    { "getFragmentScore", NULL, "F", 0x1, NULL, NULL },
    { "getMaxTermWeight", NULL, "F", 0x1, NULL, NULL },
    { "getTokenScore", NULL, "F", 0x1, NULL, NULL },
    { "init__WithOrgApacheLuceneAnalysisTokenStream:", "init", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, "Ljava.io.IOException;", NULL },
    { "getWeightedSpanTermWithNSString:", "getWeightedSpanTerm", "Lorg.apache.lucene.search.highlight.WeightedSpanTerm;", 0x1, NULL, NULL },
    { "init__WithOrgApacheLuceneSearchQuery:withNSString:withOrgApacheLuceneIndexIndexReader:withBoolean:", "init", "V", 0x2, NULL, NULL },
    { "initExtractorWithOrgApacheLuceneAnalysisTokenStream:", "initExtractor", "Lorg.apache.lucene.analysis.TokenStream;", 0x2, "Ljava.io.IOException;", NULL },
    { "newTermExtractorWithNSString:", "newTermExtractor", "Lorg.apache.lucene.search.highlight.WeightedSpanTermExtractor;", 0x4, NULL, NULL },
    { "startFragmentWithOrgApacheLuceneSearchHighlightTextFragment:", "startFragment", "V", 0x1, NULL, NULL },
    { "isExpandMultiTermQuery", NULL, "Z", 0x1, NULL, NULL },
    { "setExpandMultiTermQueryWithBoolean:", "setExpandMultiTermQuery", "V", 0x1, NULL, NULL },
    { "isUsePayloads", NULL, "Z", 0x1, NULL, NULL },
    { "setUsePayloadsWithBoolean:", "setUsePayloads", "V", 0x1, NULL, NULL },
    { "setWrapIfNotCachingTokenFilterWithBoolean:", "setWrapIfNotCachingTokenFilter", "V", 0x1, NULL, NULL },
    { "setMaxDocCharsToAnalyzeWithInt:", "setMaxDocCharsToAnalyze", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "totalScore_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "foundTerms_", NULL, 0x2, "Ljava.util.Set;", NULL, "Ljava/util/Set<Ljava/lang/String;>;", .constantValue.asLong = 0 },
    { "fieldWeightedSpanTerms_", NULL, 0x2, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/search/highlight/WeightedSpanTerm;>;", .constantValue.asLong = 0 },
    { "maxTermWeight_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "position_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultField_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x2, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncAtt_", NULL, 0x2, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "expandMultiTermQuery_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "query_", NULL, 0x2, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
    { "field_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "reader_", NULL, 0x2, "Lorg.apache.lucene.index.IndexReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "skipInitExtractor_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "wrapToCaching_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "maxCharsToAnalyze_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "usePayloads_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightQueryScorer = { 2, "QueryScorer", "org.apache.lucene.search.highlight", NULL, 0x1, 21, methods, 16, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightQueryScorer;
}

@end

void OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchHighlightQueryScorer *self, OrgApacheLuceneSearchQuery *query) {
  NSObject_init(self);
  self->position_ = -1;
  self->expandMultiTermQuery_ = true;
  self->wrapToCaching_ = true;
  self->usePayloads_ = false;
  OrgApacheLuceneSearchHighlightQueryScorer_init__WithOrgApacheLuceneSearchQuery_withNSString_withOrgApacheLuceneIndexIndexReader_withBoolean_(self, query, nil, nil, true);
}

OrgApacheLuceneSearchHighlightQueryScorer *new_OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) {
  OrgApacheLuceneSearchHighlightQueryScorer *self = [OrgApacheLuceneSearchHighlightQueryScorer alloc];
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_(self, query);
  return self;
}

void OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withNSString_(OrgApacheLuceneSearchHighlightQueryScorer *self, OrgApacheLuceneSearchQuery *query, NSString *field) {
  NSObject_init(self);
  self->position_ = -1;
  self->expandMultiTermQuery_ = true;
  self->wrapToCaching_ = true;
  self->usePayloads_ = false;
  OrgApacheLuceneSearchHighlightQueryScorer_init__WithOrgApacheLuceneSearchQuery_withNSString_withOrgApacheLuceneIndexIndexReader_withBoolean_(self, query, field, nil, true);
}

OrgApacheLuceneSearchHighlightQueryScorer *new_OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withNSString_(OrgApacheLuceneSearchQuery *query, NSString *field) {
  OrgApacheLuceneSearchHighlightQueryScorer *self = [OrgApacheLuceneSearchHighlightQueryScorer alloc];
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withNSString_(self, query, field);
  return self;
}

void OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneSearchHighlightQueryScorer *self, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneIndexIndexReader *reader, NSString *field) {
  NSObject_init(self);
  self->position_ = -1;
  self->expandMultiTermQuery_ = true;
  self->wrapToCaching_ = true;
  self->usePayloads_ = false;
  OrgApacheLuceneSearchHighlightQueryScorer_init__WithOrgApacheLuceneSearchQuery_withNSString_withOrgApacheLuceneIndexIndexReader_withBoolean_(self, query, field, reader, true);
}

OrgApacheLuceneSearchHighlightQueryScorer *new_OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneIndexIndexReader *reader, NSString *field) {
  OrgApacheLuceneSearchHighlightQueryScorer *self = [OrgApacheLuceneSearchHighlightQueryScorer alloc];
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(self, query, reader, field);
  return self;
}

void OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(OrgApacheLuceneSearchHighlightQueryScorer *self, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *defaultField) {
  NSObject_init(self);
  self->position_ = -1;
  self->expandMultiTermQuery_ = true;
  self->wrapToCaching_ = true;
  self->usePayloads_ = false;
  JreStrongAssign(&self->defaultField_, defaultField);
  OrgApacheLuceneSearchHighlightQueryScorer_init__WithOrgApacheLuceneSearchQuery_withNSString_withOrgApacheLuceneIndexIndexReader_withBoolean_(self, query, field, reader, true);
}

OrgApacheLuceneSearchHighlightQueryScorer *new_OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *defaultField) {
  OrgApacheLuceneSearchHighlightQueryScorer *self = [OrgApacheLuceneSearchHighlightQueryScorer alloc];
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(self, query, reader, field, defaultField);
  return self;
}

void OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withNSString_withNSString_(OrgApacheLuceneSearchHighlightQueryScorer *self, OrgApacheLuceneSearchQuery *query, NSString *field, NSString *defaultField) {
  NSObject_init(self);
  self->position_ = -1;
  self->expandMultiTermQuery_ = true;
  self->wrapToCaching_ = true;
  self->usePayloads_ = false;
  JreStrongAssign(&self->defaultField_, defaultField);
  OrgApacheLuceneSearchHighlightQueryScorer_init__WithOrgApacheLuceneSearchQuery_withNSString_withOrgApacheLuceneIndexIndexReader_withBoolean_(self, query, field, nil, true);
}

OrgApacheLuceneSearchHighlightQueryScorer *new_OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withNSString_withNSString_(OrgApacheLuceneSearchQuery *query, NSString *field, NSString *defaultField) {
  OrgApacheLuceneSearchHighlightQueryScorer *self = [OrgApacheLuceneSearchHighlightQueryScorer alloc];
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchQuery_withNSString_withNSString_(self, query, field, defaultField);
  return self;
}

void OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchHighlightWeightedSpanTermArray_(OrgApacheLuceneSearchHighlightQueryScorer *self, IOSObjectArray *weightedTerms) {
  NSObject_init(self);
  self->position_ = -1;
  self->expandMultiTermQuery_ = true;
  self->wrapToCaching_ = true;
  self->usePayloads_ = false;
  JreStrongAssignAndConsume(&self->fieldWeightedSpanTerms_, new_JavaUtilHashMap_initWithInt_(((IOSObjectArray *) nil_chk(weightedTerms))->size_));
  for (jint i = 0; i < weightedTerms->size_; i++) {
    OrgApacheLuceneSearchHighlightWeightedSpanTerm *existingTerm = [self->fieldWeightedSpanTerms_ getWithId:((OrgApacheLuceneSearchHighlightWeightedSpanTerm *) nil_chk(IOSObjectArray_Get(weightedTerms, i)))->term_];
    if ((existingTerm == nil) || (existingTerm->weight_ < ((OrgApacheLuceneSearchHighlightWeightedSpanTerm *) nil_chk(IOSObjectArray_Get(weightedTerms, i)))->weight_)) {
      [self->fieldWeightedSpanTerms_ putWithId:((OrgApacheLuceneSearchHighlightWeightedSpanTerm *) nil_chk(IOSObjectArray_Get(weightedTerms, i)))->term_ withId:IOSObjectArray_Get(weightedTerms, i)];
      self->maxTermWeight_ = JavaLangMath_maxWithFloat_withFloat_(self->maxTermWeight_, [((OrgApacheLuceneSearchHighlightWeightedSpanTerm *) nil_chk(IOSObjectArray_Get(weightedTerms, i))) getWeight]);
    }
  }
  self->skipInitExtractor_ = true;
}

OrgApacheLuceneSearchHighlightQueryScorer *new_OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchHighlightWeightedSpanTermArray_(IOSObjectArray *weightedTerms) {
  OrgApacheLuceneSearchHighlightQueryScorer *self = [OrgApacheLuceneSearchHighlightQueryScorer alloc];
  OrgApacheLuceneSearchHighlightQueryScorer_initWithOrgApacheLuceneSearchHighlightWeightedSpanTermArray_(self, weightedTerms);
  return self;
}

void OrgApacheLuceneSearchHighlightQueryScorer_init__WithOrgApacheLuceneSearchQuery_withNSString_withOrgApacheLuceneIndexIndexReader_withBoolean_(OrgApacheLuceneSearchHighlightQueryScorer *self, OrgApacheLuceneSearchQuery *query, NSString *field, OrgApacheLuceneIndexIndexReader *reader, jboolean expandMultiTermQuery) {
  JreStrongAssign(&self->reader_, reader);
  self->expandMultiTermQuery_ = expandMultiTermQuery;
  JreStrongAssign(&self->query_, query);
  JreStrongAssign(&self->field_, field);
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightQueryScorer_initExtractorWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneSearchHighlightQueryScorer *self, OrgApacheLuceneAnalysisTokenStream *tokenStream) {
  OrgApacheLuceneSearchHighlightWeightedSpanTermExtractor *qse = [self newTermExtractorWithNSString:self->defaultField_];
  [((OrgApacheLuceneSearchHighlightWeightedSpanTermExtractor *) nil_chk(qse)) setMaxDocCharsToAnalyzeWithInt:self->maxCharsToAnalyze_];
  [qse setExpandMultiTermQueryWithBoolean:self->expandMultiTermQuery_];
  [qse setWrapIfNotCachingTokenFilterWithBoolean:self->wrapToCaching_];
  [qse setUsePayloadsWithBoolean:self->usePayloads_];
  if (self->reader_ == nil) {
    JreStrongAssign(&self->fieldWeightedSpanTerms_, [qse getWeightedSpanTermsWithOrgApacheLuceneSearchQuery:self->query_ withOrgApacheLuceneAnalysisTokenStream:tokenStream withNSString:self->field_]);
  }
  else {
    JreStrongAssign(&self->fieldWeightedSpanTerms_, [qse getWeightedSpanTermsWithScoresWithOrgApacheLuceneSearchQuery:self->query_ withOrgApacheLuceneAnalysisTokenStream:tokenStream withNSString:self->field_ withOrgApacheLuceneIndexIndexReader:self->reader_]);
  }
  if ([qse isCachedTokenStream]) {
    return [qse getTokenStream];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightQueryScorer)
