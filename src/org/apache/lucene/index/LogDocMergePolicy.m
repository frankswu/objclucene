//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/LogDocMergePolicy.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/LogDocMergePolicy.h"
#include "org/apache/lucene/index/LogMergePolicy.h"
#include "org/apache/lucene/index/SegmentCommitInfo.h"

@implementation OrgApacheLuceneIndexLogDocMergePolicy

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexLogDocMergePolicy_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)info
                   withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  return [self sizeDocsWithOrgApacheLuceneIndexSegmentCommitInfo:info withOrgApacheLuceneIndexIndexWriter:writer];
}

- (void)setMinMergeDocsWithInt:(jint)minMergeDocs {
  minMergeSize_ = minMergeDocs;
}

- (jint)getMinMergeDocs {
  return (jint) minMergeSize_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LogDocMergePolicy", NULL, 0x1, NULL, NULL },
    { "sizeWithOrgApacheLuceneIndexSegmentCommitInfo:withOrgApacheLuceneIndexIndexWriter:", "size", "J", 0x4, "Ljava.io.IOException;", NULL },
    { "setMinMergeDocsWithInt:", "setMinMergeDocs", "V", 0x1, NULL, NULL },
    { "getMinMergeDocs", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MIN_MERGE_DOCS", "DEFAULT_MIN_MERGE_DOCS", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexLogDocMergePolicy_DEFAULT_MIN_MERGE_DOCS },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexLogDocMergePolicy = { 2, "LogDocMergePolicy", "org.apache.lucene.index", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexLogDocMergePolicy;
}

@end

void OrgApacheLuceneIndexLogDocMergePolicy_init(OrgApacheLuceneIndexLogDocMergePolicy *self) {
  OrgApacheLuceneIndexLogMergePolicy_init(self);
  self->minMergeSize_ = OrgApacheLuceneIndexLogDocMergePolicy_DEFAULT_MIN_MERGE_DOCS;
  self->maxMergeSize_ = JavaLangLong_MAX_VALUE;
  self->maxMergeSizeForForcedMerge_ = JavaLangLong_MAX_VALUE;
}

OrgApacheLuceneIndexLogDocMergePolicy *new_OrgApacheLuceneIndexLogDocMergePolicy_init() {
  OrgApacheLuceneIndexLogDocMergePolicy *self = [OrgApacheLuceneIndexLogDocMergePolicy alloc];
  OrgApacheLuceneIndexLogDocMergePolicy_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexLogDocMergePolicy)
