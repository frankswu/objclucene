//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanContainQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSpansSpanContainQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchSpansSpanContainQuery_RESTRICT
#define OrgApacheLuceneSearchSpansSpanContainQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSpansSpanContainQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSpansSpanContainQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchSpansSpanContainQuery_) && (OrgApacheLuceneSearchSpansSpanContainQuery_INCLUDE_ALL || OrgApacheLuceneSearchSpansSpanContainQuery_INCLUDE)
#define _OrgApacheLuceneSearchSpansSpanContainQuery_

#define OrgApacheLuceneSearchSpansSpanQuery_RESTRICT 1
#define OrgApacheLuceneSearchSpansSpanQuery_INCLUDE 1
#include "org/apache/lucene/search/spans/SpanQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneSearchSpansSpanContainQuery : OrgApacheLuceneSearchSpansSpanQuery < NSCopying > {
 @public
  OrgApacheLuceneSearchSpansSpanQuery *big_;
  OrgApacheLuceneSearchSpansSpanQuery *little_;
}

#pragma mark Public

- (OrgApacheLuceneSearchSpansSpanContainQuery *)clone;

- (jboolean)isEqual:(id)o;

- (NSString *)getField;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)big
                    withOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)little
                                                  withFloat:(jfloat)boost;

- (NSString *)toStringWithNSString:(NSString *)field
                      withNSString:(NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanContainQuery)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanContainQuery, big_, OrgApacheLuceneSearchSpansSpanQuery *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanContainQuery, little_, OrgApacheLuceneSearchSpansSpanQuery *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanContainQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_withFloat_(OrgApacheLuceneSearchSpansSpanContainQuery *self, OrgApacheLuceneSearchSpansSpanQuery *big, OrgApacheLuceneSearchSpansSpanQuery *little, jfloat boost);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanContainQuery)

#endif

#if !defined (_OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight_) && (OrgApacheLuceneSearchSpansSpanContainQuery_INCLUDE_ALL || OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight_INCLUDE)
#define _OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight_

#define OrgApacheLuceneSearchSpansSpanWeight_RESTRICT 1
#define OrgApacheLuceneSearchSpansSpanWeight_INCLUDE 1
#include "org/apache/lucene/search/spans/SpanWeight.h"

@class JavaUtilArrayList;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchSpansSpanContainQuery;
@class OrgApacheLuceneSearchSpansSpanWeight_PostingsEnum;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight : OrgApacheLuceneSearchSpansSpanWeight {
 @public
  OrgApacheLuceneSearchSpansSpanWeight *bigWeight_;
  OrgApacheLuceneSearchSpansSpanWeight *littleWeight_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanContainQuery:(OrgApacheLuceneSearchSpansSpanContainQuery *)outer$
                            withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                   withJavaUtilMap:(id<JavaUtilMap>)terms
                          withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)bigWeight
                          withOrgApacheLuceneSearchSpansSpanWeight:(OrgApacheLuceneSearchSpansSpanWeight *)littleWeight;

- (void)extractTermContextsWithJavaUtilMap:(id<JavaUtilMap>)contexts;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

#pragma mark Package-Private

- (JavaUtilArrayList *)prepareConjunctionWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                             withOrgApacheLuceneSearchSpansSpanWeight_PostingsEnum:(OrgApacheLuceneSearchSpansSpanWeight_PostingsEnum *)postings;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight, bigWeight_, OrgApacheLuceneSearchSpansSpanWeight *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight, littleWeight_, OrgApacheLuceneSearchSpansSpanWeight *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight_initWithOrgApacheLuceneSearchSpansSpanContainQuery_withOrgApacheLuceneSearchIndexSearcher_withJavaUtilMap_withOrgApacheLuceneSearchSpansSpanWeight_withOrgApacheLuceneSearchSpansSpanWeight_(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight *self, OrgApacheLuceneSearchSpansSpanContainQuery *outer$, OrgApacheLuceneSearchIndexSearcher *searcher, id<JavaUtilMap> terms, OrgApacheLuceneSearchSpansSpanWeight *bigWeight, OrgApacheLuceneSearchSpansSpanWeight *littleWeight);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanContainQuery_SpanContainWeight)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSpansSpanContainQuery_INCLUDE_ALL")