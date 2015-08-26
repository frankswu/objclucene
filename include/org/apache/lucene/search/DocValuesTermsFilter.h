//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/DocValuesTermsFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchDocValuesTermsFilter_INCLUDE_ALL")
#if OrgApacheLuceneSearchDocValuesTermsFilter_RESTRICT
#define OrgApacheLuceneSearchDocValuesTermsFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchDocValuesTermsFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchDocValuesTermsFilter_RESTRICT

#if !defined (_OrgApacheLuceneSearchDocValuesTermsFilter_) && (OrgApacheLuceneSearchDocValuesTermsFilter_INCLUDE_ALL || OrgApacheLuceneSearchDocValuesTermsFilter_INCLUDE)
#define _OrgApacheLuceneSearchDocValuesTermsFilter_

#define OrgApacheLuceneSearchFilter_RESTRICT 1
#define OrgApacheLuceneSearchFilter_INCLUDE 1
#include "org/apache/lucene/search/Filter.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchDocValuesTermsFilter : OrgApacheLuceneSearchFilter

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneUtilBytesRefArray:(IOSObjectArray *)terms;

- (instancetype)initWithNSString:(NSString *)field
               withNSStringArray:(IOSObjectArray *)terms;

- (jboolean)isEqual:(id)obj;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)defaultField;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesTermsFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(OrgApacheLuceneSearchDocValuesTermsFilter *self, NSString *field, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchDocValuesTermsFilter *new_OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withNSStringArray_(OrgApacheLuceneSearchDocValuesTermsFilter *self, NSString *field, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchDocValuesTermsFilter *new_OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withNSStringArray_(NSString *field, IOSObjectArray *terms) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocValuesTermsFilter)

#endif

#pragma pop_macro("OrgApacheLuceneSearchDocValuesTermsFilter_INCLUDE_ALL")