//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MappedMultiFields.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexMappedMultiFields")
#ifdef RESTRICT_OrgApacheLuceneIndexMappedMultiFields
#define INCLUDE_ALL_OrgApacheLuceneIndexMappedMultiFields 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexMappedMultiFields 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexMappedMultiFields

#if !defined (OrgApacheLuceneIndexMappedMultiFields_) && (INCLUDE_ALL_OrgApacheLuceneIndexMappedMultiFields || defined(INCLUDE_OrgApacheLuceneIndexMappedMultiFields))
#define OrgApacheLuceneIndexMappedMultiFields_

#define RESTRICT_OrgApacheLuceneIndexFilterLeafReader 1
#define INCLUDE_OrgApacheLuceneIndexFilterLeafReader_FilterFields 1
#include "org/apache/lucene/index/FilterLeafReader.h"

@class OrgApacheLuceneIndexMergeState;
@class OrgApacheLuceneIndexMultiFields;
@class OrgApacheLuceneIndexTerms;

/*!
 @brief A <code>Fields</code> implementation that merges multiple
 Fields into one, and maps around deleted documents.
 This is used for merging. 
 */
@interface OrgApacheLuceneIndexMappedMultiFields : OrgApacheLuceneIndexFilterLeafReader_FilterFields {
 @public
  OrgApacheLuceneIndexMergeState *mergeState_;
}

#pragma mark Public

/*!
 @brief Create a new MappedMultiFields for merging, based on the supplied
 mergestate and merged view of terms.
 */
- (instancetype)initWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
                   withOrgApacheLuceneIndexMultiFields:(OrgApacheLuceneIndexMultiFields *)multiFields;

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMappedMultiFields)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappedMultiFields, mergeState_, OrgApacheLuceneIndexMergeState *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(OrgApacheLuceneIndexMappedMultiFields *self, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiFields *multiFields);

FOUNDATION_EXPORT OrgApacheLuceneIndexMappedMultiFields *new_OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiFields *multiFields) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexMappedMultiFields *create_OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiFields *multiFields);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMappedMultiFields)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexMappedMultiFields")
