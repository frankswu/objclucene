//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TopFieldDocs.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/TopDocs.h"
#include "org/apache/lucene/search/TopFieldDocs.h"

@implementation OrgApacheLuceneSearchTopFieldDocs

- (instancetype)initWithInt:(jint)totalHits
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)scoreDocs
withOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                  withFloat:(jfloat)maxScore {
  OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(self, totalHits, scoreDocs, fields, maxScore);
  return self;
}

- (void)dealloc {
  RELEASE_(fields_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withOrgApacheLuceneSearchScoreDocArray:withOrgApacheLuceneSearchSortFieldArray:withFloat:", "TopFieldDocs", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fields_", NULL, 0x1, "[Lorg.apache.lucene.search.SortField;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopFieldDocs = { 2, "TopFieldDocs", "org.apache.lucene.search", NULL, 0x1, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTopFieldDocs;
}

@end

void OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(OrgApacheLuceneSearchTopFieldDocs *self, jint totalHits, IOSObjectArray *scoreDocs, IOSObjectArray *fields, jfloat maxScore) {
  OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(self, totalHits, scoreDocs, maxScore);
  JreStrongAssign(&self->fields_, fields);
}

OrgApacheLuceneSearchTopFieldDocs *new_OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(jint totalHits, IOSObjectArray *scoreDocs, IOSObjectArray *fields, jfloat maxScore) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopFieldDocs, initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_, totalHits, scoreDocs, fields, maxScore)
}

OrgApacheLuceneSearchTopFieldDocs *create_OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(jint totalHits, IOSObjectArray *scoreDocs, IOSObjectArray *fields, jfloat maxScore) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopFieldDocs, initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_, totalHits, scoreDocs, fields, maxScore)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopFieldDocs)
