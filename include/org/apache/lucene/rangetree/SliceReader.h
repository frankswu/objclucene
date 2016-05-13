//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/SliceReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeSliceReader")
#ifdef RESTRICT_OrgApacheLuceneRangetreeSliceReader
#define INCLUDE_ALL_OrgApacheLuceneRangetreeSliceReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneRangetreeSliceReader 1
#endif
#undef RESTRICT_OrgApacheLuceneRangetreeSliceReader

#if !defined (OrgApacheLuceneRangetreeSliceReader_) && (INCLUDE_ALL_OrgApacheLuceneRangetreeSliceReader || defined(INCLUDE_OrgApacheLuceneRangetreeSliceReader))
#define OrgApacheLuceneRangetreeSliceReader_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

/*!
 @brief Iterates over one slice of the sorted values.
 This abstracts away whether
 OfflineSorter or simple arrays in heap are used. 
 */
@protocol OrgApacheLuceneRangetreeSliceReader < JavaIoCloseable, NSObject, JavaObject >

- (jboolean)next;

- (jlong)value;

- (jlong)ord;

- (jint)docID;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneRangetreeSliceReader)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneRangetreeSliceReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneRangetreeSliceReader")
