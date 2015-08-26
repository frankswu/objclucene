//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pattern/PatternReplaceCharFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_RESTRICT
#define OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_) && (OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_

#define OrgApacheLuceneAnalysisCharfilterBaseCharFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisCharfilterBaseCharFilter_INCLUDE 1
#include "org/apache/lucene/analysis/charfilter/BaseCharFilter.h"

@class IOSCharArray;
@class JavaIoReader;
@class JavaUtilRegexPattern;
@protocol JavaLangCharSequence;

@interface OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter : OrgApacheLuceneAnalysisCharfilterBaseCharFilter

#pragma mark Public

- (instancetype)initWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)pattern
                                withNSString:(NSString *)replacement
                            withJavaIoReader:(JavaIoReader *)inArg;

- (jint)read;

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len;

#pragma mark Protected

- (jint)correctWithInt:(jint)currentOff;

#pragma mark Package-Private

- (id<JavaLangCharSequence>)processPatternWithJavaLangCharSequence:(id<JavaLangCharSequence>)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_initWithJavaUtilRegexPattern_withNSString_withJavaIoReader_(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter *self, JavaUtilRegexPattern *pattern, NSString *replacement, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter *new_OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_initWithJavaUtilRegexPattern_withNSString_withJavaIoReader_(JavaUtilRegexPattern *pattern, NSString *replacement, JavaIoReader *inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisPatternPatternReplaceCharFilter_INCLUDE_ALL")