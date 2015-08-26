//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BytesRef.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilBytesRef_INCLUDE_ALL")
#if OrgApacheLuceneUtilBytesRef_RESTRICT
#define OrgApacheLuceneUtilBytesRef_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilBytesRef_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilBytesRef_RESTRICT

#if !defined (_OrgApacheLuceneUtilBytesRef_) && (OrgApacheLuceneUtilBytesRef_INCLUDE_ALL || OrgApacheLuceneUtilBytesRef_INCLUDE)
#define _OrgApacheLuceneUtilBytesRef_

#define JavaLangComparable_RESTRICT 1
#define JavaLangComparable_INCLUDE 1
#include "java/lang/Comparable.h"

@class IOSByteArray;
@protocol JavaLangCharSequence;
@protocol JavaUtilComparator;

@interface OrgApacheLuceneUtilBytesRef : NSObject < JavaLangComparable, NSCopying > {
 @public
  IOSByteArray *bytes_;
  jint offset_;
  jint length_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithByteArray:(IOSByteArray *)bytes;

- (instancetype)initWithByteArray:(IOSByteArray *)bytes
                          withInt:(jint)offset
                          withInt:(jint)length;

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (instancetype)initWithInt:(jint)capacity;

- (jboolean)bytesEqualsWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other;

- (OrgApacheLuceneUtilBytesRef *)clone;

- (jint)compareToWithId:(OrgApacheLuceneUtilBytesRef *)other;

+ (OrgApacheLuceneUtilBytesRef *)deepCopyOfWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other;

- (jboolean)isEqual:(id)other;

+ (id<JavaUtilComparator>)getUTF8SortedAsUnicodeComparator;

+ (id<JavaUtilComparator>)getUTF8SortedAsUTF16Comparator;

- (NSUInteger)hash;

- (jboolean)isValid;

- (NSString *)description;

- (NSString *)utf8ToString;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilBytesRef)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRef, bytes_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilBytesRef, EMPTY_BYTES_, IOSByteArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_init(OrgApacheLuceneUtilBytesRef *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(OrgApacheLuceneUtilBytesRef *self, IOSByteArray *bytes, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithByteArray_(OrgApacheLuceneUtilBytesRef *self, IOSByteArray *bytes);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(IOSByteArray *bytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithInt_(OrgApacheLuceneUtilBytesRef *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(OrgApacheLuceneUtilBytesRef *self, id<JavaLangCharSequence> text);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator();

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUTF16Comparator();

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *other);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRef)

#endif

#pragma pop_macro("OrgApacheLuceneUtilBytesRef_INCLUDE_ALL")