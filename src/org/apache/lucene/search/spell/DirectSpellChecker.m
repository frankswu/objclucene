//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/DirectSpellChecker.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Comparator.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "java/util/PriorityQueue.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/search/BoostAttribute.h"
#include "org/apache/lucene/search/FuzzyTermsEnum.h"
#include "org/apache/lucene/search/MaxNonCompetitiveBoostAttribute.h"
#include "org/apache/lucene/search/spell/DirectSpellChecker.h"
#include "org/apache/lucene/search/spell/LuceneLevenshteinDistance.h"
#include "org/apache/lucene/search/spell/SpellChecker.h"
#include "org/apache/lucene/search/spell/StringDistance.h"
#include "org/apache/lucene/search/spell/SuggestMode.h"
#include "org/apache/lucene/search/spell/SuggestWord.h"
#include "org/apache/lucene/search/spell/SuggestWordQueue.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/CharsRefBuilder.h"
#include "org/apache/lucene/util/automaton/LevenshteinAutomata.h"

@interface OrgApacheLuceneSearchSpellDirectSpellChecker () {
 @public
  /*!
   @brief maximum edit distance for candidate terms
   */
  jint maxEdits_;
  /*!
   @brief minimum prefix for candidate terms
   */
  jint minPrefix_;
  /*!
   @brief maximum number of top-N inspections per suggestion
   */
  jint maxInspections_;
  /*!
   @brief minimum accuracy for a term to match
   */
  jfloat accuracy_;
  /*!
   @brief value in [0..1] (or absolute number &gt;= 1) representing the minimum
 number of documents (of the total) where a term should appear.
   */
  jfloat thresholdFrequency_;
  /*!
   @brief minimum length of a query word to return suggestions
   */
  jint minQueryLength_;
  /*!
   @brief value in [0..1] (or absolute number &gt;= 1) representing the maximum
 number of documents (of the total) a query term can appear in to
 be corrected.
   */
  jfloat maxQueryFrequency_;
  /*!
   @brief true if the spellchecker should lowercase terms
   */
  jboolean lowerCaseTerms_;
  /*!
   @brief the comparator to use
   */
  id<JavaUtilComparator> comparator_;
  /*!
   @brief the string distance to use
   */
  id<OrgApacheLuceneSearchSpellStringDistance> distance_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellDirectSpellChecker, comparator_, id<JavaUtilComparator>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellDirectSpellChecker, distance_, id<OrgApacheLuceneSearchSpellStringDistance>)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSpellDirectSpellChecker)

id<OrgApacheLuceneSearchSpellStringDistance> OrgApacheLuceneSearchSpellDirectSpellChecker_INTERNAL_LEVENSHTEIN;

@implementation OrgApacheLuceneSearchSpellDirectSpellChecker

+ (id<OrgApacheLuceneSearchSpellStringDistance>)INTERNAL_LEVENSHTEIN {
  return OrgApacheLuceneSearchSpellDirectSpellChecker_INTERNAL_LEVENSHTEIN;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpellDirectSpellChecker_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getMaxEdits {
  return maxEdits_;
}

- (void)setMaxEditsWithInt:(jint)maxEdits {
  if (maxEdits < 1 || maxEdits > OrgApacheLuceneUtilAutomatonLevenshteinAutomata_MAXIMUM_SUPPORTED_DISTANCE) @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"Invalid maxEdits");
  self->maxEdits_ = maxEdits;
}

- (jint)getMinPrefix {
  return minPrefix_;
}

- (void)setMinPrefixWithInt:(jint)minPrefix {
  self->minPrefix_ = minPrefix;
}

- (jint)getMaxInspections {
  return maxInspections_;
}

- (void)setMaxInspectionsWithInt:(jint)maxInspections {
  self->maxInspections_ = maxInspections;
}

- (jfloat)getAccuracy {
  return accuracy_;
}

- (void)setAccuracyWithFloat:(jfloat)accuracy {
  self->accuracy_ = accuracy;
}

