//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/query/RewriteQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/queryparser/surround/query/BasicQueryFactory.h"
#include "org/apache/lucene/queryparser/surround/query/RewriteQuery.h"
#include "org/apache/lucene/queryparser/surround/query/SrndQuery.h"
#include "org/apache/lucene/search/Query.h"

@implementation OrgApacheLuceneQueryparserSurroundQueryRewriteQuery

- (instancetype)initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:(OrgApacheLuceneQueryparserSurroundQuerySrndQuery *)srndQuery
                                                            withNSString:(NSString *)fieldName
            withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:(OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *)qf {
  OrgApacheLuceneQueryparserSurroundQueryRewriteQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(self, srndQuery, fieldName, qf);
  return self;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$$C$$$$$C", [[self getClass] getName], ([((NSString *) nil_chk(field)) isEmpty] ? @"" : JreStrcat("$$C", @"(unused: ", field, ')')), '(', fieldName_, @", ", [((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk(srndQuery_)) description], @", ", [((OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *) nil_chk(qf_)) description], ')');
}

- (NSUInteger)hash {
  return ((jint) [super hash]) ^ ((jint) [((NSString *) nil_chk(fieldName_)) hash]) ^ ((jint) [((OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *) nil_chk(qf_)) hash]) ^ ((jint) [((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk(srndQuery_)) hash]);
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) return false;
  if (![[self getClass] isEqual:[obj getClass]]) return false;
  OrgApacheLuceneQueryparserSurroundQueryRewriteQuery *other = (OrgApacheLuceneQueryparserSurroundQueryRewriteQuery *) cast_chk(obj, [OrgApacheLuceneQueryparserSurroundQueryRewriteQuery class]);
  return [super isEqual:obj] && [((NSString *) nil_chk(fieldName_)) isEqual:other->fieldName_] && [((OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *) nil_chk(qf_)) isEqual:other->qf_] && [((OrgApacheLuceneQueryparserSurroundQuerySrndQuery *) nil_chk(srndQuery_)) isEqual:other->srndQuery_];
}

- (void)dealloc {
  RELEASE_(srndQuery_);
  RELEASE_(fieldName_);
  RELEASE_(qf_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery:withNSString:withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory:", "RewriteQuery", NULL, 0x0, NULL, "(TSQ;Ljava/lang/String;Lorg/apache/lucene/queryparser/surround/query/BasicQueryFactory;)V" },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x401, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "srndQuery_", NULL, 0x14, "TSQ;", NULL, "TSQ;", .constantValue.asLong = 0 },
    { "fieldName_", NULL, 0x14, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "qf_", NULL, 0x14, "Lorg.apache.lucene.queryparser.surround.query.BasicQueryFactory;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundQueryRewriteQuery = { 2, "RewriteQuery", "org.apache.lucene.queryparser.surround.query", NULL, 0x400, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, "<SQ:Lorg/apache/lucene/queryparser/surround/query/SrndQuery;>Lorg/apache/lucene/search/Query;" };
  return &_OrgApacheLuceneQueryparserSurroundQueryRewriteQuery;
}

@end

void OrgApacheLuceneQueryparserSurroundQueryRewriteQuery_initWithOrgApacheLuceneQueryparserSurroundQuerySrndQuery_withNSString_withOrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory_(OrgApacheLuceneQueryparserSurroundQueryRewriteQuery *self, OrgApacheLuceneQueryparserSurroundQuerySrndQuery *srndQuery, NSString *fieldName, OrgApacheLuceneQueryparserSurroundQueryBasicQueryFactory *qf) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->srndQuery_, srndQuery);
  JreStrongAssign(&self->fieldName_, fieldName);
  JreStrongAssign(&self->qf_, qf);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundQueryRewriteQuery)
