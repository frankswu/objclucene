//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/analyzing/AnalyzingQueryParser.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/Throwable.h"
#include "java/util/Locale.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/queryparser/analyzing/AnalyzingQueryParser.h"
#include "org/apache/lucene/queryparser/classic/ParseException.h"
#include "org/apache/lucene/queryparser/classic/QueryParser.h"
#include "org/apache/lucene/queryparser/classic/QueryParserBase.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/QueryBuilder.h"

@interface OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser () {
 @public
  JavaUtilRegexPattern *wildcardPattern_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser, wildcardPattern_, JavaUtilRegexPattern *)

@implementation OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(self, field, analyzer);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getWildcardQueryWithNSString:(NSString *)field
                                                withNSString:(NSString *)termStr {
  if (termStr == nil) {
    @throw [new_OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(@"Passed null value as term to getWildcardQuery") autorelease];
  }
  if (![self getAllowLeadingWildcard] && ([((NSString *) nil_chk(termStr)) hasPrefix:@"*"] || [termStr hasPrefix:@"?"])) {
    @throw [new_OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(@"'*' or '?' not allowed as first character in WildcardQuery unless getAllowLeadingWildcard() returns true") autorelease];
  }
  JavaUtilRegexMatcher *wildcardMatcher = [((JavaUtilRegexPattern *) nil_chk(wildcardPattern_)) matcherWithJavaLangCharSequence:termStr];
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  jint last = 0;
  while ([((JavaUtilRegexMatcher *) nil_chk(wildcardMatcher)) find]) {
    if ([wildcardMatcher groupWithInt:1] != nil) {
      continue;
    }
    if ([wildcardMatcher start] > 0) {
      NSString *chunk = [((NSString *) nil_chk(termStr)) substring:last endIndex:[wildcardMatcher start]];
      NSString *analyzed = [self analyzeSingleChunkWithNSString:field withNSString:termStr withNSString:chunk];
      [sb appendWithNSString:analyzed];
    }
    [sb appendWithNSString:[wildcardMatcher groupWithInt:2]];
    last = [wildcardMatcher end];
  }
  if (last < ((jint) [((NSString *) nil_chk(termStr)) length])) {
    [sb appendWithNSString:[self analyzeSingleChunkWithNSString:field withNSString:termStr withNSString:[termStr substring:last]]];
  }
  return [super getWildcardQueryWithNSString:field withNSString:[sb description]];
}

- (OrgApacheLuceneSearchQuery *)getPrefixQueryWithNSString:(NSString *)field
                                              withNSString:(NSString *)termStr {
  NSString *analyzed = [self analyzeSingleChunkWithNSString:field withNSString:termStr withNSString:termStr];
  return [super getPrefixQueryWithNSString:field withNSString:analyzed];
}

- (OrgApacheLuceneSearchQuery *)getFuzzyQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)termStr
                                                withFloat:(jfloat)minSimilarity {
  NSString *analyzed = [self analyzeSingleChunkWithNSString:field withNSString:termStr withNSString:termStr];
  return [super getFuzzyQueryWithNSString:field withNSString:analyzed withFloat:minSimilarity];
}

- (NSString *)analyzeSingleChunkWithNSString:(NSString *)field
                                withNSString:(NSString *)termStr
                                withNSString:(NSString *)chunk {
  NSString *analyzed = nil;
  @try {
    OrgApacheLuceneAnalysisTokenStream *stream = [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk([self getAnalyzer])) tokenStreamWithNSString:field withNSString:chunk];
    JavaLangThrowable *__primaryException1 = nil;
    @try {
      [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(stream)) reset];
      id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt = [stream getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
      if ([stream incrementToken]) {
        analyzed = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt)) description];
        JavaLangStringBuilder *multipleOutputs = nil;
        while ([stream incrementToken]) {
          if (nil == multipleOutputs) {
            multipleOutputs = [new_JavaLangStringBuilder_init() autorelease];
            [multipleOutputs appendWithChar:'"'];
            [multipleOutputs appendWithNSString:analyzed];
            [multipleOutputs appendWithChar:'"'];
          }
          [((JavaLangStringBuilder *) nil_chk(multipleOutputs)) appendWithChar:','];
          [multipleOutputs appendWithChar:'"'];
          [multipleOutputs appendWithNSString:[termAtt description]];
          [multipleOutputs appendWithChar:'"'];
        }
        [stream end];
        if (nil != multipleOutputs) {
          @throw [new_OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_([self getLocale], @"Analyzer created multiple terms for \"%s\": %s", [IOSObjectArray arrayWithObjects:(id[]){ chunk, [multipleOutputs description] } count:2 type:NSObject_class_()])) autorelease];
        }
      }
      else {
        [stream end];
        @throw [new_OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_([self getLocale], @"Analyzer returned nothing for \"%s\"", [IOSObjectArray arrayWithObjects:(id[]){ chunk } count:1 type:NSObject_class_()])) autorelease];
      }
    }
    @catch (JavaLangThrowable *e) {
      __primaryException1 = e;
      @throw e;
    }
    @finally {
      if (stream != nil) {
        if (__primaryException1 != nil) {
          @try {
            [stream close];
          } @catch (JavaLangThrowable *e) {
            [__primaryException1 addSuppressedWithJavaLangThrowable:e];
          }
        } else {
          [stream close];
        }
      }
    }
  }
  @catch (JavaIoIOException *e) {
    @throw [new_OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_([self getLocale], @"IO error while trying to analyze single term: \"%s\"", [IOSObjectArray arrayWithObjects:(id[]){ termStr } count:1 type:NSObject_class_()])) autorelease];
  }
  return analyzed;
}

- (void)dealloc {
  RELEASE_(wildcardPattern_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneAnalysisAnalyzer:", "AnalyzingQueryParser", NULL, 0x1, NULL, NULL },
    { "getWildcardQueryWithNSString:withNSString:", "getWildcardQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "getPrefixQueryWithNSString:withNSString:", "getPrefixQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "getFuzzyQueryWithNSString:withNSString:withFloat:", "getFuzzyQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "analyzeSingleChunkWithNSString:withNSString:withNSString:", "analyzeSingleChunk", "Ljava.lang.String;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "wildcardPattern_", NULL, 0x12, "Ljava.util.regex.Pattern;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser = { 2, "AnalyzingQueryParser", "org.apache.lucene.queryparser.analyzing", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser;
}

@end

void OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser *self, NSString *field, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserClassicQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(self, field, analyzer);
  JreStrongAssign(&self->wildcardPattern_, JavaUtilRegexPattern_compileWithNSString_(@"(\\.)|([?*]+)"));
  [self setAnalyzeRangeTermsWithBoolean:true];
}

OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser *new_OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *field, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser *self = [OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser alloc];
  OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(self, field, analyzer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserAnalyzingAnalyzingQueryParser)
