//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/SrndTermQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/queryparser/surround/query/SimpleTerm.h"
#include "org/apache/lucene/queryparser/surround/query/SrndTermQuery.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery () {
 @public
  NSString *termText_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery, termText_, NSString *)

@implementation OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery

- (instancetype)initWithNSString:(NSString *)termText
                     withBoolean:(jboolean)quoted {
  OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_initWithNSString_withBoolean_(self, termText, quoted);
  return self;
}

- (NSString *)getTermText {
  return termText_;
}

- (OrgApacheLuceneIndexTerm *)getLuceneTermWithNSString:(NSString *)fieldName {
  return [new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(fieldName, [self getTermText]) autorelease];
}

- (NSString *)toStringUnquoted {
  return [self getTermText];
}

- (void)visitMatchingTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withNSString:(NSString *)fieldName
withOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor:(id<OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor>)mtv {
  OrgApacheLuceneIndexTerms *terms = OrgApacheLuceneIndexMultiFields_getTermsWithOrgApacheLuceneIndexIndexReader_withNSString_(reader, fieldName);
  if (terms != nil) {
    OrgApacheLuceneIndexTermsEnum *termsEnum = [terms iterator];
    OrgApacheLuceneIndexTermsEnum_SeekStatusEnum *status = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) seekCeilWithOrgApacheLuceneUtilBytesRef:[new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_([self getTermText]) autorelease]];
    if (status == JreLoadStatic(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum, FOUND)) {
      [((id<OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor>) nil_chk(mtv)) visitMatchingTermWithOrgApacheLuceneIndexTerm:[self getLuceneTermWithNSString:fieldName]];
    }
  }
}

- (void)dealloc {
  RELEASE_(termText_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withBoolean:", "SrndTermQuery", NULL, 0x1, NULL, NULL },
    { "getTermText", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getLuceneTermWithNSString:", "getLuceneTerm", "Lorg.apache.lucene.index.Term;", 0x1, NULL, NULL },
    { "toStringUnquoted", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "visitMatchingTermsWithOrgApacheLuceneIndexIndexReader:withNSString:withOrgApacheLuceneQueryparserSurroundQuerySimpleTerm_MatchingTermVisitor:", "visitMatchingTerms", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termText_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery = { 2, "SrndTermQuery", "org.apache.lucene.queryparser.surround.query", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery;
}

@end

void OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_initWithNSString_withBoolean_(OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery *self, NSString *termText, jboolean quoted) {
  OrgApacheLuceneQueryparserSurroundQuerySimpleTerm_initWithBoolean_(self, quoted);
  JreStrongAssign(&self->termText_, termText);
}

OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery *new_OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_initWithNSString_withBoolean_(NSString *termText, jboolean quoted) {
  OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery *self = [OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery alloc];
  OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery_initWithNSString_withBoolean_(self, termText, quoted);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQuerySrndTermQuery)