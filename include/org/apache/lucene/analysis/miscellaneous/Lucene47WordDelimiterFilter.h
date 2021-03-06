//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/Lucene47WordDelimiterFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter

#if !defined (OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter))
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_

#define RESTRICT_OrgApacheLuceneAnalysisTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenFilter 1
#include "org/apache/lucene/analysis/TokenFilter.h"

@class IOSByteArray;
@class IOSObjectArray;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilCharArraySet;

/*!
 @brief Old Broken version of <code>WordDelimiterFilter</code>
 */
@interface OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter : OrgApacheLuceneAnalysisTokenFilter {
 @public
  /*!
   @brief If not null is the set of tokens to protect from being delimited
   */
  OrgApacheLuceneAnalysisUtilCharArraySet *protWords_;
}

+ (jint)LOWER;

+ (jint)UPPER;

+ (jint)DIGIT;

+ (jint)SUBWORD_DELIM;

+ (jint)ALPHA;

+ (jint)ALPHANUM;

+ (jint)GENERATE_WORD_PARTS;

+ (jint)GENERATE_NUMBER_PARTS;

+ (jint)CATENATE_WORDS;

+ (jint)CATENATE_NUMBERS;

+ (jint)CATENATE_ALL;

+ (jint)PRESERVE_ORIGINAL;

+ (jint)SPLIT_ON_CASE_CHANGE;

+ (jint)SPLIT_ON_NUMERICS;

+ (jint)STEM_ENGLISH_POSSESSIVE;

#pragma mark Public

/*!
 @brief Creates a new WordDelimiterFilter
 @param inArg TokenStream to be filtered
 @param charTypeTable table containing character types
 @param configurationFlags Flags configuring the filter
 @param protWords If not null is the set of tokens to protect from being delimited
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                             withByteArray:(IOSByteArray *)charTypeTable
                                                   withInt:(jint)configurationFlags
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)protWords;

/*!
 @brief Creates a new WordDelimiterFilter using <code>WordDelimiterIterator.DEFAULT_WORD_DELIM_TABLE</code>
 as its charTypeTable
 @param inArg TokenStream to be filtered
 @param configurationFlags Flags configuring the filter
 @param protWords If not null is the set of tokens to protect from being delimited
 */
- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)configurationFlags
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)protWords;

- (jboolean)incrementToken;

/*!
 
 */
- (void)reset;

#pragma mark Package-Private

/*!
 @brief Checks if the given word type includes <code>ALPHA</code>
 @param type Word type to check
 @return <code>true</code> if the type contains ALPHA, <code>false</code> otherwise
 */
+ (jboolean)isAlphaWithInt:(jint)type;

/*!
 @brief Checks if the given word type includes <code>DIGIT</code>
 @param type Word type to check
 @return <code>true</code> if the type contains DIGIT, <code>false</code> otherwise
 */
+ (jboolean)isDigitWithInt:(jint)type;

/*!
 @brief Checks if the given word type includes <code>SUBWORD_DELIM</code>
 @param type Word type to check
 @return <code>true</code> if the type contains SUBWORD_DELIM, <code>false</code> otherwise
 */
+ (jboolean)isSubwordDelimWithInt:(jint)type;

/*!
 @brief Checks if the given word type includes <code>UPPER</code>
 @param type Word type to check
 @return <code>true</code> if the type contains UPPER, <code>false</code> otherwise
 */
+ (jboolean)isUpperWithInt:(jint)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, protWords_, OrgApacheLuceneAnalysisUtilCharArraySet *)

inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_LOWER();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_LOWER 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, LOWER, jint)

inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_UPPER();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_UPPER 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, UPPER, jint)

inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_DIGIT();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_DIGIT 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, DIGIT, jint)

inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_SUBWORD_DELIM();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_SUBWORD_DELIM 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, SUBWORD_DELIM, jint)

inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_ALPHA();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_ALPHA 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, ALPHA, jint)

inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_ALPHANUM();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_ALPHANUM 7
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, ALPHANUM, jint)

/*!
 @brief Causes parts of words to be generated:
 <p>
 "PowerShot" =&gt; "Power" "Shot"
 */
inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_GENERATE_WORD_PARTS();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_GENERATE_WORD_PARTS 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, GENERATE_WORD_PARTS, jint)

