//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/KStemData1.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData1")
#ifdef RESTRICT_OrgApacheLuceneAnalysisEnKStemData1
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData1 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData1 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisEnKStemData1

#if !defined (OrgApacheLuceneAnalysisEnKStemData1_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData1 || defined(INCLUDE_OrgApacheLuceneAnalysisEnKStemData1))
#define OrgApacheLuceneAnalysisEnKStemData1_

@class IOSObjectArray;

/*!
 @brief A list of words used by Kstem
 */
@interface OrgApacheLuceneAnalysisEnKStemData1 : NSObject

+ (IOSObjectArray *)data;

+ (void)setData:(IOSObjectArray *)value;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisEnKStemData1)

inline IOSObjectArray *OrgApacheLuceneAnalysisEnKStemData1_get_data();
inline IOSObjectArray *OrgApacheLuceneAnalysisEnKStemData1_set_data(IOSObjectArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisEnKStemData1_data;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneAnalysisEnKStemData1, data, IOSObjectArray *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnKStemData1)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData1")
