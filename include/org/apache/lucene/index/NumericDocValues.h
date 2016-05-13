//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NumericDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValues")
#ifdef RESTRICT_OrgApacheLuceneIndexNumericDocValues
#define INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexNumericDocValues

#if !defined (OrgApacheLuceneIndexNumericDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValues || defined(INCLUDE_OrgApacheLuceneIndexNumericDocValues))
#define OrgApacheLuceneIndexNumericDocValues_

/*!
 @brief A per-document numeric value.
 */
@interface OrgApacheLuceneIndexNumericDocValues : NSObject

#pragma mark Public

/*!
 @brief Returns the numeric value for the specified document ID.
 @param docID document ID to lookup
 @return numeric value
 */
- (jlong)getWithInt:(jint)docID;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
 constructors, typically implicit.) 
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexNumericDocValues)

FOUNDATION_EXPORT void OrgApacheLuceneIndexNumericDocValues_init(OrgApacheLuceneIndexNumericDocValues *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNumericDocValues)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValues")
