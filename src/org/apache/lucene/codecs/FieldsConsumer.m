//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/FieldsConsumer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/codecs/FieldsConsumer.h"
#include "org/apache/lucene/codecs/FieldsProducer.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/MappedMultiFields.h"
#include "org/apache/lucene/index/MergeState.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/index/ReaderSlice.h"

@implementation OrgApacheLuceneCodecsFieldsConsumer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsFieldsConsumer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)writeWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)mergeWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState {
  id<JavaUtilList> fields = create_JavaUtilArrayList_init();
  id<JavaUtilList> slices = create_JavaUtilArrayList_init();
  jint docBase = 0;
  for (jint readerIndex = 0; readerIndex < ((IOSObjectArray *) nil_chk(((OrgApacheLuceneIndexMergeState *) nil_chk(mergeState))->fieldsProducers_))->size_; readerIndex++) {
    OrgApacheLuceneCodecsFieldsProducer *f = IOSObjectArray_Get(mergeState->fieldsProducers_, readerIndex);
    jint maxDoc = IOSIntArray_Get(nil_chk(mergeState->maxDocs_), readerIndex);
    [((OrgApacheLuceneCodecsFieldsProducer *) nil_chk(f)) checkIntegrity];
    [slices addWithId:create_OrgApacheLuceneIndexReaderSlice_initWithInt_withInt_withInt_(docBase, maxDoc, readerIndex)];
    [fields addWithId:f];
    docBase += maxDoc;
  }
  OrgApacheLuceneIndexFields *mergedFields = create_OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(mergeState, create_OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_([fields toArrayWithNSObjectArray:JreLoadStatic(OrgApacheLuceneIndexFields, EMPTY_ARRAY)], [slices toArrayWithNSObjectArray:JreLoadStatic(OrgApacheLuceneIndexReaderSlice, EMPTY_ARRAY)]));
  [self writeWithOrgApacheLuceneIndexFields:mergedFields];
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FieldsConsumer", NULL, 0x4, NULL, NULL },
    { "writeWithOrgApacheLuceneIndexFields:", "write", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "mergeWithOrgApacheLuceneIndexMergeState:", "merge", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsFieldsConsumer = { 2, "FieldsConsumer", "org.apache.lucene.codecs", NULL, 0x401, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsFieldsConsumer;
}

@end

void OrgApacheLuceneCodecsFieldsConsumer_init(OrgApacheLuceneCodecsFieldsConsumer *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsFieldsConsumer)
