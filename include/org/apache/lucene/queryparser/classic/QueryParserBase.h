//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/classic/QueryParserBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserClassicQueryParserBase_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserClassicQueryParserBase_RESTRICT
#define OrgApacheLuceneQueryparserClassicQueryParserBase_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserClassicQueryParserBase_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserClassicQueryParserBase_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserClassicQueryParserBase_) && (OrgApacheLuceneQueryparserClassicQueryParserBase_INCLUDE_ALL || OrgApacheLuceneQueryparserClassicQueryParserBase_INCLUDE)
#define _OrgApacheLuceneQueryparserClassicQueryParserBase_

#define OrgApacheLuceneUtilQueryBuilder_RESTRICT 1
#define OrgApacheLuceneUtilQueryBuilder_INCLUDE 1
#include "org/apache/lucene/util/QueryBuilder.h"

#define OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/standard/CommonQueryParserConfiguration.h"

@class JavaUtilLocale;
@class JavaUtilTimeZone;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneDocumentDateTools_ResolutionEnum;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum;
@class OrgApacheLuceneQueryparserClassicToken;
@class OrgApacheLuceneSearchBooleanClause;
@class OrgApacheLuceneSearchBooleanClause_OccurEnum;
@class OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneQueryparserClassicCharStream;

#define OrgApacheLuceneQueryparserClassicQueryParserBase_CONJ_NONE 0
#define OrgApacheLuceneQueryparserClassicQueryParserBase_CONJ_AND 1
#define OrgApacheLuceneQueryparserClassicQueryParserBase_CONJ_OR 2
#define OrgApacheLuceneQueryparserClassicQueryParserBase_MOD_NONE 0
#define OrgApacheLuceneQueryparserClassicQueryParserBase_MOD_NOT 10
#define OrgApacheLuceneQueryparserClassicQueryParserBase_MOD_REQ 11

@interface OrgApacheLuceneQueryparserClassicQueryParserBase : OrgApacheLuceneUtilQueryBuilder < OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration > {
 @public
  OrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum *operator__;
  jboolean lowercaseExpandedTerms_;
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *multiTermRewriteMethod_;
  jboolean allowLeadingWildcard_;
  NSString *field_;
  jint phraseSlop_;
  jfloat fuzzyMinSim_;
  jint fuzzyPrefixLength_;
  JavaUtilLocale *locale_;
  JavaUtilTimeZone *timeZone_;
  OrgApacheLuceneDocumentDateTools_ResolutionEnum *dateResolution_;
  id<JavaUtilMap> fieldToDateResolution_;
  jboolean analyzeRangeTerms_;
  jboolean autoGeneratePhraseQueries_;
  jint maxDeterminizedStates_;
}

#pragma mark Public

+ (NSString *)escapeWithNSString:(NSString *)s;

- (jboolean)getAllowLeadingWildcard;

- (jboolean)getAnalyzeRangeTerms;

- (jboolean)getAutoGeneratePhraseQueries;

- (OrgApacheLuceneDocumentDateTools_ResolutionEnum *)getDateResolutionWithNSString:(NSString *)fieldName;

- (OrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum *)getDefaultOperator;

- (NSString *)getField;

- (jfloat)getFuzzyMinSim;

- (jint)getFuzzyPrefixLength;

- (JavaUtilLocale *)getLocale;

- (jboolean)getLowercaseExpandedTerms;

- (jint)getMaxDeterminizedStates;

- (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)getMultiTermRewriteMethod;

- (jint)getPhraseSlop;

- (JavaUtilTimeZone *)getTimeZone;

- (void)init__WithNSString:(NSString *)f
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchQuery *)parseWithNSString:(NSString *)query;

- (void)ReInitWithOrgApacheLuceneQueryparserClassicCharStream:(id<OrgApacheLuceneQueryparserClassicCharStream>)stream;

- (void)setAllowLeadingWildcardWithBoolean:(jboolean)allowLeadingWildcard;

- (void)setAnalyzeRangeTermsWithBoolean:(jboolean)analyzeRangeTerms;

- (void)setAutoGeneratePhraseQueriesWithBoolean:(jboolean)value;

- (void)setDateResolutionWithOrgApacheLuceneDocumentDateTools_ResolutionEnum:(OrgApacheLuceneDocumentDateTools_ResolutionEnum *)dateResolution;

- (void)setDateResolutionWithNSString:(NSString *)fieldName
withOrgApacheLuceneDocumentDateTools_ResolutionEnum:(OrgApacheLuceneDocumentDateTools_ResolutionEnum *)dateResolution;

- (void)setDefaultOperatorWithOrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum:(OrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum *)op;

- (void)setFuzzyMinSimWithFloat:(jfloat)fuzzyMinSim;

- (void)setFuzzyPrefixLengthWithInt:(jint)fuzzyPrefixLength;

- (void)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)setLowercaseExpandedTermsWithBoolean:(jboolean)lowercaseExpandedTerms;

- (void)setMaxDeterminizedStatesWithInt:(jint)maxDeterminizedStates;

- (void)setMultiTermRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method;

- (void)setPhraseSlopWithInt:(jint)phraseSlop;

- (void)setTimeZoneWithJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone;

- (OrgApacheLuceneSearchQuery *)TopLevelQueryWithNSString:(NSString *)field;

#pragma mark Protected

- (instancetype)init;

- (void)addClauseWithJavaUtilList:(id<JavaUtilList>)clauses
                          withInt:(jint)conj
                          withInt:(jint)mods
   withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)q;

- (OrgApacheLuceneUtilBytesRef *)analyzeMultitermTermWithNSString:(NSString *)field
                                                     withNSString:(NSString *)part
                              withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzerIn;

