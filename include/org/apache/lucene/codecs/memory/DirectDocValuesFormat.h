//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/memory/DirectDocValuesFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_RESTRICT
#define OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_) && (OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_INCLUDE_ALL || OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_INCLUDE)
#define _OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_

#define OrgApacheLuceneCodecsDocValuesFormat_RESTRICT 1
#define OrgApacheLuceneCodecsDocValuesFormat_INCLUDE 1
#include "org/apache/lucene/codecs/DocValuesFormat.h"

@class OrgApacheLuceneCodecsDocValuesConsumer;
@class OrgApacheLuceneCodecsDocValuesProducer;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexSegmentWriteState;

@interface OrgApacheLuceneCodecsMemoryDirectDocValuesFormat : OrgApacheLuceneCodecsDocValuesFormat

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneCodecsDocValuesConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (OrgApacheLuceneCodecsDocValuesProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsMemoryDirectDocValuesFormat)

FOUNDATION_EXPORT jint OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_MAX_TOTAL_BYTES_LENGTH_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryDirectDocValuesFormat, MAX_TOTAL_BYTES_LENGTH_, jint)

FOUNDATION_EXPORT jint OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_MAX_SORTED_SET_ORDS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryDirectDocValuesFormat, MAX_SORTED_SET_ORDS_, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_DATA_CODEC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryDirectDocValuesFormat, DATA_CODEC_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_DATA_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryDirectDocValuesFormat, DATA_EXTENSION_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_METADATA_CODEC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryDirectDocValuesFormat, METADATA_CODEC_, NSString *)

FOUNDATION_EXPORT NSString *OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_METADATA_EXTENSION_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsMemoryDirectDocValuesFormat, METADATA_EXTENSION_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_init(OrgApacheLuceneCodecsMemoryDirectDocValuesFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsMemoryDirectDocValuesFormat *new_OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsMemoryDirectDocValuesFormat)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsMemoryDirectDocValuesFormat_INCLUDE_ALL")