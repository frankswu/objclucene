//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/es/SpanishLightStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemmer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisEsSpanishLightStemmer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemmer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemmer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisEsSpanishLightStemmer

#if !defined (OrgApacheLuceneAnalysisEsSpanishLightStemmer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemmer || defined(INCLUDE_OrgApacheLuceneAnalysisEsSpanishLightStemmer))
#define OrgApacheLuceneAnalysisEsSpanishLightStemmer_

@class IOSCharArray;

/*!
 @brief Light Stemmer for Spanish
 <p>
 This stemmer implements the algorithm described in:
 <i>Report on CLEF-2001 Experiments</i>
 Jacques Savoy
 */
@interface OrgApacheLuceneAnalysisEsSpanishLightStemmer : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEsSpanishLightStemmer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEsSpanishLightStemmer_init(OrgApacheLuceneAnalysisEsSpanishLightStemmer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEsSpanishLightStemmer *new_OrgApacheLuceneAnalysisEsSpanishLightStemmer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEsSpanishLightStemmer *create_OrgApacheLuceneAnalysisEsSpanishLightStemmer_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEsSpanishLightStemmer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEsSpanishLightStemmer")
