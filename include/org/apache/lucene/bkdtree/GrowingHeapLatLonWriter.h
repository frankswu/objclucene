//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/GrowingHeapLatLonWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_INCLUDE_ALL")
#if OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_RESTRICT
#define OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_RESTRICT

#if !defined (_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_) && (OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_INCLUDE_ALL || OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_INCLUDE)
#define _OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_

#define OrgApacheLuceneBkdtreeLatLonWriter_RESTRICT 1
#define OrgApacheLuceneBkdtreeLatLonWriter_INCLUDE 1
#include "org/apache/lucene/bkdtree/LatLonWriter.h"

@class IOSIntArray;
@class IOSLongArray;
@protocol OrgApacheLuceneBkdtreeLatLonReader;

@interface OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter : NSObject < OrgApacheLuceneBkdtreeLatLonWriter > {
 @public
  IOSIntArray *latEncs_;
  IOSIntArray *lonEncs_;
  IOSIntArray *docIDs_;
  IOSLongArray *ords_;
  jint maxSize_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)maxSize;

- (void)appendWithInt:(jint)latEnc
              withInt:(jint)lonEnc
             withLong:(jlong)ord
              withInt:(jint)docID;

- (void)close;

- (void)destroy;

- (id<OrgApacheLuceneBkdtreeLatLonReader>)getReaderWithLong:(jlong)start;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, latEncs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, lonEncs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, docIDs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter, ords_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_initWithInt_(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *self, jint maxSize);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter *new_OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_initWithInt_(jint maxSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter)

#endif

#pragma pop_macro("OrgApacheLuceneBkdtreeGrowingHeapLatLonWriter_INCLUDE_ALL")