- (OrgApacheLuceneSearchQuery *)getBooleanQueryWithJavaUtilList:(id<JavaUtilList>)clauses;

- (OrgApacheLuceneSearchQuery *)getBooleanQueryWithJavaUtilList:(id<JavaUtilList>)clauses
                                                    withBoolean:(jboolean)disableCoord;

- (OrgApacheLuceneSearchQuery *)getFieldQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)queryText
                                              withBoolean:(jboolean)quoted;

- (OrgApacheLuceneSearchQuery *)getFieldQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)queryText
                                                  withInt:(jint)slop;

- (OrgApacheLuceneSearchQuery *)getFuzzyQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)termStr
                                                withFloat:(jfloat)minSimilarity;

- (OrgApacheLuceneSearchQuery *)getPrefixQueryWithNSString:(NSString *)field
                                              withNSString:(NSString *)termStr;

- (OrgApacheLuceneSearchQuery *)getRangeQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)part1
                                             withNSString:(NSString *)part2
                                              withBoolean:(jboolean)startInclusive
                                              withBoolean:(jboolean)endInclusive;

- (OrgApacheLuceneSearchQuery *)getRegexpQueryWithNSString:(NSString *)field
                                              withNSString:(NSString *)termStr;

- (OrgApacheLuceneSearchQuery *)getWildcardQueryWithNSString:(NSString *)field
                                                withNSString:(NSString *)termStr;

- (OrgApacheLuceneSearchBooleanClause *)newBooleanClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)q
                                      withOrgApacheLuceneSearchBooleanClause_OccurEnum:(OrgApacheLuceneSearchBooleanClause_OccurEnum *)occur OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchQuery *)newFieldQueryWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                                    withNSString:(NSString *)field
                                                                    withNSString:(NSString *)queryText
                                                                     withBoolean:(jboolean)quoted OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchQuery *)newFuzzyQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                                withFloat:(jfloat)minimumSimilarity
                                                                  withInt:(jint)prefixLength OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchQuery *)newMatchAllDocsQuery OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchQuery *)newPrefixQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)prefix OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchQuery *)newRangeQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)part1
                                             withNSString:(NSString *)part2
                                              withBoolean:(jboolean)startInclusive
                                              withBoolean:(jboolean)endInclusive OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchQuery *)newRegexpQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)regexp OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneSearchQuery *)newWildcardQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (NSString *)discardEscapeCharWithNSString:(NSString *)input;

- (OrgApacheLuceneSearchQuery *)handleBareFuzzyWithNSString:(NSString *)qfield
                 withOrgApacheLuceneQueryparserClassicToken:(OrgApacheLuceneQueryparserClassicToken *)fuzzySlop
                                               withNSString:(NSString *)termImage;

- (OrgApacheLuceneSearchQuery *)handleBareTokenQueryWithNSString:(NSString *)qfield
                      withOrgApacheLuceneQueryparserClassicToken:(OrgApacheLuceneQueryparserClassicToken *)term
                      withOrgApacheLuceneQueryparserClassicToken:(OrgApacheLuceneQueryparserClassicToken *)fuzzySlop
                                                     withBoolean:(jboolean)prefix
                                                     withBoolean:(jboolean)wildcard
                                                     withBoolean:(jboolean)fuzzy
                                                     withBoolean:(jboolean)regexp;

- (OrgApacheLuceneSearchQuery *)handleBoostWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)q
                               withOrgApacheLuceneQueryparserClassicToken:(OrgApacheLuceneQueryparserClassicToken *)boost;

- (OrgApacheLuceneSearchQuery *)handleQuotedTermWithNSString:(NSString *)qfield
                  withOrgApacheLuceneQueryparserClassicToken:(OrgApacheLuceneQueryparserClassicToken *)term
                  withOrgApacheLuceneQueryparserClassicToken:(OrgApacheLuceneQueryparserClassicToken *)fuzzySlop;

+ (jint)hexToIntWithChar:(jchar)c;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserClassicQueryParserBase)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, operator__, OrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, multiTermRewriteMethod_, OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, locale_, JavaUtilLocale *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, timeZone_, JavaUtilTimeZone *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, dateResolution_, OrgApacheLuceneDocumentDateTools_ResolutionEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, fieldToDateResolution_, id<JavaUtilMap>)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, CONJ_NONE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, CONJ_AND, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, CONJ_OR, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, MOD_NONE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, MOD_NOT, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, MOD_REQ, jint)

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum *OrgApacheLuceneQueryparserClassicQueryParserBase_AND_OPERATOR_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, AND_OPERATOR_, OrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum *)

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum *OrgApacheLuceneQueryparserClassicQueryParserBase_OR_OPERATOR_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicQueryParserBase, OR_OPERATOR_, OrgApacheLuceneQueryparserClassicQueryParser_OperatorEnum *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicQueryParserBase_init(OrgApacheLuceneQueryparserClassicQueryParserBase *self);

FOUNDATION_EXPORT jint OrgApacheLuceneQueryparserClassicQueryParserBase_hexToIntWithChar_(jchar c);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserClassicQueryParserBase_escapeWithNSString_(NSString *s);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserClassicQueryParserBase)

#endif

#if !defined (_OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother_) && (OrgApacheLuceneQueryparserClassicQueryParserBase_INCLUDE_ALL || OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother_INCLUDE)
#define _OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother_

#define JavaLangThrowable_RESTRICT 1
#define JavaLangThrowable_INCLUDE 1
#include "java/lang/Throwable.h"

@interface OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother : JavaLangThrowable

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother_init(OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother *new_OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserClassicQueryParserBase_MethodRemovedUseAnother)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserClassicQueryParserBase_INCLUDE_ALL")