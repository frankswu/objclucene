//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SortedSetSortField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSortedSetSortField_INCLUDE_ALL")
#if OrgApacheLuceneSearchSortedSetSortField_RESTRICT
#define OrgApacheLuceneSearchSortedSetSortField_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSortedSetSortField_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSortedSetSortField_RESTRICT

#if !defined (_OrgApacheLuceneSearchSortedSetSortField_) && (OrgApacheLuceneSearchSortedSetSortField_INCLUDE_ALL || OrgApacheLuceneSearchSortedSetSortField_INCLUDE)
#define _OrgApacheLuceneSearchSortedSetSortField_

#define OrgApacheLuceneSearchSortField_RESTRICT 1
#define OrgApacheLuceneSearchSortField_INCLUDE 1
#include "org/apache/lucene/search/SortField.h"

@class OrgApacheLuceneSearchFieldComparator;
@class OrgApacheLuceneSearchSortedSetSelector_TypeEnum;

@interface OrgApacheLuceneSearchSortedSetSortField : OrgApacheLuceneSearchSortField

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
                     withBoolean:(jboolean)reverse;

- (instancetype)initWithNSString:(NSString *)field
                     withBoolean:(jboolean)reverse
withOrgApacheLuceneSearchSortedSetSelector_TypeEnum:(OrgApacheLuceneSearchSortedSetSelector_TypeEnum *)selector;

- (jboolean)isEqual:(id)obj;

- (OrgApacheLuceneSearchFieldComparator *)getComparatorWithInt:(jint)numHits
                                                       withInt:(jint)sortPos;

- (OrgApacheLuceneSearchSortedSetSelector_TypeEnum *)getSelector;

- (NSUInteger)hash;

- (void)setMissingValueWithId:(id)missingValue;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortedSetSortField)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_(OrgApacheLuceneSearchSortedSetSortField *self, NSString *field, jboolean reverse);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSortField *new_OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_(NSString *field, jboolean reverse) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_withOrgApacheLuceneSearchSortedSetSelector_TypeEnum_(OrgApacheLuceneSearchSortedSetSortField *self, NSString *field, jboolean reverse, OrgApacheLuceneSearchSortedSetSelector_TypeEnum *selector);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortedSetSortField *new_OrgApacheLuceneSearchSortedSetSortField_initWithNSString_withBoolean_withOrgApacheLuceneSearchSortedSetSelector_TypeEnum_(NSString *field, jboolean reverse, OrgApacheLuceneSearchSortedSetSelector_TypeEnum *selector) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortedSetSortField)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSortedSetSortField_INCLUDE_ALL")