- (jfloat)getThresholdFrequency {
  return thresholdFrequency_;
}

- (void)setThresholdFrequencyWithFloat:(jfloat)thresholdFrequency {
  if (thresholdFrequency >= 1.0f && thresholdFrequency != JreFpToInt(thresholdFrequency)) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Fractional absolute document frequencies are not allowed");
  self->thresholdFrequency_ = thresholdFrequency;
}

- (jint)getMinQueryLength {
  return minQueryLength_;
}

- (void)setMinQueryLengthWithInt:(jint)minQueryLength {
  self->minQueryLength_ = minQueryLength;
}

- (jfloat)getMaxQueryFrequency {
  return maxQueryFrequency_;
}

- (void)setMaxQueryFrequencyWithFloat:(jfloat)maxQueryFrequency {
  if (maxQueryFrequency >= 1.0f && maxQueryFrequency != JreFpToInt(maxQueryFrequency)) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Fractional absolute document frequencies are not allowed");
  self->maxQueryFrequency_ = maxQueryFrequency;
}

- (jboolean)getLowerCaseTerms {
  return lowerCaseTerms_;
}

- (void)setLowerCaseTermsWithBoolean:(jboolean)lowerCaseTerms {
  self->lowerCaseTerms_ = lowerCaseTerms;
}

- (id<JavaUtilComparator>)getComparator {
  return comparator_;
}

- (void)setComparatorWithJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  JreStrongAssign(&self->comparator_, comparator);
}

- (id<OrgApacheLuceneSearchSpellStringDistance>)getDistance {
  return distance_;
}

- (void)setDistanceWithOrgApacheLuceneSearchSpellStringDistance:(id<OrgApacheLuceneSearchSpellStringDistance>)distance {
  JreStrongAssign(&self->distance_, distance);
}

- (IOSObjectArray *)suggestSimilarWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                       withInt:(jint)numSug
                           withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)ir {
  return [self suggestSimilarWithOrgApacheLuceneIndexTerm:term withInt:numSug withOrgApacheLuceneIndexIndexReader:ir withOrgApacheLuceneSearchSpellSuggestMode:JreLoadEnum(OrgApacheLuceneSearchSpellSuggestMode, SUGGEST_WHEN_NOT_IN_INDEX)];
}

- (IOSObjectArray *)suggestSimilarWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                       withInt:(jint)numSug
                           withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)ir
                     withOrgApacheLuceneSearchSpellSuggestMode:(OrgApacheLuceneSearchSpellSuggestMode *)suggestMode {
  return [self suggestSimilarWithOrgApacheLuceneIndexTerm:term withInt:numSug withOrgApacheLuceneIndexIndexReader:ir withOrgApacheLuceneSearchSpellSuggestMode:suggestMode withFloat:self->accuracy_];
}

