//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/MatchingReaders.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/codecs/compressing/MatchingReaders.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/MergeState.h"
#include "org/apache/lucene/util/InfoStream.h"

@implementation OrgApacheLuceneCodecsCompressingMatchingReaders

- (instancetype)initWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState {
  OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(self, mergeState);
  return self;
}

- (void)dealloc {
  RELEASE_(matchingReaders_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexMergeState:", "MatchingReaders", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "matchingReaders_", NULL, 0x10, "[Z", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingMatchingReaders = { 2, "MatchingReaders", "org.apache.lucene.codecs.compressing", NULL, 0x0, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingMatchingReaders;
}

@end

void OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(OrgApacheLuceneCodecsCompressingMatchingReaders *self, OrgApacheLuceneIndexMergeState *mergeState) {
  NSObject_init(self);
  jint numReaders = ((IOSIntArray *) nil_chk(((OrgApacheLuceneIndexMergeState *) nil_chk(mergeState))->maxDocs_))->size_;
  jint matchedCount = 0;
  JreStrongAssignAndConsume(&self->matchingReaders_, [IOSBooleanArray newArrayWithLength:numReaders]);
  for (jint i = 0; i < numReaders; i++) {
    {
      for (OrgApacheLuceneIndexFieldInfo * __strong fi in nil_chk(IOSObjectArray_Get(nil_chk(mergeState->fieldInfos_), i))) {
        OrgApacheLuceneIndexFieldInfo *other = [((OrgApacheLuceneIndexFieldInfos *) nil_chk(mergeState->mergeFieldInfos_)) fieldInfoWithInt:((OrgApacheLuceneIndexFieldInfo *) nil_chk(fi))->number_];
        if (other == nil || ![((NSString *) nil_chk(other->name_)) isEqual:fi->name_]) {
          goto continue_nextReader;
        }
      }
      *IOSBooleanArray_GetRef(self->matchingReaders_, i) = true;
      matchedCount++;
    }
    continue_nextReader: ;
  }
  self->count_ = matchedCount;
  if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(mergeState->infoStream_)) isEnabledWithNSString:@"SM"]) {
    [mergeState->infoStream_ messageWithNSString:@"SM" withNSString:JreStrcat("$I$I", @"merge store matchedCount=", self->count_, @" vs ", numReaders)];
    if (self->count_ != numReaders) {
      [mergeState->infoStream_ messageWithNSString:@"SM" withNSString:JreStrcat("I$", (numReaders - self->count_), @" non-bulk merges")];
    }
  }
}

OrgApacheLuceneCodecsCompressingMatchingReaders *new_OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(OrgApacheLuceneIndexMergeState *mergeState) {
  OrgApacheLuceneCodecsCompressingMatchingReaders *self = [OrgApacheLuceneCodecsCompressingMatchingReaders alloc];
  OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(self, mergeState);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingMatchingReaders)
