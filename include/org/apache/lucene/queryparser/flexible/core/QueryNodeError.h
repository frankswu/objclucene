//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/QueryNodeError.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_) && (OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_

#define JavaLangError_RESTRICT 1
#define JavaLangError_INCLUDE 1
#include "java/lang/Error.h"

#define OrgApacheLuceneQueryparserFlexibleMessagesNLSException_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleMessagesNLSException_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/messages/NLSException.h"

@class JavaLangThrowable;
@protocol OrgApacheLuceneQueryparserFlexibleMessagesMessage;

@interface OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError : JavaLangError < OrgApacheLuceneQueryparserFlexibleMessagesNLSException >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message;

- (instancetype)initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage:(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)message
                                                    withJavaLangThrowable:(JavaLangThrowable *)throwable;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)throwable;

- (id<OrgApacheLuceneQueryparserFlexibleMessagesMessage>)getMessageObject;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError *self, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError *new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithJavaLangThrowable_(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError *self, JavaLangThrowable *throwable);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError *new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithJavaLangThrowable_(JavaLangThrowable *throwable) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withJavaLangThrowable_(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError *self, id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message, JavaLangThrowable *throwable);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError *new_OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_initWithOrgApacheLuceneQueryparserFlexibleMessagesMessage_withJavaLangThrowable_(id<OrgApacheLuceneQueryparserFlexibleMessagesMessage> message, JavaLangThrowable *throwable) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleCoreQueryNodeError_INCLUDE_ALL")