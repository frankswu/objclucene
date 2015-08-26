//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/NumericRangeFilterBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_RESTRICT
#define OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_) && (OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_

#define OrgApacheLuceneQueryparserXmlFilterBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserXmlFilterBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/xml/FilterBuilder.h"

@class OrgApacheLuceneSearchFilter;
@protocol OrgW3cDomElement;

@interface OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder : NSObject < OrgApacheLuceneQueryparserXmlFilterBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)e;

- (void)setStrictModeWithBoolean:(jboolean)strictMode;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_init(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder *new_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder)

#endif

#if !defined (_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_) && (OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_INCLUDE)
#define _OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_

#define OrgApacheLuceneSearchFilter_RESTRICT 1
#define OrgApacheLuceneSearchFilter_INCLUDE 1
#include "org/apache/lucene/search/Filter.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter : OrgApacheLuceneSearchFilter

#pragma mark Public

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_init(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter *new_OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_NoMatchFilter)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserXmlBuildersNumericRangeFilterBuilder_INCLUDE_ALL")