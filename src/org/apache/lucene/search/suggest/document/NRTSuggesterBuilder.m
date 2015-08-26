//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/NRTSuggesterBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Comparable.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/util/PriorityQueue.h"
#include "org/apache/lucene/search/suggest/document/NRTSuggester.h"
#include "org/apache/lucene/search/suggest/document/NRTSuggesterBuilder.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/IntsRefBuilder.h"
#include "org/apache/lucene/util/fst/Builder.h"
#include "org/apache/lucene/util/fst/ByteSequenceOutputs.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/PairOutputs.h"
#include "org/apache/lucene/util/fst/PositiveIntOutputs.h"
#include "org/apache/lucene/util/fst/Util.h"

@interface OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder () {
 @public
  OrgApacheLuceneUtilFstPairOutputs *outputs_;
  OrgApacheLuceneUtilFstBuilder *builder_;
  OrgApacheLuceneUtilIntsRefBuilder *scratchInts_;
  OrgApacheLuceneUtilBytesRefBuilder *analyzed_;
  JavaUtilPriorityQueue *entries_;
  jint payloadSep_;
  jint endByte_;
  jint maxAnalyzedPathsPerOutput_;
}

+ (jint)maxNumArcsForDedupByteWithInt:(jint)currentNumDedupBytes;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder, outputs_, OrgApacheLuceneUtilFstPairOutputs *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder, builder_, OrgApacheLuceneUtilFstBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder, scratchInts_, OrgApacheLuceneUtilIntsRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder, analyzed_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder, entries_, JavaUtilPriorityQueue *)

__attribute__((unused)) static jint OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_maxNumArcsForDedupByteWithInt_(jint currentNumDedupBytes);

@interface OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry : NSObject < JavaLangComparable > {
 @public
  OrgApacheLuceneUtilBytesRef *payload_;
  jlong weight_;
}

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload
                                           withLong:(jlong)weight;

- (jint)compareToWithId:(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry *)o;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry, payload_, OrgApacheLuceneUtilBytesRef *)

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry_initWithOrgApacheLuceneUtilBytesRef_withLong_(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry *self, OrgApacheLuceneUtilBytesRef *payload, jlong weight);

__attribute__((unused)) static OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry *new_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry_initWithOrgApacheLuceneUtilBytesRef_withLong_(OrgApacheLuceneUtilBytesRef *payload, jlong weight) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry)

@implementation OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder

- (instancetype)init {
  OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_init(self);
  return self;
}

- (void)startTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)analyzed {
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(self->analyzed_)) copyBytesWithOrgApacheLuceneUtilBytesRef:analyzed];
  [self->analyzed_ appendWithByte:(jbyte) endByte_];
}

- (void)addEntryWithInt:(jint)docID
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)surfaceForm
               withLong:(jlong)weight {
  OrgApacheLuceneUtilBytesRef *payloadRef = OrgApacheLuceneSearchSuggestDocumentNRTSuggester_PayLoadProcessor_makeWithOrgApacheLuceneUtilBytesRef_withInt_withInt_(surfaceForm, docID, payloadSep_);
  [((JavaUtilPriorityQueue *) nil_chk(entries_)) addWithId:[new_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry_initWithOrgApacheLuceneUtilBytesRef_withLong_(payloadRef, OrgApacheLuceneSearchSuggestDocumentNRTSuggester_encodeWithLong_(weight)) autorelease]];
}

- (void)finishTerm {
  jint numArcs = 0;
  jint numDedupBytes = 1;
  [analyzed_ growWithInt:[((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(analyzed_)) length] + 1];
  [analyzed_ setLengthWithInt:[analyzed_ length] + 1];
  for (OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry * __strong entry_ in nil_chk(entries_)) {
    if (numArcs == OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_maxNumArcsForDedupByteWithInt_(numDedupBytes)) {
      [analyzed_ setByteAtWithInt:[analyzed_ length] - 1 withByte:(jbyte) (numArcs)];
      [analyzed_ growWithInt:[analyzed_ length] + 1];
      [analyzed_ setLengthWithInt:[analyzed_ length] + 1];
      numArcs = 0;
      numDedupBytes++;
    }
    [analyzed_ setByteAtWithInt:[analyzed_ length] - 1 withByte:(jbyte) numArcs++];
    OrgApacheLuceneUtilFstUtil_toIntsRefWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilIntsRefBuilder_([analyzed_ get], scratchInts_);
    [((OrgApacheLuceneUtilFstBuilder *) nil_chk(builder_)) addWithOrgApacheLuceneUtilIntsRef:[((OrgApacheLuceneUtilIntsRefBuilder *) nil_chk(scratchInts_)) get] withId:[((OrgApacheLuceneUtilFstPairOutputs *) nil_chk(outputs_)) newPairWithId:JavaLangLong_valueOfWithLong_(((OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry *) nil_chk(entry_))->weight_) withId:entry_->payload_]];
  }
  maxAnalyzedPathsPerOutput_ = JavaLangMath_maxWithInt_withInt_(maxAnalyzedPathsPerOutput_, [entries_ size]);
  [entries_ clear];
}

- (jboolean)storeWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output {
  OrgApacheLuceneUtilFstFST *build = [((OrgApacheLuceneUtilFstBuilder *) nil_chk(builder_)) finish];
  if (build == nil) {
    return NO;
  }
  [((OrgApacheLuceneUtilFstFST *) nil_chk(build)) saveWithOrgApacheLuceneStoreDataOutput:output];
  JreAssert((maxAnalyzedPathsPerOutput_ > 0), (@"org/apache/lucene/search/suggest/document/NRTSuggesterBuilder.java:128 condition failed: assert maxAnalyzedPathsPerOutput > 0;"));
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(output)) writeVIntWithInt:maxAnalyzedPathsPerOutput_];
  [output writeVIntWithInt:OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_END_BYTE];
  [output writeVIntWithInt:OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_PAYLOAD_SEP];
  return YES;
}

