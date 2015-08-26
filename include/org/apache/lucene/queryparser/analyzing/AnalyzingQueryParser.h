//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/analyzing/AnalyzingQueryParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_RESTRICT
#define OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_) && (OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_INCLUDE_ALL || OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_INCLUDE)
#define _OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_

#define OrgApacheLuceneQueryparserClassicQueryParser_RESTRICT 1
#define OrgApacheLuceneQueryparserClassicQueryParser_INCLUDE 1
#include "org/apache/lucene/queryparser/classic/QueryParser.h"

@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser : OrgApacheLuceneQueryparserClassicQueryParser

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

#pragma mark Protected

- (NSString *)analyzeSingleChunkWithNSString:(NSString *)field
                                withNSString:(NSString *)termStr
                                withNSString:(NSString *)chunk;

- (OrgApacheLuceneSearchQuery *)getFuzzyQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)termStr
                                                withFloat:(jfloat)minSimilarity;

- (OrgApacheLuceneSearchQuery *)getPrefixQueryWithNSString:(NSString *)field
                                              withNSString:(NSString *)termStr;

- (OrgApacheLuceneSearchQuery *)getWildcardQueryWithNSString:(NSString *)field
                                                withNSString:(NSString *)termStr;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser *self, NSString *field, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser *new_OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *field, OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_INCLUDE_ALL")