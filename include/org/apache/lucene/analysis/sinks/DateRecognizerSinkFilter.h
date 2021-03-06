//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sinks/DateRecognizerSinkFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter

#if !defined (OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter || defined(INCLUDE_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter))
#define OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_

#define RESTRICT_OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter 1
#include "org/apache/lucene/analysis/sinks/TeeSinkTokenFilter.h"

@class JavaTextDateFormat;
@class OrgApacheLuceneUtilAttributeSource;
@protocol OrgApacheLuceneAnalysisTokenattributesCharTermAttribute;

/*!
 @brief Attempts to parse the <code>CharTermAttribute.buffer()</code> as a Date using a <code>java.text.DateFormat</code>.
 If the value is a Date, it will add it to the sink.
 */
@interface OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter : OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter {
 @public
  JavaTextDateFormat *dateFormat_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

+ (NSString *)DATE_TYPE;

#pragma mark Public

/*!
 @brief Uses <code>DateFormat#getDateInstance(DateFormat.DEFAULT, Locale.ROOT)</code>
  as 
 the <code>java.text.DateFormat</code> object.
 */
- (instancetype)init;

- (instancetype)initWithJavaTextDateFormat:(JavaTextDateFormat *)dateFormat;

- (jboolean)acceptWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter, dateFormat_, JavaTextDateFormat *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

inline NSString *OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_get_DATE_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_DATE_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter, DATE_TYPE, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_init(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *new_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *create_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_init();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_initWithJavaTextDateFormat_(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *self, JavaTextDateFormat *dateFormat);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *new_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_initWithJavaTextDateFormat_(JavaTextDateFormat *dateFormat) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *create_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_initWithJavaTextDateFormat_(JavaTextDateFormat *dateFormat);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter")
