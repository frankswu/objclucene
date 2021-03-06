//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/CompressingTermVectorsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter")
#ifdef RESTRICT_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter
#define INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter

#if !defined (OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_) && (INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter || defined(INCLUDE_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter))
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_

#define RESTRICT_OrgApacheLuceneCodecsTermVectorsWriter 1
#define INCLUDE_OrgApacheLuceneCodecsTermVectorsWriter 1
#include "org/apache/lucene/codecs/TermVectorsWriter.h"

@class OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader;
@class OrgApacheLuceneCodecsCompressingCompressionMode;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexMergeState;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief <code>TermVectorsWriter</code> for <code>CompressingTermVectorsFormat</code>.
 */
@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter : OrgApacheLuceneCodecsTermVectorsWriter

+ (jint)MAX_DOCUMENTS_PER_CHUNK;

+ (NSString *)VECTORS_EXTENSION;

+ (NSString *)VECTORS_INDEX_EXTENSION;

+ (NSString *)CODEC_SFX_IDX;

+ (NSString *)CODEC_SFX_DAT;

+ (jint)VERSION_START;

+ (jint)VERSION_CHUNK_STATS;

+ (jint)VERSION_CURRENT;

+ (jint)PACKED_BLOCK_SIZE;

+ (jint)POSITIONS;

+ (jint)OFFSETS;

+ (jint)PAYLOADS;

+ (jint)FLAGS_BITS;

+ (NSString *)BULK_MERGE_ENABLED_SYSPROP;

+ (jboolean)BULK_MERGE_ENABLED;

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                  withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)si
                                         withNSString:(NSString *)segmentSuffix
                    withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context
                                         withNSString:(NSString *)formatName
  withOrgApacheLuceneCodecsCompressingCompressionMode:(OrgApacheLuceneCodecsCompressingCompressionMode *)compressionMode
                                              withInt:(jint)chunkSize
                                              withInt:(jint)blockSize;

- (void)addPositionWithInt:(jint)position
                   withInt:(jint)startOffset
                   withInt:(jint)endOffset
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

- (void)addProxWithInt:(jint)numProx
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)positions
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)offsets;

- (void)close;

- (void)finishWithOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fis
                                         withInt:(jint)numDocs;

- (void)finishDocument;

- (void)finishField;

- (jint)mergeWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState;

- (void)startDocumentWithInt:(jint)numVectorFields;

- (void)startFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)info
                                            withInt:(jint)numTerms
                                        withBoolean:(jboolean)positions
                                        withBoolean:(jboolean)offsets
                                        withBoolean:(jboolean)payloads;

- (void)startTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                         withInt:(jint)freq;

#pragma mark Package-Private

/*!
 @brief Returns true if we should recompress this reader, even though we could bulk merge compressed data 
 <p>
 The last chunk written for a segment is typically incomplete, so without recompressing,
 in some worst-case situations (e.g. frequent reopen with tiny flushes), over time the 
 compression ratio can degrade.
 This is a safety switch.
 */
- (jboolean)tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader *)candidate;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter)

inline jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_MAX_DOCUMENTS_PER_CHUNK();
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_MAX_DOCUMENTS_PER_CHUNK 128
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, MAX_DOCUMENTS_PER_CHUNK, jint)

inline NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_VECTORS_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VECTORS_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VECTORS_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_VECTORS_INDEX_EXTENSION();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VECTORS_INDEX_EXTENSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VECTORS_INDEX_EXTENSION, NSString *)

inline NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_CODEC_SFX_IDX();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_CODEC_SFX_IDX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, CODEC_SFX_IDX, NSString *)

inline NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_CODEC_SFX_DAT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_CODEC_SFX_DAT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, CODEC_SFX_DAT, NSString *)

inline jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_VERSION_START();
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VERSION_START 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VERSION_START, jint)

inline jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_VERSION_CHUNK_STATS();
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VERSION_CHUNK_STATS 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VERSION_CHUNK_STATS, jint)

inline jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_VERSION_CURRENT();
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VERSION_CURRENT 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, VERSION_CURRENT, jint)

inline jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_PACKED_BLOCK_SIZE();
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_PACKED_BLOCK_SIZE 64
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, PACKED_BLOCK_SIZE, jint)

inline jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_POSITIONS();
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_POSITIONS 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, POSITIONS, jint)

inline jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_OFFSETS();
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_OFFSETS 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, OFFSETS, jint)

inline jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_PAYLOADS();
#define OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_PAYLOADS 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, PAYLOADS, jint)

inline jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_FLAGS_BITS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FLAGS_BITS;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, FLAGS_BITS, jint)

inline NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_BULK_MERGE_ENABLED_SYSPROP();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_SYSPROP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, BULK_MERGE_ENABLED_SYSPROP, NSString *)

inline jboolean OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_get_BULK_MERGE_ENABLED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter, BULK_MERGE_ENABLED, jboolean)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *self, OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode, jint chunkSize, jint blockSize);

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *new_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode, jint chunkSize, jint blockSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *create_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexSegmentInfo *si, NSString *segmentSuffix, OrgApacheLuceneStoreIOContext *context, NSString *formatName, OrgApacheLuceneCodecsCompressingCompressionMode *compressionMode, jint chunkSize, jint blockSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter")