- (IOSObjectArray *)suggestSimilarWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                       withInt:(jint)numSug
                           withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)ir
                     withOrgApacheLuceneSearchSpellSuggestMode:(OrgApacheLuceneSearchSpellSuggestMode *)suggestMode
                                                     withFloat:(jfloat)accuracy {
  OrgApacheLuceneUtilCharsRefBuilder *spare = create_OrgApacheLuceneUtilCharsRefBuilder_init();
  NSString *text = [((OrgApacheLuceneIndexTerm *) nil_chk(term)) text];
  if (minQueryLength_ > 0 && [((NSString *) nil_chk(text)) codePointCount:0 endIndex:((jint) [text length])] < minQueryLength_) return [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchSpellSuggestWord_class_()];
  if (lowerCaseTerms_) {
    term = create_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_([term field], [((NSString *) nil_chk(text)) lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ROOT)]);
  }
  jint docfreq = [((OrgApacheLuceneIndexIndexReader *) nil_chk(ir)) docFreqWithOrgApacheLuceneIndexTerm:term];
  if (suggestMode == JreLoadEnum(OrgApacheLuceneSearchSpellSuggestMode, SUGGEST_WHEN_NOT_IN_INDEX) && docfreq > 0) {
    return [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchSpellSuggestWord_class_()];
  }
  jint maxDoc = [ir maxDoc];
  if (maxQueryFrequency_ >= 1.0f && docfreq > maxQueryFrequency_) {
    return [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchSpellSuggestWord_class_()];
  }
  else if (docfreq > JreFpToInt(JavaLangMath_ceilWithDouble_(maxQueryFrequency_ * (jfloat) maxDoc))) {
    return [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchSpellSuggestWord_class_()];
  }
  if (suggestMode != JreLoadEnum(OrgApacheLuceneSearchSpellSuggestMode, SUGGEST_MORE_POPULAR)) docfreq = 0;
  if (thresholdFrequency_ >= 1.0f) {
    docfreq = JavaLangMath_maxWithInt_withInt_(docfreq, JreFpToInt(thresholdFrequency_));
  }
  else if (thresholdFrequency_ > 0.0f) {
    docfreq = JavaLangMath_maxWithInt_withInt_(docfreq, JreFpToInt((thresholdFrequency_ * (jfloat) maxDoc)) - 1);
  }
  id<JavaUtilCollection> terms = nil;
  jint inspections = numSug * maxInspections_;
  terms = [self suggestSimilarWithOrgApacheLuceneIndexTerm:term withInt:inspections withOrgApacheLuceneIndexIndexReader:ir withInt:docfreq withInt:1 withFloat:accuracy withOrgApacheLuceneUtilCharsRefBuilder:spare];
  if (maxEdits_ > 1 && [((id<JavaUtilCollection>) nil_chk(terms)) size] < inspections) {
    JavaUtilHashSet *moreTerms = create_JavaUtilHashSet_init();
    [moreTerms addAllWithJavaUtilCollection:terms];
    [moreTerms addAllWithJavaUtilCollection:[self suggestSimilarWithOrgApacheLuceneIndexTerm:term withInt:inspections withOrgApacheLuceneIndexIndexReader:ir withInt:docfreq withInt:maxEdits_ withFloat:accuracy withOrgApacheLuceneUtilCharsRefBuilder:spare]];
    terms = moreTerms;
  }
  IOSObjectArray *suggestions = [IOSObjectArray arrayWithLength:[((id<JavaUtilCollection>) nil_chk(terms)) size] type:OrgApacheLuceneSearchSpellSuggestWord_class_()];
  jint index = suggestions->size_ - 1;
  for (OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm * __strong s in terms) {
    OrgApacheLuceneSearchSpellSuggestWord *suggestion = create_OrgApacheLuceneSearchSpellSuggestWord_init();
    if (((OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *) nil_chk(s))->termAsString_ == nil) {
      [spare copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:s->term_];
      JreStrongAssign(&s->termAsString_, [spare description]);
    }
    JreStrongAssign(&suggestion->string_, s->termAsString_);
    suggestion->score_ = s->score_;
    suggestion->freq_ = s->docfreq_;
    IOSObjectArray_Set(suggestions, index--, suggestion);
  }
  OrgApacheLuceneUtilArrayUtil_timSortWithNSObjectArray_withJavaUtilComparator_(suggestions, JavaUtilCollections_reverseOrderWithJavaUtilComparator_(comparator_));
  if (numSug < suggestions->size_) {
    IOSObjectArray *trimmed = [IOSObjectArray arrayWithLength:numSug type:OrgApacheLuceneSearchSpellSuggestWord_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(suggestions, 0, trimmed, 0, numSug);
    suggestions = trimmed;
  }
  return suggestions;
}

