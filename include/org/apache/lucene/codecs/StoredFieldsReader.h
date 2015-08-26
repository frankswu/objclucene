//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/StoredFieldsReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsStoredFieldsReader_INCLUDE_ALL")
#if OrgApacheLuceneCodecsStoredFieldsReader_RESTRICT
#define OrgApacheLuceneCodecsStoredFieldsReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsStoredFieldsReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsStoredFieldsReader_RESTRICT

#if !defined (_OrgApacheLuceneCodecsStoredFieldsReader_) && (OrgApacheLuceneCodecsStoredFieldsReader_INCLUDE_ALL || OrgApacheLuceneCodecsStoredFieldsReader_INCLUDE)
#define _OrgApacheLuceneCodecsStoredFieldsReader_

#define JavaIoCloseable_RESTRICT 1
#define JavaIoCloseable_INCLUDE 1
#include "java/io/Closeable.h"

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneIndexStoredFieldVisitor;

@interface OrgApacheLuceneCodecsStoredFieldsReader : NSObject < NSCopying, JavaIoCloseable, OrgApacheLuceneUtilAccountable >

#pragma mark Public

- (void)checkIntegrity;

- (OrgApacheLuceneCodecsStoredFieldsReader *)clone;

- (OrgApacheLuceneCodecsStoredFieldsReader *)getMergeInstance;

- (void)visitDocumentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsStoredFieldsReader)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsStoredFieldsReader_init(OrgApacheLuceneCodecsStoredFieldsReader *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsStoredFieldsReader)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsStoredFieldsReader_INCLUDE_ALL")