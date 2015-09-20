//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FuzzyQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchFuzzyQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchFuzzyQuery_RESTRICT
#define OrgApacheLuceneSearchFuzzyQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchFuzzyQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchFuzzyQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchFuzzyQuery_) && (OrgApacheLuceneSearchFuzzyQuery_INCLUDE_ALL || OrgApacheLuceneSearchFuzzyQuery_INCLUDE)
#define _OrgApacheLuceneSearchFuzzyQuery_

#define OrgApacheLuceneSearchMultiTermQuery_RESTRICT 1
#define OrgApacheLuceneSearchMultiTermQuery_INCLUDE 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilAttributeSource;

#define OrgApacheLuceneSearchFuzzyQuery_defaultMaxEdits 2
#define OrgApacheLuceneSearchFuzzyQuery_defaultPrefixLength 0
#define OrgApacheLuceneSearchFuzzyQuery_defaultMaxExpansions 50
#define OrgApacheLuceneSearchFuzzyQuery_defaultTranspositions true
#define OrgApacheLuceneSearchFuzzyQuery_defaultMinSimilarity 2.0f

@interface OrgApacheLuceneSearchFuzzyQuery : OrgApacheLuceneSearchMultiTermQuery

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)maxEdits;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)maxEdits
                                         withInt:(jint)prefixLength;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)maxEdits
                                         withInt:(jint)prefixLength
                                         withInt:(jint)maxExpansions
                                     withBoolean:(jboolean)transpositions;

- (jboolean)isEqual:(id)obj;

+ (jint)floatToEditsWithFloat:(jfloat)minimumSimilarity
                      withInt:(jint)termLen;

- (jint)getMaxEdits;

- (jint)getPrefixLength;

- (OrgApacheLuceneIndexTerm *)getTerm;

- (jboolean)getTranspositions;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFuzzyQuery)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchFuzzyQuery, defaultMaxEdits, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchFuzzyQuery, defaultPrefixLength, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchFuzzyQuery, defaultMaxExpansions, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchFuzzyQuery, defaultTranspositions, jboolean)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchFuzzyQuery, defaultMinSimilarity, jfloat)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength, jint maxExpansions, jboolean transpositions);

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength, jint maxExpansions, jboolean transpositions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength);

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jint maxEdits, jint prefixLength) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term, jint maxEdits);

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneIndexTerm *term, jint maxEdits) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchFuzzyQuery *self, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneSearchFuzzyQuery *new_OrgApacheLuceneSearchFuzzyQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jint OrgApacheLuceneSearchFuzzyQuery_floatToEditsWithFloat_withInt_(jfloat minimumSimilarity, jint termLen);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFuzzyQuery)

#endif

#pragma pop_macro("OrgApacheLuceneSearchFuzzyQuery_INCLUDE_ALL")
