//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/misc/GetTermInfo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneMiscGetTermInfo_INCLUDE_ALL")
#if OrgApacheLuceneMiscGetTermInfo_RESTRICT
#define OrgApacheLuceneMiscGetTermInfo_INCLUDE_ALL 0
#else
#define OrgApacheLuceneMiscGetTermInfo_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneMiscGetTermInfo_RESTRICT

#if !defined (_OrgApacheLuceneMiscGetTermInfo_) && (OrgApacheLuceneMiscGetTermInfo_INCLUDE_ALL || OrgApacheLuceneMiscGetTermInfo_INCLUDE)
#define _OrgApacheLuceneMiscGetTermInfo_

@class IOSObjectArray;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneStoreDirectory;

@interface OrgApacheLuceneMiscGetTermInfo : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)getTermInfoWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                        withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneMiscGetTermInfo)

FOUNDATION_EXPORT void OrgApacheLuceneMiscGetTermInfo_mainWithNSStringArray_(IOSObjectArray *args);

FOUNDATION_EXPORT void OrgApacheLuceneMiscGetTermInfo_getTermInfoWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT void OrgApacheLuceneMiscGetTermInfo_init(OrgApacheLuceneMiscGetTermInfo *self);

FOUNDATION_EXPORT OrgApacheLuceneMiscGetTermInfo *new_OrgApacheLuceneMiscGetTermInfo_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneMiscGetTermInfo)

#endif

#pragma pop_macro("OrgApacheLuceneMiscGetTermInfo_INCLUDE_ALL")