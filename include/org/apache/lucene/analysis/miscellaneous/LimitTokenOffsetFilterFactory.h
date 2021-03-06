//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/LimitTokenOffsetFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory

#if !defined (OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory))
#define OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>LimitTokenOffsetFilter</code>.
 <pre class="prettyprint">
 &lt;fieldType name="text_limit_pos" class="solr.TextField" positionIncrementGap="100"&gt;
 &lt;analyzer&gt;
 &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
 &lt;filter class="solr.LimitTokenOffsetFilter" maxStartOffset="100000" consumeAllTokens="false" /&gt;
 &lt;/analyzer&gt;
 
@endcode
 <p>
 The <code>consumeAllTokens</code> property is optional and defaults to <code>false</code>.
 */
@interface OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

+ (NSString *)MAX_START_OFFSET;

+ (NSString *)CONSUME_ALL_TOKENS_KEY;

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory)

inline NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory_get_MAX_START_OFFSET();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory_MAX_START_OFFSET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory, MAX_START_OFFSET, NSString *)

inline NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory_get_CONSUME_ALL_TOKENS_KEY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory_CONSUME_ALL_TOKENS_KEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory, CONSUME_ALL_TOKENS_KEY, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilterFactory")
