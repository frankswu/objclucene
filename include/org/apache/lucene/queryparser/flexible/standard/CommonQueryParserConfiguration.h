//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/CommonQueryParserConfiguration.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_) && (OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_

@class JavaUtilLocale;
@class JavaUtilTimeZone;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneDocumentDateTools_ResolutionEnum;
@class OrgApacheLuceneSearchMultiTermQuery_RewriteMethod;

@protocol OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration < NSObject, JavaObject >

- (void)setLowercaseExpandedTermsWithBoolean:(jboolean)lowercaseExpandedTerms;

- (jboolean)getLowercaseExpandedTerms;

- (void)setAllowLeadingWildcardWithBoolean:(jboolean)allowLeadingWildcard;

- (void)setEnablePositionIncrementsWithBoolean:(jboolean)enabled;

- (jboolean)getEnablePositionIncrements;

- (void)setMultiTermRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)method;

- (OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)getMultiTermRewriteMethod;

- (void)setFuzzyPrefixLengthWithInt:(jint)fuzzyPrefixLength;

- (void)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (JavaUtilLocale *)getLocale;

- (void)setTimeZoneWithJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone;

- (JavaUtilTimeZone *)getTimeZone;

- (void)setPhraseSlopWithInt:(jint)defaultPhraseSlop;

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer;

- (jboolean)getAllowLeadingWildcard;

- (jfloat)getFuzzyMinSim;

- (jint)getFuzzyPrefixLength;

- (jint)getPhraseSlop;

- (void)setFuzzyMinSimWithFloat:(jfloat)fuzzyMinSim;

- (void)setDateResolutionWithOrgApacheLuceneDocumentDateTools_ResolutionEnum:(OrgApacheLuceneDocumentDateTools_ResolutionEnum *)dateResolution;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardCommonQueryParserConfiguration_INCLUDE_ALL")