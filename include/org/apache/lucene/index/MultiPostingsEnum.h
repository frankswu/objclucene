//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MultiPostingsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexMultiPostingsEnum_INCLUDE_ALL")
#if OrgApacheLuceneIndexMultiPostingsEnum_RESTRICT
#define OrgApacheLuceneIndexMultiPostingsEnum_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexMultiPostingsEnum_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexMultiPostingsEnum_RESTRICT

#if !defined (_OrgApacheLuceneIndexMultiPostingsEnum_) && (OrgApacheLuceneIndexMultiPostingsEnum_INCLUDE_ALL || OrgApacheLuceneIndexMultiPostingsEnum_INCLUDE)
#define _OrgApacheLuceneIndexMultiPostingsEnum_

#define OrgApacheLuceneIndexPostingsEnum_RESTRICT 1
#define OrgApacheLuceneIndexPostingsEnum_INCLUDE 1
#include "org/apache/lucene/index/PostingsEnum.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexMultiTermsEnum;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneIndexMultiPostingsEnum : OrgApacheLuceneIndexPostingsEnum {
 @public
  IOSObjectArray *subPostingsEnums_;
  jint numSubs_;
  jint upto_;
  OrgApacheLuceneIndexPostingsEnum *current_;
  jint currentBase_;
  jint doc_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexMultiTermsEnum:(OrgApacheLuceneIndexMultiTermsEnum *)parent
                                                   withInt:(jint)subReaderCount;

- (jint)advanceWithInt:(jint)target;

- (jboolean)canReuseWithOrgApacheLuceneIndexMultiTermsEnum:(OrgApacheLuceneIndexMultiTermsEnum *)parent;

- (jlong)cost;

- (jint)docID;

- (jint)endOffset;

- (jint)freq;

- (jint)getNumSubs;

- (OrgApacheLuceneUtilBytesRef *)getPayload;

- (IOSObjectArray *)getSubs;

- (jint)nextDoc;

- (jint)nextPosition;

- (OrgApacheLuceneIndexMultiPostingsEnum *)resetWithOrgApacheLuceneIndexMultiPostingsEnum_EnumWithSliceArray:(IOSObjectArray *)subs
                                                                                                     withInt:(jint)numSubs;

- (jint)startOffset;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMultiPostingsEnum)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiPostingsEnum, subPostingsEnums_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiPostingsEnum, current_, OrgApacheLuceneIndexPostingsEnum *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiPostingsEnum_initWithOrgApacheLuceneIndexMultiTermsEnum_withInt_(OrgApacheLuceneIndexMultiPostingsEnum *self, OrgApacheLuceneIndexMultiTermsEnum *parent, jint subReaderCount);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiPostingsEnum *new_OrgApacheLuceneIndexMultiPostingsEnum_initWithOrgApacheLuceneIndexMultiTermsEnum_withInt_(OrgApacheLuceneIndexMultiTermsEnum *parent, jint subReaderCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiPostingsEnum)

#endif

#if !defined (_OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice_) && (OrgApacheLuceneIndexMultiPostingsEnum_INCLUDE_ALL || OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice_INCLUDE)
#define _OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice_

@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexReaderSlice;

@interface OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice : NSObject {
 @public
  OrgApacheLuceneIndexPostingsEnum *postingsEnum_;
  OrgApacheLuceneIndexReaderSlice *slice_;
}

#pragma mark Public

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice, postingsEnum_, OrgApacheLuceneIndexPostingsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice, slice_, OrgApacheLuceneIndexReaderSlice *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice_init(OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice *new_OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice)

#endif

#pragma pop_macro("OrgApacheLuceneIndexMultiPostingsEnum_INCLUDE_ALL")