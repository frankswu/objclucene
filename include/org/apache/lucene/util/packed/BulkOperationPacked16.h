//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked16.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedBulkOperationPacked16_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedBulkOperationPacked16_RESTRICT
#define OrgApacheLuceneUtilPackedBulkOperationPacked16_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedBulkOperationPacked16_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedBulkOperationPacked16_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedBulkOperationPacked16_) && (OrgApacheLuceneUtilPackedBulkOperationPacked16_INCLUDE_ALL || OrgApacheLuceneUtilPackedBulkOperationPacked16_INCLUDE)
#define _OrgApacheLuceneUtilPackedBulkOperationPacked16_

#define OrgApacheLuceneUtilPackedBulkOperationPacked_RESTRICT 1
#define OrgApacheLuceneUtilPackedBulkOperationPacked_INCLUDE 1
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneUtilPackedBulkOperationPacked16 : OrgApacheLuceneUtilPackedBulkOperationPacked

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBulkOperationPacked16)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBulkOperationPacked16_init(OrgApacheLuceneUtilPackedBulkOperationPacked16 *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBulkOperationPacked16 *new_OrgApacheLuceneUtilPackedBulkOperationPacked16_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBulkOperationPacked16)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedBulkOperationPacked16_INCLUDE_ALL")