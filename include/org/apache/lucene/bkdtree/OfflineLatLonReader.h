//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/OfflineLatLonReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneBkdtreeOfflineLatLonReader_INCLUDE_ALL")
#if OrgApacheLuceneBkdtreeOfflineLatLonReader_RESTRICT
#define OrgApacheLuceneBkdtreeOfflineLatLonReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneBkdtreeOfflineLatLonReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneBkdtreeOfflineLatLonReader_RESTRICT

#if !defined (_OrgApacheLuceneBkdtreeOfflineLatLonReader_) && (OrgApacheLuceneBkdtreeOfflineLatLonReader_INCLUDE_ALL || OrgApacheLuceneBkdtreeOfflineLatLonReader_INCLUDE)
#define _OrgApacheLuceneBkdtreeOfflineLatLonReader_

#define OrgApacheLuceneBkdtreeLatLonReader_RESTRICT 1
#define OrgApacheLuceneBkdtreeLatLonReader_INCLUDE 1
#include "org/apache/lucene/bkdtree/LatLonReader.h"

@class OrgApacheLuceneStoreInputStreamDataInput;
@class OrgLukhnosPortmobileFilePath;

@interface OrgApacheLuceneBkdtreeOfflineLatLonReader : NSObject < OrgApacheLuceneBkdtreeLatLonReader > {
 @public
  OrgApacheLuceneStoreInputStreamDataInput *in_;
  jlong countLeft_;
}

#pragma mark Public

- (void)close;

- (jint)docID;

- (jint)latEnc;

- (jint)lonEnc;

- (jboolean)next;

- (jlong)ord;

#pragma mark Package-Private

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)tempFile
                                            withLong:(jlong)start
                                            withLong:(jlong)count;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeOfflineLatLonReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeOfflineLatLonReader, in_, OrgApacheLuceneStoreInputStreamDataInput *)

FOUNDATION_EXPORT void OrgApacheLuceneBkdtreeOfflineLatLonReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgApacheLuceneBkdtreeOfflineLatLonReader *self, OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count);

FOUNDATION_EXPORT OrgApacheLuceneBkdtreeOfflineLatLonReader *new_OrgApacheLuceneBkdtreeOfflineLatLonReader_initWithOrgLukhnosPortmobileFilePath_withLong_withLong_(OrgLukhnosPortmobileFilePath *tempFile, jlong start, jlong count) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeOfflineLatLonReader)

#endif

#pragma pop_macro("OrgApacheLuceneBkdtreeOfflineLatLonReader_INCLUDE_ALL")