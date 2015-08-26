//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/blocktree/FieldReader.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/blocktree/BlockTreeTermsReader.h"
#include "org/apache/lucene/codecs/blocktree/FieldReader.h"
#include "org/apache/lucene/codecs/blocktree/IntersectTermsEnum.h"
#include "org/apache/lucene/codecs/blocktree/SegmentTermsEnum.h"
#include "org/apache/lucene/codecs/blocktree/Stats.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/store/ByteArrayDataInput.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/Accountable.h"
#include "org/apache/lucene/util/Accountables.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/ByteRunAutomaton.h"
#include "org/apache/lucene/util/automaton/CompiledAutomaton.h"
#include "org/apache/lucene/util/fst/ByteSequenceOutputs.h"
#include "org/apache/lucene/util/fst/FST.h"

static jlong OrgApacheLuceneCodecsBlocktreeFieldReader_BASE_RAM_BYTES_USED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeFieldReader, BASE_RAM_BYTES_USED_, jlong)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsBlocktreeFieldReader)

@implementation OrgApacheLuceneCodecsBlocktreeFieldReader

- (instancetype)initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader:(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *)parent
                                         withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                                                  withLong:(jlong)numTerms
                                           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)rootCode
                                                                  withLong:(jlong)sumTotalTermFreq
                                                                  withLong:(jlong)sumDocFreq
                                                                   withInt:(jint)docCount
                                                                  withLong:(jlong)indexStartFP
                                                                   withInt:(jint)longsSize
                                        withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)indexIn
                                           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)minTerm
                                           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)maxTerm {
  OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(self, parent, fieldInfo, numTerms, rootCode, sumTotalTermFreq, sumDocFreq, docCount, indexStartFP, longsSize, indexIn, minTerm, maxTerm);
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)getMin {
  if (minTerm_ == nil) {
    return [super getMin];
  }
  else {
    return minTerm_;
  }
}

- (OrgApacheLuceneUtilBytesRef *)getMax {
  if (maxTerm_ == nil) {
    return [super getMax];
  }
  else {
    return maxTerm_;
  }
}

- (OrgApacheLuceneCodecsBlocktreeStats *)getStats {
  return [((OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *) [new_OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_(self) autorelease]) computeBlockStats];
}

- (jboolean)hasFreqs {
  return [((OrgApacheLuceneIndexIndexOptionsEnum *) nil_chk([((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_)) getIndexOptions])) compareToWithId:JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS_AND_FREQS)] >= 0;
}

- (jboolean)hasOffsets {
  return [((OrgApacheLuceneIndexIndexOptionsEnum *) nil_chk([((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_)) getIndexOptions])) compareToWithId:JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS)] >= 0;
}

- (jboolean)hasPositions {
  return [((OrgApacheLuceneIndexIndexOptionsEnum *) nil_chk([((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_)) getIndexOptions])) compareToWithId:JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS_AND_FREQS_AND_POSITIONS)] >= 0;
}

- (jboolean)hasPayloads {
  return [((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo_)) hasPayloads];
}

- (OrgApacheLuceneIndexTermsEnum *)iterator {
  return [new_OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_(self) autorelease];
}

- (jlong)size {
  return numTerms_;
}

- (jlong)getSumTotalTermFreq {
  return sumTotalTermFreq_;
}

- (jlong)getSumDocFreq {
  return sumDocFreq_;
}

- (jint)getDocCount {
  return docCount_;
}

- (OrgApacheLuceneIndexTermsEnum *)intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:(OrgApacheLuceneUtilAutomatonCompiledAutomaton *)compiled
                                                              withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)startTerm {
  return [new_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonRunAutomaton_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withInt_(self, ((OrgApacheLuceneUtilAutomatonCompiledAutomaton *) nil_chk(compiled))->automaton_, compiled->runAutomaton_, compiled->commonSuffixRef_, startTerm, compiled->sinkState_) autorelease];
}

- (jlong)ramBytesUsed {
  return OrgApacheLuceneCodecsBlocktreeFieldReader_BASE_RAM_BYTES_USED_ + ((index_ != nil) ? [index_ ramBytesUsed] : 0);
}

- (id<JavaUtilCollection>)getChildResources {
  if (index_ == nil) {
    return JavaUtilCollections_emptyList();
  }
  else {
    return JavaUtilCollections_singletonWithId_(OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"term index", index_));
  }
}

- (NSString *)description {
  return JreStrcat("$J$J$J$IC", @"BlockTreeTerms(terms=", numTerms_, @",postings=", sumDocFreq_, @",positions=", sumTotalTermFreq_, @",docs=", docCount_, ')');
}

- (void)dealloc {
  RELEASE_(fieldInfo_);
  RELEASE_(rootCode_);
  RELEASE_(minTerm_);
  RELEASE_(maxTerm_);
  RELEASE_(index_);
  [super dealloc];
}

