//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BoostAttribute.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchBoostAttribute_INCLUDE_ALL")
#if OrgApacheLuceneSearchBoostAttribute_RESTRICT
#define OrgApacheLuceneSearchBoostAttribute_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchBoostAttribute_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchBoostAttribute_RESTRICT

#if !defined (_OrgApacheLuceneSearchBoostAttribute_) && (OrgApacheLuceneSearchBoostAttribute_INCLUDE_ALL || OrgApacheLuceneSearchBoostAttribute_INCLUDE)
#define _OrgApacheLuceneSearchBoostAttribute_

#define OrgApacheLuceneUtilAttribute_RESTRICT 1
#define OrgApacheLuceneUtilAttribute_INCLUDE 1
#include "org/apache/lucene/util/Attribute.h"

@protocol OrgApacheLuceneSearchBoostAttribute < OrgApacheLuceneUtilAttribute, NSObject, JavaObject >

- (void)setBoostWithFloat:(jfloat)boost;

- (jfloat)getBoost;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBoostAttribute)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBoostAttribute)

#endif

#pragma pop_macro("OrgApacheLuceneSearchBoostAttribute_INCLUDE_ALL")