- (id<JavaUtilCollection>)suggestSimilarWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                             withInt:(jint)numSug
                                 withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)ir
                                                             withInt:(jint)docfreq
                                                             withInt:(jint)editDistance
                                                           withFloat:(jfloat)accuracy
                              withOrgApacheLuceneUtilCharsRefBuilder:(OrgApacheLuceneUtilCharsRefBuilder *)spare {
  OrgApacheLuceneUtilAttributeSource *atts = create_OrgApacheLuceneUtilAttributeSource_init();
  id<OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute> maxBoostAtt = [atts addAttributeWithIOSClass:OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute_class_()];
  OrgApacheLuceneIndexTerms *terms = OrgApacheLuceneIndexMultiFields_getTermsWithOrgApacheLuceneIndexIndexReader_withNSString_(ir, [((OrgApacheLuceneIndexTerm *) nil_chk(term)) field]);
  if (terms == nil) {
    return JavaUtilCollections_emptyList();
  }
  OrgApacheLuceneSearchFuzzyTermsEnum *e = create_OrgApacheLuceneSearchFuzzyTermsEnum_initWithOrgApacheLuceneIndexTerms_withOrgApacheLuceneUtilAttributeSource_withOrgApacheLuceneIndexTerm_withFloat_withInt_withBoolean_(terms, atts, term, editDistance, JavaLangMath_maxWithInt_withInt_(minPrefix_, editDistance - 1), true);
  JavaUtilPriorityQueue *stQueue = create_JavaUtilPriorityQueue_init();
  OrgApacheLuceneUtilBytesRef *queryTerm = create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_([term text]);
  OrgApacheLuceneUtilBytesRef *candidateTerm;
  OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *st = create_OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm_init();
  id<OrgApacheLuceneSearchBoostAttribute> boostAtt = [((OrgApacheLuceneUtilAttributeSource *) nil_chk([e attributes])) addAttributeWithIOSClass:OrgApacheLuceneSearchBoostAttribute_class_()];
  while ((candidateTerm = [e next]) != nil) {
    jfloat boost = [((id<OrgApacheLuceneSearchBoostAttribute>) nil_chk(boostAtt)) getBoost];
    if ([stQueue size] >= numSug && boost <= ((OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *) nil_chk([stQueue peek]))->boost_) continue;
    if ([queryTerm bytesEqualsWithOrgApacheLuceneUtilBytesRef:candidateTerm]) continue;
    jint df = [e docFreq];
    if (df <= docfreq) continue;
    jfloat score;
    NSString *termAsString;
    if (distance_ == OrgApacheLuceneSearchSpellDirectSpellChecker_INTERNAL_LEVENSHTEIN) {
      termAsString = nil;
      score = boost / [e getScaleFactor] + [e getMinSimilarity];
    }
    else {
      [((OrgApacheLuceneUtilCharsRefBuilder *) nil_chk(spare)) copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:candidateTerm];
      termAsString = [spare description];
      score = [((id<OrgApacheLuceneSearchSpellStringDistance>) nil_chk(distance_)) getDistanceWithNSString:[term text] withNSString:termAsString];
    }
    if (score < accuracy) continue;
    JreStrongAssign(&st->term_, OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(candidateTerm));
    st->boost_ = boost;
    st->docfreq_ = df;
    JreStrongAssign(&st->termAsString_, termAsString);
    st->score_ = score;
    [stQueue offerWithId:st];
    st = ([stQueue size] > numSug) ? [stQueue poll] : create_OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm_init();
    [((id<OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute>) nil_chk(maxBoostAtt)) setMaxNonCompetitiveBoostWithFloat:([stQueue size] >= numSug) ? ((OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *) nil_chk([stQueue peek]))->boost_ : JavaLangFloat_NEGATIVE_INFINITY];
  }
  return stQueue;
}

