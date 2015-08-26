//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ConjunctionDISI.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchConjunctionDISI_INCLUDE_ALL")
#if OrgApacheLuceneSearchConjunctionDISI_RESTRICT
#define OrgApacheLuceneSearchConjunctionDISI_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchConjunctionDISI_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchConjunctionDISI_RESTRICT

#if !defined (_OrgApacheLuceneSearchConjunctionDISI_) && (OrgApacheLuceneSearchConjunctionDISI_INCLUDE_ALL || OrgApacheLuceneSearchConjunctionDISI_INCLUDE)
#define _OrgApacheLuceneSearchConjunctionDISI_

#define OrgApacheLuceneSearchDocIdSetIterator_RESTRICT 1
#define OrgApacheLuceneSearchDocIdSetIterator_INCLUDE 1
#include "org/apache/lucene/search/DocIdSetIterator.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchTwoPhaseIterator;
@protocol JavaUtilList;

@interface OrgApacheLuceneSearchConjunctionDISI : OrgApacheLuceneSearchDocIdSetIterator {
 @public
  OrgApacheLuceneSearchDocIdSetIterator *lead_;
  IOSObjectArray *others_;
}

#pragma mark Public

- (jint)advanceWithInt:(jint)target;

- (jlong)cost;

- (jint)docID;

+ (OrgApacheLuceneSearchConjunctionDISI *)intersectWithJavaUtilList:(id<JavaUtilList>)iterators;

- (jint)nextDoc;

#pragma mark Protected

- (jboolean)matches;

#pragma mark Package-Private

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)iterators;

- (OrgApacheLuceneSearchTwoPhaseIterator *)asTwoPhaseIterator;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConjunctionDISI)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConjunctionDISI, lead_, OrgApacheLuceneSearchDocIdSetIterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConjunctionDISI, others_, IOSObjectArray *)

FOUNDATION_EXPORT OrgApacheLuceneSearchConjunctionDISI *OrgApacheLuceneSearchConjunctionDISI_intersectWithJavaUtilList_(id<JavaUtilList> iterators);

FOUNDATION_EXPORT void OrgApacheLuceneSearchConjunctionDISI_initWithJavaUtilList_(OrgApacheLuceneSearchConjunctionDISI *self, id<JavaUtilList> iterators);

FOUNDATION_EXPORT OrgApacheLuceneSearchConjunctionDISI *new_OrgApacheLuceneSearchConjunctionDISI_initWithJavaUtilList_(id<JavaUtilList> iterators) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConjunctionDISI)

#endif

#pragma pop_macro("OrgApacheLuceneSearchConjunctionDISI_INCLUDE_ALL")