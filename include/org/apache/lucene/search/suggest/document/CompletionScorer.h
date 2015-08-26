//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSuggestDocumentCompletionScorer_INCLUDE_ALL")
#if OrgApacheLuceneSearchSuggestDocumentCompletionScorer_RESTRICT
#define OrgApacheLuceneSearchSuggestDocumentCompletionScorer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSuggestDocumentCompletionScorer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSuggestDocumentCompletionScorer_RESTRICT

#if !defined (_OrgApacheLuceneSearchSuggestDocumentCompletionScorer_) && (OrgApacheLuceneSearchSuggestDocumentCompletionScorer_INCLUDE_ALL || OrgApacheLuceneSearchSuggestDocumentCompletionScorer_INCLUDE)
#define _OrgApacheLuceneSearchSuggestDocumentCompletionScorer_

#define OrgApacheLuceneSearchBulkScorer_RESTRICT 1
#define OrgApacheLuceneSearchBulkScorer_INCLUDE 1
#include "org/apache/lucene/search/BulkScorer.h"

@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneSearchSuggestDocumentCompletionWeight;
@class OrgApacheLuceneSearchSuggestDocumentNRTSuggester;
@class OrgApacheLuceneUtilAutomatonAutomaton;
@protocol OrgApacheLuceneSearchLeafCollector;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchSuggestDocumentCompletionScorer : OrgApacheLuceneSearchBulkScorer {
 @public
  OrgApacheLuceneSearchSuggestDocumentCompletionWeight *weight_;
  OrgApacheLuceneIndexLeafReader *reader_;
  jboolean filtered_;
  OrgApacheLuceneUtilAutomatonAutomaton *automaton_;
}

#pragma mark Public

- (jboolean)acceptWithInt:(jint)docID
withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs;

- (jlong)cost;

- (jfloat)scoreWithFloat:(jfloat)weight
               withFloat:(jfloat)boost;

- (jint)scoreWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)collector
                        withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs
                                            withInt:(jint)min
                                            withInt:(jint)max;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneSearchSuggestDocumentCompletionWeight:(OrgApacheLuceneSearchSuggestDocumentCompletionWeight *)weight
                        withOrgApacheLuceneSearchSuggestDocumentNRTSuggester:(OrgApacheLuceneSearchSuggestDocumentNRTSuggester *)suggester
                                          withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                                                 withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)filterDocs
                                                                 withBoolean:(jboolean)filtered
                                   withOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionScorer, weight_, OrgApacheLuceneSearchSuggestDocumentCompletionWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionScorer, reader_, OrgApacheLuceneIndexLeafReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionScorer, automaton_, OrgApacheLuceneUtilAutomatonAutomaton *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionScorer_initWithOrgApacheLuceneSearchSuggestDocumentCompletionWeight_withOrgApacheLuceneSearchSuggestDocumentNRTSuggester_withOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withBoolean_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneSearchSuggestDocumentCompletionScorer *self, OrgApacheLuceneSearchSuggestDocumentCompletionWeight *weight, OrgApacheLuceneSearchSuggestDocumentNRTSuggester *suggester, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> filterDocs, jboolean filtered, OrgApacheLuceneUtilAutomatonAutomaton *automaton);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionScorer *new_OrgApacheLuceneSearchSuggestDocumentCompletionScorer_initWithOrgApacheLuceneSearchSuggestDocumentCompletionWeight_withOrgApacheLuceneSearchSuggestDocumentNRTSuggester_withOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withBoolean_withOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneSearchSuggestDocumentCompletionWeight *weight, OrgApacheLuceneSearchSuggestDocumentNRTSuggester *suggester, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> filterDocs, jboolean filtered, OrgApacheLuceneUtilAutomatonAutomaton *automaton) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionScorer)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSuggestDocumentCompletionScorer_INCLUDE_ALL")