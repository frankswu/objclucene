//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/ByteBlockPool.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilByteBlockPool_INCLUDE_ALL")
#if OrgApacheLuceneUtilByteBlockPool_RESTRICT
#define OrgApacheLuceneUtilByteBlockPool_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilByteBlockPool_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilByteBlockPool_RESTRICT
#if OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_INCLUDE
#define OrgApacheLuceneUtilByteBlockPool_Allocator_INCLUDE 1
#endif
#if OrgApacheLuceneUtilByteBlockPool_DirectAllocator_INCLUDE
#define OrgApacheLuceneUtilByteBlockPool_Allocator_INCLUDE 1
#endif

#if !defined (_OrgApacheLuceneUtilByteBlockPool_) && (OrgApacheLuceneUtilByteBlockPool_INCLUDE_ALL || OrgApacheLuceneUtilByteBlockPool_INCLUDE)
#define _OrgApacheLuceneUtilByteBlockPool_

@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneUtilByteBlockPool_Allocator;
@class OrgApacheLuceneUtilBytesRef;

#define OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SHIFT 15
#define OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_SIZE 32768
#define OrgApacheLuceneUtilByteBlockPool_BYTE_BLOCK_MASK 32767

@interface OrgApacheLuceneUtilByteBlockPool : NSObject {
 @public
  IOSObjectArray *buffers_;
  jint byteUpto_;
  IOSByteArray *buffer_;
  jint byteOffset_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilByteBlockPool_Allocator:(OrgApacheLuceneUtilByteBlockPool_Allocator *)allocator;

- (jint)allocSliceWithByteArray:(IOSByteArray *)slice
                        withInt:(jint)upto OBJC_METHOD_FAMILY_NONE;

- (void)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

- (jint)newSliceWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

- (void)nextBuffer;

- (void)readBytesWithLong:(jlong)offset
            withByteArray:(IOSByteArray *)bytes
                  withInt:(jint)off
                  withInt:(jint)length;

- (void)reset;

- (void)resetWithBoolean:(jboolean)zeroFillBuffers
             withBoolean:(jboolean)reuseFirst;

- (void)setBytesRefWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                           withInt:(jint)textStart;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilByteBlockPool)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilByteBlockPool, buffers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilByteBlockPool, buffer_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilByteBlockPool, BYTE_BLOCK_SHIFT, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilByteBlockPool, BYTE_BLOCK_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilByteBlockPool, BYTE_BLOCK_MASK, jint)

FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilByteBlockPool, NEXT_LEVEL_ARRAY_, IOSIntArray *)

FOUNDATION_EXPORT IOSIntArray *OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilByteBlockPool, LEVEL_SIZE_ARRAY_, IOSIntArray *)

FOUNDATION_EXPORT jint OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilByteBlockPool, FIRST_LEVEL_SIZE_, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool *self, OrgApacheLuceneUtilByteBlockPool_Allocator *allocator);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool *new_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(OrgApacheLuceneUtilByteBlockPool_Allocator *allocator) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilByteBlockPool)

#endif

#if !defined (_OrgApacheLuceneUtilByteBlockPool_Allocator_) && (OrgApacheLuceneUtilByteBlockPool_INCLUDE_ALL || OrgApacheLuceneUtilByteBlockPool_Allocator_INCLUDE)
#define _OrgApacheLuceneUtilByteBlockPool_Allocator_

@class IOSByteArray;
@class IOSObjectArray;
@protocol JavaUtilList;

@interface OrgApacheLuceneUtilByteBlockPool_Allocator : NSObject {
 @public
  jint blockSize_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)blockSize;

- (IOSByteArray *)getByteBlock;

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end;

- (void)recycleByteBlocksWithJavaUtilList:(id<JavaUtilList>)blocks;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilByteBlockPool_Allocator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_Allocator_initWithInt_(OrgApacheLuceneUtilByteBlockPool_Allocator *self, jint blockSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilByteBlockPool_Allocator)

#endif

#if !defined (_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_) && (OrgApacheLuceneUtilByteBlockPool_INCLUDE_ALL || OrgApacheLuceneUtilByteBlockPool_DirectAllocator_INCLUDE)
#define _OrgApacheLuceneUtilByteBlockPool_DirectAllocator_

@class IOSObjectArray;

@interface OrgApacheLuceneUtilByteBlockPool_DirectAllocator : OrgApacheLuceneUtilByteBlockPool_Allocator

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)blockSize;

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilByteBlockPool_DirectAllocator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init(OrgApacheLuceneUtilByteBlockPool_DirectAllocator *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(OrgApacheLuceneUtilByteBlockPool_DirectAllocator *self, jint blockSize);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_initWithInt_(jint blockSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilByteBlockPool_DirectAllocator)

#endif

#if !defined (_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_) && (OrgApacheLuceneUtilByteBlockPool_INCLUDE_ALL || OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_INCLUDE)
#define _OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_

@class IOSByteArray;
@class IOSObjectArray;
@class OrgApacheLuceneUtilCounter;

@interface OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator : OrgApacheLuceneUtilByteBlockPool_Allocator

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed;

- (instancetype)initWithInt:(jint)blockSize
withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)bytesUsed;

- (IOSByteArray *)getByteBlock;

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *self, OrgApacheLuceneUtilCounter *bytesUsed);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *bytesUsed) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *self, jint blockSize, OrgApacheLuceneUtilCounter *bytesUsed);

FOUNDATION_EXPORT OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator_initWithInt_withOrgApacheLuceneUtilCounter_(jint blockSize, OrgApacheLuceneUtilCounter *bytesUsed) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)

#endif

#pragma pop_macro("OrgApacheLuceneUtilByteBlockPool_INCLUDE_ALL")