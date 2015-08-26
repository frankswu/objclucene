//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/SrndTermQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_RESTRICT
#define OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_) && (OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_INCLUDE_ALL || OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_INCLUDE)
#define _OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_

#define OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_RESTRICT 1
#define OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_INCLUDE 1
#include "org/apache/lucene/queryparser/surround/query/SimpleTerm.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;
@protocol OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor;

@interface OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery : OrgApacheLuceneQueryparserSurroundQuerySimpleTerm

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)termText
                     withBoolean:(jboolean)quoted;

- (OrgApacheLuceneIndexTerm *)getLuceneTermWithNSString:(NSString *)fieldName;

- (NSString *)getTermText;

- (NSString *)toStringUnquoted;

- (void)visitMatchingTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)fieldName
withOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor:(id<OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor>)mtv;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_initWithNSString_withBoolean_(OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery *self, NSString *termText, jboolean quoted);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery *new_OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_initWithNSString_withBoolean_(NSString *termText, jboolean quoted) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_INCLUDE_ALL")