- (void)dealloc {
  RELEASE_(comparator_);
  RELEASE_(distance_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSpellDirectSpellChecker class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSpellDirectSpellChecker_INTERNAL_LEVENSHTEIN, new_OrgApacheLuceneSearchSpellLuceneLevenshteinDistance_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSpellDirectSpellChecker)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DirectSpellChecker", NULL, 0x1, NULL, NULL },
    { "getMaxEdits", NULL, "I", 0x1, NULL, NULL },
    { "setMaxEditsWithInt:", "setMaxEdits", "V", 0x1, NULL, NULL },
    { "getMinPrefix", NULL, "I", 0x1, NULL, NULL },
    { "setMinPrefixWithInt:", "setMinPrefix", "V", 0x1, NULL, NULL },
    { "getMaxInspections", NULL, "I", 0x1, NULL, NULL },
    { "setMaxInspectionsWithInt:", "setMaxInspections", "V", 0x1, NULL, NULL },
    { "getAccuracy", NULL, "F", 0x1, NULL, NULL },
    { "setAccuracyWithFloat:", "setAccuracy", "V", 0x1, NULL, NULL },
    { "getThresholdFrequency", NULL, "F", 0x1, NULL, NULL },
    { "setThresholdFrequencyWithFloat:", "setThresholdFrequency", "V", 0x1, NULL, NULL },
    { "getMinQueryLength", NULL, "I", 0x1, NULL, NULL },
    { "setMinQueryLengthWithInt:", "setMinQueryLength", "V", 0x1, NULL, NULL },
    { "getMaxQueryFrequency", NULL, "F", 0x1, NULL, NULL },
    { "setMaxQueryFrequencyWithFloat:", "setMaxQueryFrequency", "V", 0x1, NULL, NULL },
    { "getLowerCaseTerms", NULL, "Z", 0x1, NULL, NULL },
    { "setLowerCaseTermsWithBoolean:", "setLowerCaseTerms", "V", 0x1, NULL, NULL },
    { "getComparator", NULL, "Ljava.util.Comparator;", 0x1, NULL, "()Ljava/util/Comparator<Lorg/apache/lucene/search/spell/SuggestWord;>;" },
    { "setComparatorWithJavaUtilComparator:", "setComparator", "V", 0x1, NULL, "(Ljava/util/Comparator<Lorg/apache/lucene/search/spell/SuggestWord;>;)V" },
    { "getDistance", NULL, "Lorg.apache.lucene.search.spell.StringDistance;", 0x1, NULL, NULL },
    { "setDistanceWithOrgApacheLuceneSearchSpellStringDistance:", "setDistance", "V", 0x1, NULL, NULL },
    { "suggestSimilarWithOrgApacheLuceneIndexTerm:withInt:withOrgApacheLuceneIndexIndexReader:", "suggestSimilar", "[Lorg.apache.lucene.search.spell.SuggestWord;", 0x1, "Ljava.io.IOException;", NULL },
    { "suggestSimilarWithOrgApacheLuceneIndexTerm:withInt:withOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchSpellSuggestMode:", "suggestSimilar", "[Lorg.apache.lucene.search.spell.SuggestWord;", 0x1, "Ljava.io.IOException;", NULL },
    { "suggestSimilarWithOrgApacheLuceneIndexTerm:withInt:withOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchSpellSuggestMode:withFloat:", "suggestSimilar", "[Lorg.apache.lucene.search.spell.SuggestWord;", 0x1, "Ljava.io.IOException;", NULL },
    { "suggestSimilarWithOrgApacheLuceneIndexTerm:withInt:withOrgApacheLuceneIndexIndexReader:withInt:withInt:withFloat:withOrgApacheLuceneUtilCharsRefBuilder:", "suggestSimilar", "Ljava.util.Collection;", 0x4, "Ljava.io.IOException;", "(Lorg/apache/lucene/index/Term;ILorg/apache/lucene/index/IndexReader;IIFLorg/apache/lucene/util/CharsRefBuilder;)Ljava/util/Collection<Lorg/apache/lucene/search/spell/DirectSpellChecker$ScoreTerm;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INTERNAL_LEVENSHTEIN", "INTERNAL_LEVENSHTEIN", 0x19, "Lorg.apache.lucene.search.spell.StringDistance;", &OrgApacheLuceneSearchSpellDirectSpellChecker_INTERNAL_LEVENSHTEIN, NULL, .constantValue.asLong = 0 },
    { "maxEdits_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minPrefix_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxInspections_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "accuracy_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "thresholdFrequency_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "minQueryLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxQueryFrequency_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "lowerCaseTerms_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "comparator_", NULL, 0x2, "Ljava.util.Comparator;", NULL, "Ljava/util/Comparator<Lorg/apache/lucene/search/spell/SuggestWord;>;", .constantValue.asLong = 0 },
    { "distance_", NULL, 0x2, "Lorg.apache.lucene.search.spell.StringDistance;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.spell.DirectSpellChecker$ScoreTerm;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellDirectSpellChecker = { 2, "DirectSpellChecker", "org.apache.lucene.search.spell", NULL, 0x1, 25, methods, 11, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSpellDirectSpellChecker;
}

@end

void OrgApacheLuceneSearchSpellDirectSpellChecker_init(OrgApacheLuceneSearchSpellDirectSpellChecker *self) {
  NSObject_init(self);
  self->maxEdits_ = OrgApacheLuceneUtilAutomatonLevenshteinAutomata_MAXIMUM_SUPPORTED_DISTANCE;
  self->minPrefix_ = 1;
  self->maxInspections_ = 5;
  self->accuracy_ = OrgApacheLuceneSearchSpellSpellChecker_DEFAULT_ACCURACY;
  self->thresholdFrequency_ = 0.0f;
  self->minQueryLength_ = 4;
  self->maxQueryFrequency_ = 0.01f;
  self->lowerCaseTerms_ = true;
  JreStrongAssign(&self->comparator_, JreLoadStatic(OrgApacheLuceneSearchSpellSuggestWordQueue, DEFAULT_COMPARATOR));
  JreStrongAssign(&self->distance_, OrgApacheLuceneSearchSpellDirectSpellChecker_INTERNAL_LEVENSHTEIN);
}

OrgApacheLuceneSearchSpellDirectSpellChecker *new_OrgApacheLuceneSearchSpellDirectSpellChecker_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellDirectSpellChecker, init)
}

