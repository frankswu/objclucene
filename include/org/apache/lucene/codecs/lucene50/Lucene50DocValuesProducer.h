//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50DocValuesProducer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL")
#if OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_RESTRICT
#define OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_RESTRICT
#if OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_INCLUDE
#define OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues_INCLUDE 1
#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_) && (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_

#define OrgApacheLuceneCodecsDocValuesProducer_RESTRICT 1
#define OrgApacheLuceneCodecsDocValuesProducer_INCLUDE 1
#include "org/apache/lucene/codecs/DocValuesProducer.h"

#define JavaIoCloseable_RESTRICT 1
#define JavaIoCloseable_INCLUDE 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry;
@class OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry;
@class OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry;
@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneUtilLongValues;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer : OrgApacheLuceneCodecsDocValuesProducer < JavaIoCloseable >

#pragma mark Public

- (void)checkIntegrity;

- (void)close;

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (id<JavaUtilCollection>)getChildResources;

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (OrgApacheLuceneCodecsDocValuesProducer *)getMergeInstance;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (OrgApacheLuceneIndexSortedDocValues *)getSortedWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (jlong)ramBytesUsed;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer:(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)original;

- (instancetype)initWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state
                                                withNSString:(NSString *)dataCodec
                                                withNSString:(NSString *)dataExtension
                                                withNSString:(NSString *)metaCodec
                                                withNSString:(NSString *)metaExtension;

- (OrgApacheLuceneUtilLongValues *)getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry *)entry_;

+ (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry *)readBinaryEntryWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)meta;

- (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry *)readSortedSetEntryWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)meta;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *self, OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *original);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *original) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *self, OrgApacheLuceneIndexSegmentReadState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexSegmentReadState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry *OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_readBinaryEntryWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *meta);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry_) && (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry_

@class IOSLongArray;

@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry : NSObject {
 @public
  jlong missingOffset_;
  jlong offset_;
  jlong endOffset_;
  jint bitsPerValue_;
  jint format_;
  jint packedIntsVersion_;
  jlong count_;
  jint blockSize_;
  jlong minValue_;
  jlong gcd_;
  IOSLongArray *table_;
}

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry, table_, IOSLongArray *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry_) && (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry_

@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry : NSObject {
 @public
  jlong missingOffset_;
  jlong offset_;
  jint format_;
  jlong count_;
  jint minLength_;
  jint maxLength_;
  jlong addressesOffset_;
  jlong reverseIndexOffset_;
  jint packedIntsVersion_;
  jint blockSize_;
}

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry_) && (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry_

@class IOSIntArray;
@class IOSLongArray;

@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry : NSObject {
 @public
  jint format_;
  IOSLongArray *table_;
  IOSIntArray *tableOffsets_;
}

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry, table_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry, tableOffsets_, IOSIntArray *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues_) && (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues_

#define OrgApacheLuceneIndexBinaryDocValues_RESTRICT 1
#define OrgApacheLuceneIndexBinaryDocValues_INCLUDE 1
#include "org/apache/lucene/index/BinaryDocValues.h"

@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues : OrgApacheLuceneIndexBinaryDocValues

#pragma mark Public

- (OrgApacheLuceneUtilBytesRef *)getWithInt:(jint)docID;

#pragma mark Package-Private

- (instancetype)init;

- (OrgApacheLuceneUtilBytesRef *)getWithLong:(jlong)id_;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues_init(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex_) && (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex_

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneUtilPackedMonotonicBlockPackedReader;
@class OrgApacheLuceneUtilPagedBytes_Reader;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *termAddresses_;
  OrgApacheLuceneUtilPagedBytes_Reader *terms_;
}

#pragma mark Public

- (id<JavaUtilCollection>)getChildResources;

- (jlong)ramBytesUsed;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex, termAddresses_, OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex, terms_, OrgApacheLuceneUtilPagedBytes_Reader *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex_init(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex *new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_) && (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_

@class OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry;
@class OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum;
@class OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilPackedMonotonicBlockPackedReader;
@class OrgApacheLuceneUtilPagedBytes_Reader;

@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues : OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues {
 @public
  jlong numValues_;
  jlong numIndexValues_;
  jint maxTermLength_;
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *addresses_;
  OrgApacheLuceneStoreIndexInput *data_;
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *termsEnum_;
  OrgApacheLuceneUtilPagedBytes_Reader *reverseTerms_;
  OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *reverseAddresses_;
  jlong numReverseIndexValues_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry:(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry *)bytes
                                   withOrgApacheLuceneUtilPackedMonotonicBlockPackedReader:(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)addresses
              withOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex:(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex *)index
                                                        withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)data;

- (OrgApacheLuceneUtilBytesRef *)getWithLong:(jlong)id_;

#pragma mark Package-Private

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnum;

- (jlong)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues, addresses_, OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues, data_, OrgApacheLuceneStoreIndexInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues, termsEnum_, OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues, reverseTerms_, OrgApacheLuceneUtilPagedBytes_Reader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues, reverseAddresses_, OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry_withOrgApacheLuceneUtilPackedMonotonicBlockPackedReader_withOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex_withOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues *self, OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry *bytes, OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *addresses, OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex *index, OrgApacheLuceneStoreIndexInput *data);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues *new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry_withOrgApacheLuceneUtilPackedMonotonicBlockPackedReader_withOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex_withOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry *bytes, OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *addresses, OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex *index, OrgApacheLuceneStoreIndexInput *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues)

#endif

#if !defined (_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_) && (OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL || OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_INCLUDE)
#define _OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_

#define OrgApacheLuceneIndexTermsEnum_RESTRICT 1
#define OrgApacheLuceneIndexTermsEnum_INCLUDE 1
#include "org/apache/lucene/index/TermsEnum.h"

@class OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues;
@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexTermsEnum_SeekStatusEnum;
@class OrgApacheLuceneStoreIndexInput;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum : OrgApacheLuceneIndexTermsEnum

#pragma mark Public

- (jint)docFreq;

- (OrgApacheLuceneUtilBytesRef *)next;

- (jlong)ord;

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags;

- (OrgApacheLuceneIndexTermsEnum_SeekStatusEnum *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text;

- (void)seekExactWithLong:(jlong)ord;

- (OrgApacheLuceneUtilBytesRef *)term;

- (jlong)totalTermFreq;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues:(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues *)outer$
                                                                      withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input;

- (jlong)binarySearchBlockWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text
                                                 withLong:(jlong)low
                                                 withLong:(jlong)high;

- (jlong)binarySearchIndexWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_withOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *self, OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues *outer$, OrgApacheLuceneStoreIndexInput *input);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum *new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_withOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues *outer$, OrgApacheLuceneStoreIndexInput *input) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_INCLUDE_ALL")