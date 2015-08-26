//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/PositionLengthAttributeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_RESTRICT
#define OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_) && (OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_INCLUDE_ALL || OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_INCLUDE)
#define _OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_

#define OrgApacheLuceneUtilAttributeImpl_RESTRICT 1
#define OrgApacheLuceneUtilAttributeImpl_INCLUDE 1
#include "org/apache/lucene/util/AttributeImpl.h"

#define OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_INCLUDE 1
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"

@protocol OrgApacheLuceneUtilAttributeReflector;

@interface OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl : OrgApacheLuceneUtilAttributeImpl < OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute, NSCopying >

#pragma mark Public

- (instancetype)init;

- (void)clear;

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)other;

- (jint)getPositionLength;

- (NSUInteger)hash;

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector;

- (void)setPositionLengthWithInt:(jint)positionLength;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisTokenattributesPositionLengthAttributeImpl_INCLUDE_ALL")