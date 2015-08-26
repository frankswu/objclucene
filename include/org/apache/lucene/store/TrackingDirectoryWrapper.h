//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/TrackingDirectoryWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneStoreTrackingDirectoryWrapper_INCLUDE_ALL")
#if OrgApacheLuceneStoreTrackingDirectoryWrapper_RESTRICT
#define OrgApacheLuceneStoreTrackingDirectoryWrapper_INCLUDE_ALL 0
#else
#define OrgApacheLuceneStoreTrackingDirectoryWrapper_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneStoreTrackingDirectoryWrapper_RESTRICT

#if !defined (_OrgApacheLuceneStoreTrackingDirectoryWrapper_) && (OrgApacheLuceneStoreTrackingDirectoryWrapper_INCLUDE_ALL || OrgApacheLuceneStoreTrackingDirectoryWrapper_INCLUDE)
#define _OrgApacheLuceneStoreTrackingDirectoryWrapper_

#define OrgApacheLuceneStoreFilterDirectory_RESTRICT 1
#define OrgApacheLuceneStoreFilterDirectory_INCLUDE 1
#include "org/apache/lucene/store/FilterDirectory.h"

@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexOutput;
@protocol JavaUtilSet;

@interface OrgApacheLuceneStoreTrackingDirectoryWrapper : OrgApacheLuceneStoreFilterDirectory

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)inArg;

- (void)copyFromWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)from
                                     withNSString:(NSString *)src
                                     withNSString:(NSString *)dest
                withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name
                            withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)deleteFileWithNSString:(NSString *)name;

- (id<JavaUtilSet>)getCreatedFiles;

- (void)renameFileWithNSString:(NSString *)source
                  withNSString:(NSString *)dest;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreTrackingDirectoryWrapper)

FOUNDATION_EXPORT void OrgApacheLuceneStoreTrackingDirectoryWrapper_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreTrackingDirectoryWrapper *self, OrgApacheLuceneStoreDirectory *inArg);

FOUNDATION_EXPORT OrgApacheLuceneStoreTrackingDirectoryWrapper *new_OrgApacheLuceneStoreTrackingDirectoryWrapper_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreTrackingDirectoryWrapper)

#endif

#pragma pop_macro("OrgApacheLuceneStoreTrackingDirectoryWrapper_INCLUDE_ALL")