OrgApacheLuceneSearchSpellDirectSpellChecker *create_OrgApacheLuceneSearchSpellDirectSpellChecker_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellDirectSpellChecker, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellDirectSpellChecker)

@implementation OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareToWithId:(OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *)other {
  cast_chk(other, [OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm class]);
  if ([((OrgApacheLuceneUtilBytesRef *) nil_chk(term_)) bytesEqualsWithOrgApacheLuceneUtilBytesRef:((OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *) nil_chk(other))->term_]) return 0;
  if (self->boost_ == other->boost_) return [((OrgApacheLuceneUtilBytesRef *) nil_chk(other->term_)) compareToWithId:self->term_];
  else return JavaLangFloat_compareWithFloat_withFloat_(self->boost_, other->boost_);
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 1;
  result = prime * result + ((term_ == nil) ? 0 : ((jint) [((OrgApacheLuceneUtilBytesRef *) nil_chk(term_)) hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self getClass] != (id) [obj getClass]) return false;
  OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *other = (OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *) cast_chk(obj, [OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm class]);
  if (term_ == nil) {
    if (other->term_ != nil) return false;
  }
  else if (![term_ bytesEqualsWithOrgApacheLuceneUtilBytesRef:other->term_]) return false;
  return true;
}

- (void)dealloc {
  RELEASE_(term_);
  RELEASE_(termAsString_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ScoreTerm", NULL, 0x1, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "term_", NULL, 0x1, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "boost_", NULL, 0x1, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "docfreq_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "termAsString_", NULL, 0x1, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "score_", NULL, 0x1, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm = { 2, "ScoreTerm", "org.apache.lucene.search.spell", "DirectSpellChecker", 0xc, 4, methods, 5, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/search/spell/DirectSpellChecker$ScoreTerm;>;" };
  return &_OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm;
}

@end

void OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm_init(OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *new_OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm, init)
}

OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm *create_OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellDirectSpellChecker_ScoreTerm)
