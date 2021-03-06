//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionAnalyzer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer

#if !defined (OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer))
#define OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_

#define RESTRICT_OrgApacheLuceneAnalysisAnalyzerWrapper 1
#define INCLUDE_OrgApacheLuceneAnalysisAnalyzerWrapper 1
#include "org/apache/lucene/analysis/AnalyzerWrapper.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;

/*!
 @brief Wraps an <code>org.apache.lucene.analysis.Analyzer</code>
 to provide additional completion-only tuning
 (e.g. preserving token separators, preserving position increments while converting
 a token stream to an automaton)
 <p>
 Can be used to index <code>SuggestField</code> and <code>ContextSuggestField</code>
 and as a query analyzer to <code>PrefixCompletionQuery</code> amd <code>FuzzyCompletionQuery</code>
 <p>
 NOTE: In most cases, index and query analyzer should have same values for <code>preservePositionIncrements()</code>
 and <code>preserveSep()</code>
 */
@interface OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer : OrgApacheLuceneAnalysisAnalyzerWrapper

+ (jint)SEP_LABEL;

+ (jint)HOLE_CHARACTER;

+ (jint)DEFAULT_MAX_GRAPH_EXPANSIONS;

+ (jboolean)DEFAULT_PRESERVE_SEP;

+ (jboolean)DEFAULT_PRESERVE_POSITION_INCREMENTS;

#pragma mark Public

/*!
 @brief Calls <code>CompletionAnalyzer(org.apache.lucene.analysis.Analyzer,boolean,boolean,int)</code>
 preserving token separation, position increments and no limit on graph expansions
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

/*!
 @brief Calls <code>CompletionAnalyzer(org.apache.lucene.analysis.Analyzer,boolean,boolean,int)</code>
 with no limit on graph expansions
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                            withBoolean:(jboolean)preserveSep
                                            withBoolean:(jboolean)preservePositionIncrements;

/*!
 @brief Wraps an analyzer to convert it's output token stream to an automaton
 @param analyzer token stream to be converted to an automaton
 @param preserveSep Preserve separation between tokens when converting to an automaton
 @param preservePositionIncrements Preserve position increments for tokens when converting to an automaton
 @param maxGraphExpansions Sets the maximum number of graph expansions of a completion automaton
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                            withBoolean:(jboolean)preserveSep
                                            withBoolean:(jboolean)preservePositionIncrements
                                                withInt:(jint)maxGraphExpansions;

/*!
 @brief Calls <code>CompletionAnalyzer(org.apache.lucene.analysis.Analyzer,boolean,boolean,int)</code>
 preserving token separation and position increments
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                withInt:(jint)maxGraphExpansions;

/*!
 @brief Returns true if position increments are preserved when converting
 the token stream to an automaton
 */
- (jboolean)preservePositionIncrements;

/*!
 @brief Returns true if separation between tokens are preserved when converting
 the token stream to an automaton
 */
- (jboolean)preserveSep;

#pragma mark Protected

- (OrgApacheLuceneAnalysisAnalyzer *)getWrappedAnalyzerWithNSString:(NSString *)fieldName;

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)wrapComponentsWithNSString:(NSString *)fieldName
                            withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)components;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer)

/*!
 @brief Represents the separation between tokens, if
 <code>preserveSep</code> is <code>true</code>
 <p>
 Same label is used as a delimiter in the <code>org.apache.lucene.search.suggest.document.CompletionTokenStream</code>
 payload
 */
inline jint OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_get_SEP_LABEL();
#define OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_SEP_LABEL 31
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, SEP_LABEL, jint)

/*!
 @brief Represent a hole character, inserted by <code>org.apache.lucene.analysis.TokenStreamToAutomaton</code>
 */
inline jint OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_get_HOLE_CHARACTER();
#define OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_HOLE_CHARACTER 30
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, HOLE_CHARACTER, jint)

inline jint OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_get_DEFAULT_MAX_GRAPH_EXPANSIONS();
#define OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_MAX_GRAPH_EXPANSIONS 10000
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, DEFAULT_MAX_GRAPH_EXPANSIONS, jint)

inline jboolean OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_get_DEFAULT_PRESERVE_SEP();
#define OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_SEP true
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, DEFAULT_PRESERVE_SEP, jboolean)

inline jboolean OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_get_DEFAULT_PRESERVE_POSITION_INCREMENTS();
#define OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_DEFAULT_PRESERVE_POSITION_INCREMENTS true
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer, DEFAULT_PRESERVE_POSITION_INCREMENTS, jboolean)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements, jint maxGraphExpansions);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *new_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements, jint maxGraphExpansions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *create_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements, jint maxGraphExpansions);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *new_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *create_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *new_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *create_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withBoolean_withBoolean_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jboolean preserveSep, jboolean preservePositionIncrements);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, jint maxGraphExpansions);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *new_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jint maxGraphExpansions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *create_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_withInt_(OrgApacheLuceneAnalysisAnalyzer *analyzer, jint maxGraphExpansions);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer")
