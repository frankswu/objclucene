//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene53/Lucene53NormsFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_INCLUDE_ALL")
#if OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_RESTRICT
#define OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_RESTRICT

#if !defined (_OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_) && (OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_INCLUDE_ALL || OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_INCLUDE)
#define _OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_

#define OrgApacheLuceneCodecsNormsFormat_RESTRICT 1
#define OrgApacheLuceneCodecsNormsFormat_INCLUDE 1
#include "org/apache/lucene/codecs/NormsFormat.h"

@class OrgApacheLuceneCodecsNormsConsumer;
@class OrgApacheLuceneCodecsNormsProducer;
@class OrgApacheLuceneIndexSegmentReadState;
@class OrgApacheLuceneIndexSegmentWriteState;

#define OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_VERSION_START 0
#define OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_VERSION_CURRENT 0

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsFormat : OrgApacheLuceneCodecsNormsFormat

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneCodecsNormsConsumer *)normsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state;

- (OrgApacheLuceneCodecsNormsProducer *)normsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsFormat)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene53Lucene53NormsFormat, VERSION_START, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsLucene53Lucene53NormsFormat, VERSION_CURRENT, jint)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_init(OrgApacheLuceneCodecsLucene53Lucene53NormsFormat *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene53Lucene53NormsFormat *new_OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsFormat)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_INCLUDE_ALL")