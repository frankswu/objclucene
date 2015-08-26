//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sinks/TokenTypeSinkFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_RESTRICT
#define OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_) && (OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_INCLUDE_ALL || OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_INCLUDE)
#define _OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_

#define OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_RESTRICT 1
#define OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter_INCLUDE 1
#include "org/apache/lucene/analysis/sinks/TeeSinkTokenFilter.h"

@class OrgApacheLuceneUtilAttributeSource;

@interface OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter : OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)typeToMatch;

- (jboolean)acceptWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_initWithNSString_(OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter *self, NSString *typeToMatch);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter *new_OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_initWithNSString_(NSString *typeToMatch) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisSinksTokenTypeSinkFilter_INCLUDE_ALL")