- (void)__javaClone {
  [super __javaClone];
  [parent_ release];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsBlocktreeFieldReader class]) {
    OrgApacheLuceneCodecsBlocktreeFieldReader_BASE_RAM_BYTES_USED_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(OrgApacheLuceneCodecsBlocktreeFieldReader_class_()) + 3 * OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(OrgApacheLuceneUtilBytesRef_class_());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsBlocktreeFieldReader)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader:withOrgApacheLuceneIndexFieldInfo:withLong:withOrgApacheLuceneUtilBytesRef:withLong:withLong:withInt:withLong:withInt:withOrgApacheLuceneStoreIndexInput:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:", "FieldReader", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "getMin", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "getMax", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "getStats", NULL, "Lorg.apache.lucene.codecs.blocktree.Stats;", 0x1, "Ljava.io.IOException;", NULL },
    { "hasFreqs", NULL, "Z", 0x1, NULL, NULL },
    { "hasOffsets", NULL, "Z", 0x1, NULL, NULL },
    { "hasPositions", NULL, "Z", 0x1, NULL, NULL },
    { "hasPayloads", NULL, "Z", 0x1, NULL, NULL },
    { "iterator", NULL, "Lorg.apache.lucene.index.TermsEnum;", 0x1, "Ljava.io.IOException;", NULL },
    { "size", NULL, "J", 0x1, NULL, NULL },
    { "getSumTotalTermFreq", NULL, "J", 0x1, NULL, NULL },
    { "getSumDocFreq", NULL, "J", 0x1, NULL, NULL },
    { "getDocCount", NULL, "I", 0x1, NULL, NULL },
    { "intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:withOrgApacheLuceneUtilBytesRef:", "intersect", "Lorg.apache.lucene.index.TermsEnum;", 0x1, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BASE_RAM_BYTES_USED_", NULL, 0x1a, "J", &OrgApacheLuceneCodecsBlocktreeFieldReader_BASE_RAM_BYTES_USED_, NULL, .constantValue.asLong = 0 },
    { "numTerms_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldInfo_", NULL, 0x10, "Lorg.apache.lucene.index.FieldInfo;", NULL, NULL, .constantValue.asLong = 0 },
    { "sumTotalTermFreq_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "sumDocFreq_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "docCount_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "indexStartFP_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "rootBlockFP_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "rootCode_", NULL, 0x10, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "minTerm_", NULL, 0x10, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxTerm_", NULL, 0x10, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "longsSize_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "parent_", NULL, 0x10, "Lorg.apache.lucene.codecs.blocktree.BlockTreeTermsReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "index_", NULL, 0x10, "Lorg.apache.lucene.util.fst.FST;", NULL, "Lorg/apache/lucene/util/fst/FST<Lorg/apache/lucene/util/BytesRef;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktreeFieldReader = { 2, "FieldReader", "org.apache.lucene.codecs.blocktree", NULL, 0x11, 17, methods, 14, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsBlocktreeFieldReader;
}

@end

void OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsBlocktreeFieldReader *self, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *parent, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong numTerms, OrgApacheLuceneUtilBytesRef *rootCode, jlong sumTotalTermFreq, jlong sumDocFreq, jint docCount, jlong indexStartFP, jint longsSize, OrgApacheLuceneStoreIndexInput *indexIn, OrgApacheLuceneUtilBytesRef *minTerm, OrgApacheLuceneUtilBytesRef *maxTerm) {
  OrgApacheLuceneIndexTerms_init(self);
  JreAssert((numTerms > 0), (@"org/apache/lucene/codecs/blocktree/FieldReader.java:72 condition failed: assert numTerms > 0;"));
  JreStrongAssign(&self->fieldInfo_, fieldInfo);
  self->parent_ = parent;
  self->numTerms_ = numTerms;
  self->sumTotalTermFreq_ = sumTotalTermFreq;
  self->sumDocFreq_ = sumDocFreq;
  self->docCount_ = docCount;
  self->indexStartFP_ = indexStartFP;
  JreStrongAssign(&self->rootCode_, rootCode);
  self->longsSize_ = longsSize;
  JreStrongAssign(&self->minTerm_, minTerm);
  JreStrongAssign(&self->maxTerm_, maxTerm);
  self->rootBlockFP_ = JreURShift64([((OrgApacheLuceneStoreByteArrayDataInput *) ([new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(((OrgApacheLuceneUtilBytesRef *) nil_chk(rootCode))->bytes_, rootCode->offset_, rootCode->length_) autorelease])) readVLong], OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_OUTPUT_FLAGS_NUM_BITS);
  if (indexIn != nil) {
    OrgApacheLuceneStoreIndexInput *clone = [indexIn clone];
    [((OrgApacheLuceneStoreIndexInput *) nil_chk(clone)) seekWithLong:indexStartFP];
    JreStrongAssignAndConsume(&self->index_, new_OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilFstOutputs_(clone, OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton()));
  }
  else {
    JreStrongAssign(&self->index_, nil);
  }
}

OrgApacheLuceneCodecsBlocktreeFieldReader *new_OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *parent, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong numTerms, OrgApacheLuceneUtilBytesRef *rootCode, jlong sumTotalTermFreq, jlong sumDocFreq, jint docCount, jlong indexStartFP, jint longsSize, OrgApacheLuceneStoreIndexInput *indexIn, OrgApacheLuceneUtilBytesRef *minTerm, OrgApacheLuceneUtilBytesRef *maxTerm) {
  OrgApacheLuceneCodecsBlocktreeFieldReader *self = [OrgApacheLuceneCodecsBlocktreeFieldReader alloc];
  OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(self, parent, fieldInfo, numTerms, rootCode, sumTotalTermFreq, sumDocFreq, docCount, indexStartFP, longsSize, indexIn, minTerm, maxTerm);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktreeFieldReader)