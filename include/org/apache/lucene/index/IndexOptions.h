//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexOptions.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexOptions")
#ifdef RESTRICT_OrgApacheLuceneIndexIndexOptions
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexOptions 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexOptions 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexIndexOptions

#if !defined (OrgApacheLuceneIndexIndexOptions_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexOptions || defined(INCLUDE_OrgApacheLuceneIndexIndexOptions))
#define OrgApacheLuceneIndexIndexOptions_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneIndexIndexOptions_Enum) {
  OrgApacheLuceneIndexIndexOptions_Enum_NONE = 0,
  OrgApacheLuceneIndexIndexOptions_Enum_DOCS = 1,
  OrgApacheLuceneIndexIndexOptions_Enum_DOCS_AND_FREQS = 2,
  OrgApacheLuceneIndexIndexOptions_Enum_DOCS_AND_FREQS_AND_POSITIONS = 3,
  OrgApacheLuceneIndexIndexOptions_Enum_DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS = 4,
};

/*!
 @brief Controls how much information is stored in the postings lists.
 */
@interface OrgApacheLuceneIndexIndexOptions : JavaLangEnum < NSCopying >

+ (OrgApacheLuceneIndexIndexOptions *)NONE;

+ (OrgApacheLuceneIndexIndexOptions *)DOCS;

+ (OrgApacheLuceneIndexIndexOptions *)DOCS_AND_FREQS;

+ (OrgApacheLuceneIndexIndexOptions *)DOCS_AND_FREQS_AND_POSITIONS;

+ (OrgApacheLuceneIndexIndexOptions *)DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS;

#pragma mark Package-Private

+ (IOSObjectArray *)values;

+ (OrgApacheLuceneIndexIndexOptions *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;
- (OrgApacheLuceneIndexIndexOptions_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexIndexOptions)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneIndexIndexOptions *OrgApacheLuceneIndexIndexOptions_values_[];

/*!
 @brief Not indexed
 */
inline OrgApacheLuceneIndexIndexOptions *OrgApacheLuceneIndexIndexOptions_get_NONE();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneIndexIndexOptions, NONE)

/*!
 @brief Only documents are indexed: term frequencies and positions are omitted.
 Phrase and other positional queries on the field will throw an exception, and scoring
 will behave as if any term in the document appears only once.
 */
inline OrgApacheLuceneIndexIndexOptions *OrgApacheLuceneIndexIndexOptions_get_DOCS();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneIndexIndexOptions, DOCS)

/*!
 @brief Only documents and term frequencies are indexed: positions are omitted.
 This enables normal scoring, except Phrase and other positional queries
 will throw an exception.
 */
inline OrgApacheLuceneIndexIndexOptions *OrgApacheLuceneIndexIndexOptions_get_DOCS_AND_FREQS();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneIndexIndexOptions, DOCS_AND_FREQS)

/*!
 @brief Indexes documents, frequencies and positions.
 This is a typical default for full-text search: full scoring is enabled
 and positional queries are supported.
 */
inline OrgApacheLuceneIndexIndexOptions *OrgApacheLuceneIndexIndexOptions_get_DOCS_AND_FREQS_AND_POSITIONS();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneIndexIndexOptions, DOCS_AND_FREQS_AND_POSITIONS)

/*!
 @brief Indexes documents, frequencies, positions and offsets.
 Character offsets are encoded alongside the positions. 
 */
inline OrgApacheLuceneIndexIndexOptions *OrgApacheLuceneIndexIndexOptions_get_DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneIndexIndexOptions, DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexIndexOptions_values();

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexOptions *OrgApacheLuceneIndexIndexOptions_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexOptions *OrgApacheLuceneIndexIndexOptions_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexOptions)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexOptions")
