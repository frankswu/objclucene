//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/TermsQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinTermsQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinTermsQuery

#if !defined (OrgApacheLuceneSearchJoinTermsQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsQuery || defined(INCLUDE_OrgApacheLuceneSearchJoinTermsQuery))
#define OrgApacheLuceneSearchJoinTermsQuery_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQuery 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class OrgApacheLuceneIndexTerms;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilBytesRefHash;

/*!
 @brief A query that has an array of terms from a specific field.
 This query will match documents have one or more terms in
 the specified field that match with the terms specified in the array.
 */
@interface OrgApacheLuceneSearchJoinTermsQuery : OrgApacheLuceneSearchMultiTermQuery

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)string;

#pragma mark Protected

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms
                                      withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)atts;

#pragma mark Package-Private

/*!
 @param field The field that should contain terms that are specified in the previous parameter
 @param terms The terms that matching documents should have. The terms must be sorted by natural order.
 */
- (instancetype)initWithNSString:(NSString *)field
  withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)fromQuery
withOrgApacheLuceneUtilBytesRefHash:(OrgApacheLuceneUtilBytesRefHash *)terms;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinTermsQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinTermsQuery_initWithNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneUtilBytesRefHash_(OrgApacheLuceneSearchJoinTermsQuery *self, NSString *field, OrgApacheLuceneSearchQuery *fromQuery, OrgApacheLuceneUtilBytesRefHash *terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsQuery *new_OrgApacheLuceneSearchJoinTermsQuery_initWithNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneUtilBytesRefHash_(NSString *field, OrgApacheLuceneSearchQuery *fromQuery, OrgApacheLuceneUtilBytesRefHash *terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsQuery *create_OrgApacheLuceneSearchJoinTermsQuery_initWithNSString_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneUtilBytesRefHash_(NSString *field, OrgApacheLuceneSearchQuery *fromQuery, OrgApacheLuceneUtilBytesRefHash *terms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinTermsQuery)

#endif

#if !defined (OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_) && (INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsQuery || defined(INCLUDE_OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum))
#define OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_

#define RESTRICT_OrgApacheLuceneIndexFilteredTermsEnum 1
#define INCLUDE_OrgApacheLuceneIndexFilteredTermsEnum 1
#include "org/apache/lucene/index/FilteredTermsEnum.h"

@class IOSIntArray;
@class OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilBytesRefHash;

@interface OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum : OrgApacheLuceneIndexFilteredTermsEnum

#pragma mark Protected

- (OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatus *)acceptWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

- (OrgApacheLuceneUtilBytesRef *)nextSeekTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)currentTerm;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)tenum
                  withOrgApacheLuceneUtilBytesRefHash:(OrgApacheLuceneUtilBytesRefHash *)terms
                                         withIntArray:(IOSIntArray *)ords;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRefHash_withIntArray_(OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum *self, OrgApacheLuceneIndexTermsEnum *tenum, OrgApacheLuceneUtilBytesRefHash *terms, IOSIntArray *ords);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum *new_OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRefHash_withIntArray_(OrgApacheLuceneIndexTermsEnum *tenum, OrgApacheLuceneUtilBytesRefHash *terms, IOSIntArray *ords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum *create_OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRefHash_withIntArray_(OrgApacheLuceneIndexTermsEnum *tenum, OrgApacheLuceneUtilBytesRefHash *terms, IOSIntArray *ords);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinTermsQuery")
