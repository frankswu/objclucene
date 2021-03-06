//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked19.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked19")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked19
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked19 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked19 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked19

#if !defined (OrgApacheLuceneUtilPackedBulkOperationPacked19_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked19 || defined(INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked19))
#define OrgApacheLuceneUtilPackedBulkOperationPacked19_

#define RESTRICT_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#define INCLUDE_OrgApacheLuceneUtilPackedBulkOperationPacked 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

/*!
 @brief Efficient sequential read/write of packed integers.
 */
@interface OrgApacheLuceneUtilPackedBulkOperationPacked19 : OrgApacheLuceneUtilPackedBulkOperationPacked

#pragma mark Public

- (instancetype)init;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked19)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked19_init(OrgApacheLuceneUtilPackedBulkOperationPacked19 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked19 *new_OrgApacheLuceneUtilPackedBulkOperationPacked19_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked19 *create_OrgApacheLuceneUtilPackedBulkOperationPacked19_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked19)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedBulkOperationPacked19")
