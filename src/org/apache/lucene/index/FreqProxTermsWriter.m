//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FreqProxTermsWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/Codec.h"
#include "org/apache/lucene/codecs/FieldsConsumer.h"
#include "org/apache/lucene/codecs/LiveDocsFormat.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/index/BufferedUpdates.h"
#include "org/apache/lucene/index/DocumentsWriterPerThread.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/FreqProxFields.h"
#include "org/apache/lucene/index/FreqProxTermsWriter.h"
#include "org/apache/lucene/index/FreqProxTermsWriterPerField.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/index/TermsHash.h"
#include "org/apache/lucene/index/TermsHashPerField.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefHash.h"
#include "org/apache/lucene/util/CollectionUtil.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/MutableBits.h"

@interface OrgApacheLuceneIndexFreqProxTermsWriter ()

- (void)applyDeletesWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                               withOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexFreqProxTermsWriter_applyDeletesWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFields_(OrgApacheLuceneIndexFreqProxTermsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFields *fields);

@implementation OrgApacheLuceneIndexFreqProxTermsWriter

- (instancetype)initWithOrgApacheLuceneIndexDocumentsWriterPerThread:(OrgApacheLuceneIndexDocumentsWriterPerThread *)docWriter
                                   withOrgApacheLuceneIndexTermsHash:(OrgApacheLuceneIndexTermsHash *)termVectors {
  OrgApacheLuceneIndexFreqProxTermsWriter_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withOrgApacheLuceneIndexTermsHash_(self, docWriter, termVectors);
  return self;
}

- (void)applyDeletesWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                               withOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)fields {
  OrgApacheLuceneIndexFreqProxTermsWriter_applyDeletesWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFields_(self, state, fields);
}

- (void)flushWithJavaUtilMap:(id<JavaUtilMap>)fieldsToFlush
withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  [super flushWithJavaUtilMap:fieldsToFlush withOrgApacheLuceneIndexSegmentWriteState:state];
  id<JavaUtilList> allFields = [new_JavaUtilArrayList_init() autorelease];
  for (OrgApacheLuceneIndexTermsHashPerField * __strong f in nil_chk([((id<JavaUtilMap>) nil_chk(fieldsToFlush)) values])) {
    OrgApacheLuceneIndexFreqProxTermsWriterPerField *perField = (OrgApacheLuceneIndexFreqProxTermsWriterPerField *) check_class_cast(f, [OrgApacheLuceneIndexFreqProxTermsWriterPerField class]);
    if ([((OrgApacheLuceneUtilBytesRefHash *) nil_chk(((OrgApacheLuceneIndexFreqProxTermsWriterPerField *) nil_chk(perField))->bytesHash_)) size] > 0) {
      [perField sortPostings];
      JreAssert(([((OrgApacheLuceneIndexFieldInfo *) nil_chk(perField->fieldInfo_)) getIndexOptions] != JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, NONE)), (@"org/apache/lucene/index/FreqProxTermsWriter.java:92 condition failed: assert perField.fieldInfo.getIndexOptions() != IndexOptions.NONE;"));
      [allFields addWithId:perField];
    }
  }
  OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_(allFields);
  OrgApacheLuceneIndexFields *fields = [new_OrgApacheLuceneIndexFreqProxFields_initWithJavaUtilList_(allFields) autorelease];
  OrgApacheLuceneIndexFreqProxTermsWriter_applyDeletesWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFields_(self, state, fields);
  OrgApacheLuceneCodecsFieldsConsumer *consumer = [((OrgApacheLuceneCodecsPostingsFormat *) nil_chk([((OrgApacheLuceneCodecsCodec *) nil_chk([((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_)) getCodec])) postingsFormat])) fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:state];
  jboolean success = false;
  @try {
    [((OrgApacheLuceneCodecsFieldsConsumer *) nil_chk(consumer)) writeWithOrgApacheLuceneIndexFields:fields];
    success = true;
  }
  @finally {
    if (success) {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ consumer } count:1 type:JavaIoCloseable_class_()]);
    }
    else {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ consumer } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

