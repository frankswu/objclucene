//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/QueryTimeout.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexQueryTimeout")
#ifdef RESTRICT_OrgApacheLuceneIndexQueryTimeout
#define INCLUDE_ALL_OrgApacheLuceneIndexQueryTimeout 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexQueryTimeout 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexQueryTimeout

#if !defined (OrgApacheLuceneIndexQueryTimeout_) && (INCLUDE_ALL_OrgApacheLuceneIndexQueryTimeout || defined(INCLUDE_OrgApacheLuceneIndexQueryTimeout))
#define OrgApacheLuceneIndexQueryTimeout_

/*!
 @brief Base for query timeout implementations, which will provide a <code>shouldExit()</code> method,
 used with <code>ExitableDirectoryReader</code>.
 */
@protocol OrgApacheLuceneIndexQueryTimeout < NSObject, JavaObject >

/*!
 @brief Called from <code>ExitableDirectoryReader.ExitableTermsEnum.next()</code> 
 to determine whether to stop processing a query.
 */
- (jboolean)shouldExit;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexQueryTimeout)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexQueryTimeout)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexQueryTimeout")
