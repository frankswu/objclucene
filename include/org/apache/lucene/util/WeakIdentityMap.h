//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/WeakIdentityMap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilWeakIdentityMap_INCLUDE_ALL")
#if OrgApacheLuceneUtilWeakIdentityMap_RESTRICT
#define OrgApacheLuceneUtilWeakIdentityMap_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilWeakIdentityMap_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilWeakIdentityMap_RESTRICT

#if !defined (_OrgApacheLuceneUtilWeakIdentityMap_) && (OrgApacheLuceneUtilWeakIdentityMap_INCLUDE_ALL || OrgApacheLuceneUtilWeakIdentityMap_INCLUDE)
#define _OrgApacheLuceneUtilWeakIdentityMap_

@protocol JavaUtilIterator;

@interface OrgApacheLuceneUtilWeakIdentityMap : NSObject

#pragma mark Public

- (void)clear;

- (jboolean)containsKeyWithId:(id)key;

- (id)getWithId:(id)key;

- (jboolean)isEmpty;

- (id<JavaUtilIterator>)keyIterator;

+ (OrgApacheLuceneUtilWeakIdentityMap *)newConcurrentHashMap OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneUtilWeakIdentityMap *)newConcurrentHashMapWithBoolean:(jboolean)reapOnRead OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneUtilWeakIdentityMap *)newHashMap OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneUtilWeakIdentityMap *)newHashMapWithBoolean:(jboolean)reapOnRead OBJC_METHOD_FAMILY_NONE;

- (id)putWithId:(id)key
         withId:(id)value;

- (void)reap;

- (id)removeWithId:(id)key;

- (jint)size;

- (id<JavaUtilIterator>)valueIterator;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilWeakIdentityMap)

FOUNDATION_EXPORT id OrgApacheLuceneUtilWeakIdentityMap_NULL__;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilWeakIdentityMap, NULL__, id)

FOUNDATION_EXPORT OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newHashMap();

FOUNDATION_EXPORT OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newHashMapWithBoolean_(jboolean reapOnRead);

FOUNDATION_EXPORT OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMap();

FOUNDATION_EXPORT OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMapWithBoolean_(jboolean reapOnRead);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilWeakIdentityMap)

#endif

#pragma pop_macro("OrgApacheLuceneUtilWeakIdentityMap_INCLUDE_ALL")