+ (jint)maxNumArcsForDedupByteWithInt:(jint)currentNumDedupBytes {
  return OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_maxNumArcsForDedupByteWithInt_(currentNumDedupBytes);
}

- (void)dealloc {
  RELEASE_(outputs_);
  RELEASE_(builder_);
  RELEASE_(scratchInts_);
  RELEASE_(analyzed_);
  RELEASE_(entries_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NRTSuggesterBuilder", NULL, 0x1, NULL, NULL },
    { "startTermWithOrgApacheLuceneUtilBytesRef:", "startTerm", "V", 0x1, NULL, NULL },
    { "addEntryWithInt:withOrgApacheLuceneUtilBytesRef:withLong:", "addEntry", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "finishTerm", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "storeWithOrgApacheLuceneStoreDataOutput:", "store", "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "maxNumArcsForDedupByteWithInt:", "maxNumArcsForDedupByte", "I", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PAYLOAD_SEP", "PAYLOAD_SEP", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_PAYLOAD_SEP },
    { "END_BYTE", "END_BYTE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_END_BYTE },
    { "outputs_", NULL, 0x12, "Lorg.apache.lucene.util.fst.PairOutputs;", NULL, "Lorg/apache/lucene/util/fst/PairOutputs<Ljava/lang/Long;Lorg/apache/lucene/util/BytesRef;>;", .constantValue.asLong = 0 },
    { "builder_", NULL, 0x12, "Lorg.apache.lucene.util.fst.Builder;", NULL, "Lorg/apache/lucene/util/fst/Builder<Lorg/apache/lucene/util/fst/PairOutputs$Pair<Ljava/lang/Long;Lorg/apache/lucene/util/BytesRef;>;>;", .constantValue.asLong = 0 },
    { "scratchInts_", NULL, 0x12, "Lorg.apache.lucene.util.IntsRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "analyzed_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "entries_", NULL, 0x12, "Ljava.util.PriorityQueue;", NULL, "Ljava/util/PriorityQueue<Lorg/apache/lucene/search/suggest/document/NRTSuggesterBuilder$Entry;>;", .constantValue.asLong = 0 },
    { "payloadSep_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endByte_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxAnalyzedPathsPerOutput_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.suggest.document.NRTSuggesterBuilder$Entry;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder = { 2, "NRTSuggesterBuilder", "org.apache.lucene.search.suggest.document", NULL, 0x10, 6, methods, 10, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder;
}

@end

void OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_init(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->scratchInts_, new_OrgApacheLuceneUtilIntsRefBuilder_init());
  JreStrongAssignAndConsume(&self->analyzed_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  self->maxAnalyzedPathsPerOutput_ = 0;
  self->payloadSep_ = OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_PAYLOAD_SEP;
  self->endByte_ = OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_END_BYTE;
  JreStrongAssignAndConsume(&self->outputs_, new_OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstPositiveIntOutputs_getSingleton(), OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton()));
  JreStrongAssignAndConsume(&self->entries_, new_JavaUtilPriorityQueue_init());
  JreStrongAssignAndConsume(&self->builder_, new_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withOrgApacheLuceneUtilFstOutputs_(JreLoadStatic(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum, BYTE1), self->outputs_));
}

OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *new_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_init() {
  OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder *self = [OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder alloc];
  OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_init(self);
  return self;
}

jint OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_maxNumArcsForDedupByteWithInt_(jint currentNumDedupBytes) {
  OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_initialize();
  jint maxArcs = 1 + (2 * currentNumDedupBytes);
  if (currentNumDedupBytes > 5) {
    maxArcs *= currentNumDedupBytes;
  }
  return JavaLangMath_minWithInt_withInt_(maxArcs, 255);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder)

@implementation OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload
                                           withLong:(jlong)weight {
  OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry_initWithOrgApacheLuceneUtilBytesRef_withLong_(self, payload, weight);
  return self;
}

- (jint)compareToWithId:(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry *)o {
  check_class_cast(o, [OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry class]);
  return JavaLangLong_compareWithLong_withLong_(weight_, ((OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry *) nil_chk(o))->weight_);
}

- (void)dealloc {
  RELEASE_(payload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilBytesRef:withLong:", "Entry", NULL, 0x1, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "payload_", NULL, 0x10, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "weight_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry = { 2, "Entry", "org.apache.lucene.search.suggest.document", "NRTSuggesterBuilder", 0x1a, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/search/suggest/document/NRTSuggesterBuilder$Entry;>;" };
  return &_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry;
}

@end

void OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry_initWithOrgApacheLuceneUtilBytesRef_withLong_(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry *self, OrgApacheLuceneUtilBytesRef *payload, jlong weight) {
  NSObject_init(self);
  JreStrongAssign(&self->payload_, payload);
  self->weight_ = weight;
}

OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry *new_OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry_initWithOrgApacheLuceneUtilBytesRef_withLong_(OrgApacheLuceneUtilBytesRef *payload, jlong weight) {
  OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry *self = [OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry alloc];
  OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry_initWithOrgApacheLuceneUtilBytesRef_withLong_(self, payload, weight);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentNRTSuggesterBuilder_Entry)