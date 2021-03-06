//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/CoalescedUpdates.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexCoalescedUpdates")
#ifdef RESTRICT_OrgApacheLuceneIndexCoalescedUpdates
#define INCLUDE_ALL_OrgApacheLuceneIndexCoalescedUpdates 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexCoalescedUpdates 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexCoalescedUpdates

#if !defined (OrgApacheLuceneIndexCoalescedUpdates_) && (INCLUDE_ALL_OrgApacheLuceneIndexCoalescedUpdates || defined(INCLUDE_OrgApacheLuceneIndexCoalescedUpdates))
#define OrgApacheLuceneIndexCoalescedUpdates_

@class OrgApacheLuceneIndexFieldTermIterator;
@class OrgApacheLuceneIndexFrozenBufferedUpdates;
@protocol JavaLangIterable;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexCoalescedUpdates : NSObject {
 @public
  id<JavaUtilMap> queries_;
  id<JavaUtilList> terms_;
  id<JavaUtilList> numericDVUpdates_;
  id<JavaUtilList> binaryDVUpdates_;
  jlong totalTermCount_;
}

#pragma mark Public

- (id<JavaLangIterable>)queriesIterable;

- (OrgApacheLuceneIndexFieldTermIterator *)termIterator;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

- (void)updateWithOrgApacheLuceneIndexFrozenBufferedUpdates:(OrgApacheLuceneIndexFrozenBufferedUpdates *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCoalescedUpdates)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCoalescedUpdates, queries_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCoalescedUpdates, terms_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCoalescedUpdates, numericDVUpdates_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCoalescedUpdates, binaryDVUpdates_, id<JavaUtilList>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexCoalescedUpdates_init(OrgApacheLuceneIndexCoalescedUpdates *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexCoalescedUpdates *new_OrgApacheLuceneIndexCoalescedUpdates_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexCoalescedUpdates *create_OrgApacheLuceneIndexCoalescedUpdates_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCoalescedUpdates)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexCoalescedUpdates")
