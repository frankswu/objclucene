//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/BooleanQueryBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_RESTRICT
#define OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_) && (OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_

#define OrgApacheLuceneQueryparserXmlQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserXmlQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/xml/QueryBuilder.h"

@class OrgApacheLuceneSearchBooleanClause_OccurEnum;
@class OrgApacheLuceneSearchQuery;
@protocol OrgW3cDomElement;

@interface OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder : NSObject < OrgApacheLuceneQueryparserXmlQueryBuilder >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserXmlQueryBuilder:(id<OrgApacheLuceneQueryparserXmlQueryBuilder>)factory;

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

#pragma mark Package-Private

+ (OrgApacheLuceneSearchBooleanClause_OccurEnum *)getOccursValueWithOrgW3cDomElement:(id<OrgW3cDomElement>)clauseElem;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder *self, id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_initWithOrgApacheLuceneQueryparserXmlQueryBuilder_(id<OrgApacheLuceneQueryparserXmlQueryBuilder> factory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchBooleanClause_OccurEnum *OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_getOccursValueWithOrgW3cDomElement_(id<OrgW3cDomElement> clauseElem);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserXmlBuildersBooleanQueryBuilder_INCLUDE_ALL")