- (OrgApacheLuceneIndexTermsHashPerField *)addFieldWithOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)invertState
                                                          withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  return [new_OrgApacheLuceneIndexFreqProxTermsWriterPerField_initWithOrgApacheLuceneIndexFieldInvertState_withOrgApacheLuceneIndexTermsHash_withOrgApacheLuceneIndexFieldInfo_withOrgApacheLuceneIndexTermsHashPerField_(invertState, self, fieldInfo, [((OrgApacheLuceneIndexTermsHash *) nil_chk(nextTermsHash_)) addFieldWithOrgApacheLuceneIndexFieldInvertState:invertState withOrgApacheLuceneIndexFieldInfo:fieldInfo]) autorelease];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexDocumentsWriterPerThread:withOrgApacheLuceneIndexTermsHash:", "FreqProxTermsWriter", NULL, 0x1, NULL, NULL },
    { "applyDeletesWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneIndexFields:", "applyDeletes", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "flushWithJavaUtilMap:withOrgApacheLuceneIndexSegmentWriteState:", "flush", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "addFieldWithOrgApacheLuceneIndexFieldInvertState:withOrgApacheLuceneIndexFieldInfo:", "addField", "Lorg.apache.lucene.index.TermsHashPerField;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFreqProxTermsWriter = { 2, "FreqProxTermsWriter", "org.apache.lucene.index", NULL, 0x10, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFreqProxTermsWriter;
}

@end

void OrgApacheLuceneIndexFreqProxTermsWriter_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withOrgApacheLuceneIndexTermsHash_(OrgApacheLuceneIndexFreqProxTermsWriter *self, OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter, OrgApacheLuceneIndexTermsHash *termVectors) {
  OrgApacheLuceneIndexTermsHash_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withBoolean_withOrgApacheLuceneIndexTermsHash_(self, docWriter, true, termVectors);
}

OrgApacheLuceneIndexFreqProxTermsWriter *new_OrgApacheLuceneIndexFreqProxTermsWriter_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withOrgApacheLuceneIndexTermsHash_(OrgApacheLuceneIndexDocumentsWriterPerThread *docWriter, OrgApacheLuceneIndexTermsHash *termVectors) {
  OrgApacheLuceneIndexFreqProxTermsWriter *self = [OrgApacheLuceneIndexFreqProxTermsWriter alloc];
  OrgApacheLuceneIndexFreqProxTermsWriter_initWithOrgApacheLuceneIndexDocumentsWriterPerThread_withOrgApacheLuceneIndexTermsHash_(self, docWriter, termVectors);
  return self;
}

void OrgApacheLuceneIndexFreqProxTermsWriter_applyDeletesWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFields_(OrgApacheLuceneIndexFreqProxTermsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFields *fields) {
  if (((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segUpdates_ != nil && [((id<JavaUtilMap>) nil_chk(state->segUpdates_->terms_)) size] > 0) {
    id<JavaUtilMap> segDeletes = state->segUpdates_->terms_;
    id<JavaUtilList> deleteTerms = [new_JavaUtilArrayList_initWithJavaUtilCollection_([segDeletes keySet]) autorelease];
    JavaUtilCollections_sortWithJavaUtilList_(deleteTerms);
    NSString *lastField = nil;
    OrgApacheLuceneIndexTermsEnum *termsEnum = nil;
    OrgApacheLuceneIndexPostingsEnum *postingsEnum = nil;
    for (OrgApacheLuceneIndexTerm * __strong deleteTerm in deleteTerms) {
      if ([((NSString *) nil_chk([((OrgApacheLuceneIndexTerm *) nil_chk(deleteTerm)) field])) isEqual:lastField] == false) {
        lastField = [deleteTerm field];
        OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexFields *) nil_chk(fields)) termsWithNSString:lastField];
        if (terms != nil) {
          termsEnum = [terms iterator];
        }
        else {
          termsEnum = nil;
        }
      }
      if (termsEnum != nil && [termsEnum seekExactWithOrgApacheLuceneUtilBytesRef:[deleteTerm bytes]]) {
        postingsEnum = [termsEnum postingsWithOrgApacheLuceneIndexPostingsEnum:postingsEnum withInt:0];
        jint delDocLimit = [((JavaLangInteger *) nil_chk([segDeletes getWithId:deleteTerm])) intValue];
        JreAssert((delDocLimit < OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS), (@"org/apache/lucene/index/FreqProxTermsWriter.java:61 condition failed: assert delDocLimit < PostingsEnum.NO_MORE_DOCS;"));
        while (true) {
          jint doc = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postingsEnum)) nextDoc];
          if (doc < delDocLimit) {
            if (state->liveDocs_ == nil) {
              JreStrongAssign(&state->liveDocs_, [((OrgApacheLuceneCodecsLiveDocsFormat *) nil_chk([((OrgApacheLuceneCodecsCodec *) nil_chk([((OrgApacheLuceneIndexSegmentInfo *) nil_chk(state->segmentInfo_)) getCodec])) liveDocsFormat])) newLiveDocsWithInt:[state->segmentInfo_ maxDoc]]);
            }
            if ([((id<OrgApacheLuceneUtilMutableBits>) nil_chk(state->liveDocs_)) getWithInt:doc]) {
              state->delCountOnFlush_++;
              [state->liveDocs_ clearWithInt:doc];
            }
          }
          else {
            break;
          }
        }
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFreqProxTermsWriter)