/*!
 @brief Causes number subwords to be generated:
 <p>
 "500-42" =&gt; "500" "42"
 */
inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_GENERATE_NUMBER_PARTS();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_GENERATE_NUMBER_PARTS 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, GENERATE_NUMBER_PARTS, jint)

/*!
 @brief Causes maximum runs of word parts to be catenated:
 <p>
 "wi-fi" =&gt; "wifi"
 */
inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_CATENATE_WORDS();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_CATENATE_WORDS 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, CATENATE_WORDS, jint)

/*!
 @brief Causes maximum runs of word parts to be catenated:
 <p>
 "wi-fi" =&gt; "wifi"
 */
inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_CATENATE_NUMBERS();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_CATENATE_NUMBERS 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, CATENATE_NUMBERS, jint)

/*!
 @brief Causes all subword parts to be catenated:
 <p>
 "wi-fi-4000" =&gt; "wifi4000"
 */
inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_CATENATE_ALL();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_CATENATE_ALL 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, CATENATE_ALL, jint)

/*!
 @brief Causes original words are preserved and added to the subword list (Defaults to false)
 <p>
 "500-42" =&gt; "500" "42" "500-42"
 */
inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_PRESERVE_ORIGINAL();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_PRESERVE_ORIGINAL 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, PRESERVE_ORIGINAL, jint)

/*!
 @brief If not set, causes case changes to be ignored (subwords will only be generated
 given SUBWORD_DELIM tokens)
 */
inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_SPLIT_ON_CASE_CHANGE();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_SPLIT_ON_CASE_CHANGE 64
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, SPLIT_ON_CASE_CHANGE, jint)

/*!
 @brief If not set, causes numeric changes to be ignored (subwords will only be generated
 given SUBWORD_DELIM tokens).
 */
inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_SPLIT_ON_NUMERICS();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_SPLIT_ON_NUMERICS 128
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, SPLIT_ON_NUMERICS, jint)

/*!
 @brief Causes trailing "'s" to be removed for each subword
 <p>
 "O'Neil's" =&gt; "O", "Neil"
 */
inline jint OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_get_STEM_ENGLISH_POSSESSIVE();
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_STEM_ENGLISH_POSSESSIVE 256
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter, STEM_ENGLISH_POSSESSIVE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withByteArray_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, IOSByteArray *charTypeTable, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *new_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withByteArray_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, IOSByteArray *charTypeTable, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *create_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withByteArray_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, IOSByteArray *charTypeTable, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *new_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *create_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, jint configurationFlags, OrgApacheLuceneAnalysisUtilCharArraySet *protWords);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_isAlphaWithInt_(jint type);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_isDigitWithInt_(jint type);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_isSubwordDelimWithInt_(jint type);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_isUpperWithInt_(jint type);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter)

#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation))
#define OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation_

@class IOSCharArray;
@class JavaLangStringBuilder;
@class OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter;

/*!
 @brief A WDF concatenated 'run'
 */
@interface OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation : NSObject {
 @public
  JavaLangStringBuilder *buffer_;
  jint startOffset_;
  jint endOffset_;
  jint type_;
  jint subwordCount_;
}

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter:(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *)outer$;

/*!
 @brief Appends the given text of the given length, to the concetenation at the given offset
 @param text Text to append
 @param offset Offset in the concetenation to add the text
 @param length Length of the text to append
 */
- (void)appendWithCharArray:(IOSCharArray *)text
                    withInt:(jint)offset
                    withInt:(jint)length;

/*!
 @brief Clears the concatenation and resets its state
 */
- (void)clear;

/*!
 @brief Determines if the concatenation is empty
 @return <code>true</code> if the concatenation is empty, <code>false</code> otherwise
 */
- (jboolean)isEmpty;

/*!
 @brief Writes the concatenation to the attributes
 */
- (void)write;

/*!
 @brief Convenience method for the common scenario of having to write the concetenation and then clearing its state
 */
- (void)writeAndClear;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation, buffer_, JavaLangStringBuilder *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation_initWithOrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation *self, OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *outer$);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation *new_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation_initWithOrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation *create_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation_initWithOrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter_WordDelimiterConcatenation)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousLucene47WordDelimiterFilter")
