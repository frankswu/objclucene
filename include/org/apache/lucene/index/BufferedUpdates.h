//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BufferedUpdates.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexBufferedUpdates_INCLUDE_ALL")
#if OrgApacheLuceneIndexBufferedUpdates_RESTRICT
#define OrgApacheLuceneIndexBufferedUpdates_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexBufferedUpdates_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexBufferedUpdates_RESTRICT

#if !defined (_OrgApacheLuceneIndexBufferedUpdates_) && (OrgApacheLuceneIndexBufferedUpdates_INCLUDE_ALL || OrgApacheLuceneIndexBufferedUpdates_INCLUDE)
#define _OrgApacheLuceneIndexBufferedUpdates_

@class JavaLangInteger;
@class JavaUtilConcurrentAtomicAtomicInteger;
@class JavaUtilConcurrentAtomicAtomicLong;
@class OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate;
@class OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexBufferedUpdates : NSObject {
 @public
  JavaUtilConcurrentAtomicAtomicInteger *numTermDeletes_;
  JavaUtilConcurrentAtomicAtomicInteger *numNumericUpdates_;
  JavaUtilConcurrentAtomicAtomicInteger *numBinaryUpdates_;
  id<JavaUtilMap> terms_;
  id<JavaUtilMap> queries_;
  id<JavaUtilList> docIDs_;
  id<JavaUtilMap> numericUpdates_;
  id<JavaUtilMap> binaryUpdates_;
  JavaUtilConcurrentAtomicAtomicLong *bytesUsed_;
  jlong gen_;
}

#pragma mark Public

- (instancetype)init;

- (void)addBinaryUpdateWithOrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate:(OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate *)update
                                                                             withInt:(jint)docIDUpto;

- (void)addDocIDWithInt:(jint)docID;

- (void)addNumericUpdateWithOrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate:(OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate *)update
                                                                               withInt:(jint)docIDUpto;

- (void)addQueryWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                       withInt:(jint)docIDUpto;

- (void)addTermWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                    withInt:(jint)docIDUpto;

- (NSString *)description;

#pragma mark Package-Private

- (jboolean)any;

- (void)clear;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexBufferedUpdates)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdates, numTermDeletes_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdates, numNumericUpdates_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdates, numBinaryUpdates_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdates, terms_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdates, queries_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdates, docIDs_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdates, numericUpdates_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdates, binaryUpdates_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBufferedUpdates, bytesUsed_, JavaUtilConcurrentAtomicAtomicLong *)

FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_TERM_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBufferedUpdates, BYTES_PER_DEL_TERM_, jint)

FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_DOCID_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBufferedUpdates, BYTES_PER_DEL_DOCID_, jint)

FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_DEL_QUERY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBufferedUpdates, BYTES_PER_DEL_QUERY_, jint)

FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_FIELD_ENTRY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBufferedUpdates, BYTES_PER_NUMERIC_FIELD_ENTRY_, jint)

FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_NUMERIC_UPDATE_ENTRY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBufferedUpdates, BYTES_PER_NUMERIC_UPDATE_ENTRY_, jint)

FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_FIELD_ENTRY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBufferedUpdates, BYTES_PER_BINARY_FIELD_ENTRY_, jint)

FOUNDATION_EXPORT jint OrgApacheLuceneIndexBufferedUpdates_BYTES_PER_BINARY_UPDATE_ENTRY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBufferedUpdates, BYTES_PER_BINARY_UPDATE_ENTRY_, jint)

FOUNDATION_EXPORT JavaLangInteger *OrgApacheLuceneIndexBufferedUpdates_MAX_INT_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexBufferedUpdates, MAX_INT_, JavaLangInteger *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBufferedUpdates_init(OrgApacheLuceneIndexBufferedUpdates *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexBufferedUpdates *new_OrgApacheLuceneIndexBufferedUpdates_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBufferedUpdates)

#endif

#pragma pop_macro("OrgApacheLuceneIndexBufferedUpdates_INCLUDE_ALL")