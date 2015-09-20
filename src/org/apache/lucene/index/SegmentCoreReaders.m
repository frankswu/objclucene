//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SegmentCoreReaders.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/Throwable.h"
#include "java/util/Collections.h"
#include "java/util/LinkedHashSet.h"
#include "java/util/Set.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "org/apache/lucene/codecs/Codec.h"
#include "org/apache/lucene/codecs/CompoundFormat.h"
#include "org/apache/lucene/codecs/FieldInfosFormat.h"
#include "org/apache/lucene/codecs/FieldsProducer.h"
#include "org/apache/lucene/codecs/NormsFormat.h"
#include "org/apache/lucene/codecs/NormsProducer.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/codecs/StoredFieldsFormat.h"
#include "org/apache/lucene/codecs/StoredFieldsReader.h"
#include "org/apache/lucene/codecs/TermVectorsFormat.h"
#include "org/apache/lucene/codecs/TermVectorsReader.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/SegmentCommitInfo.h"
#include "org/apache/lucene/index/SegmentCoreReaders.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/index/SegmentReader.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/util/CloseableThreadLocal.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneIndexSegmentCoreReaders () {
 @public
  JavaUtilConcurrentAtomicAtomicInteger *ref_;
  id<JavaUtilSet> coreClosedListeners_;
}

- (void)notifyCoreClosedListenersWithJavaLangThrowable:(JavaLangThrowable *)th;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, ref_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentCoreReaders, coreClosedListeners_, id<JavaUtilSet>)

__attribute__((unused)) static void OrgApacheLuceneIndexSegmentCoreReaders_notifyCoreClosedListenersWithJavaLangThrowable_(OrgApacheLuceneIndexSegmentCoreReaders *self, JavaLangThrowable *th);

@interface OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal () {
 @public
  __weak OrgApacheLuceneIndexSegmentCoreReaders *this$0_;
}

@end

@interface OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal () {
 @public
  __weak OrgApacheLuceneIndexSegmentCoreReaders *this$0_;
}

@end

@implementation OrgApacheLuceneIndexSegmentCoreReaders

- (instancetype)initWithOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)owner
                        withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)si
                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(self, owner, dir, si, context);
  return self;
}

- (jint)getRefCount {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ref_)) get];
}

- (void)incRef {
  jint count;
  while ((count = [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ref_)) get]) > 0) {
    if ([ref_ compareAndSetWithInt:count withInt:count + 1]) {
      return;
    }
  }
  @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"SegmentCoreReaders is already closed") autorelease];
}

- (void)decRef {
  if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ref_)) decrementAndGet] == 0) {
    JavaLangThrowable *th = nil;
    @try {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ termVectorsLocal_, fieldsReaderLocal_, fields_, termVectorsReaderOrig_, fieldsReaderOrig_, cfsReader_, normsProducer_ } count:7 type:JavaIoCloseable_class_()]);
    }
    @catch (JavaLangThrowable *throwable) {
      th = throwable;
    }
    @finally {
      OrgApacheLuceneIndexSegmentCoreReaders_notifyCoreClosedListenersWithJavaLangThrowable_(self, th);
    }
  }
}

- (void)notifyCoreClosedListenersWithJavaLangThrowable:(JavaLangThrowable *)th {
  OrgApacheLuceneIndexSegmentCoreReaders_notifyCoreClosedListenersWithJavaLangThrowable_(self, th);
}

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener {
  [((id<JavaUtilSet>) nil_chk(coreClosedListeners_)) addWithId:listener];
}

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener {
  [((id<JavaUtilSet>) nil_chk(coreClosedListeners_)) removeWithId:listener];
}

- (void)dealloc {
  RELEASE_(ref_);
  RELEASE_(fields_);
  RELEASE_(normsProducer_);
  RELEASE_(fieldsReaderOrig_);
  RELEASE_(termVectorsReaderOrig_);
  RELEASE_(cfsReader_);
  RELEASE_(coreFieldInfos_);
  RELEASE_(fieldsReaderLocal_);
  RELEASE_(termVectorsLocal_);
  RELEASE_(coreClosedListeners_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexSegmentReader:withOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexSegmentCommitInfo:withOrgApacheLuceneStoreIOContext:", "SegmentCoreReaders", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "getRefCount", NULL, "I", 0x0, NULL, NULL },
    { "incRef", NULL, "V", 0x0, NULL, NULL },
    { "decRef", NULL, "V", 0x0, "Ljava.io.IOException;", NULL },
    { "notifyCoreClosedListenersWithJavaLangThrowable:", "notifyCoreClosedListeners", "V", 0x2, NULL, NULL },
    { "addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:", "addCoreClosedListener", "V", 0x0, NULL, NULL },
    { "removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:", "removeCoreClosedListener", "V", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ref_", NULL, 0x12, "Ljava.util.concurrent.atomic.AtomicInteger;", NULL, NULL, .constantValue.asLong = 0 },
    { "fields_", NULL, 0x10, "Lorg.apache.lucene.codecs.FieldsProducer;", NULL, NULL, .constantValue.asLong = 0 },
    { "normsProducer_", NULL, 0x10, "Lorg.apache.lucene.codecs.NormsProducer;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldsReaderOrig_", NULL, 0x10, "Lorg.apache.lucene.codecs.StoredFieldsReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "termVectorsReaderOrig_", NULL, 0x10, "Lorg.apache.lucene.codecs.TermVectorsReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "cfsReader_", NULL, 0x10, "Lorg.apache.lucene.store.Directory;", NULL, NULL, .constantValue.asLong = 0 },
    { "coreFieldInfos_", NULL, 0x10, "Lorg.apache.lucene.index.FieldInfos;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldsReaderLocal_", NULL, 0x10, "Lorg.apache.lucene.util.CloseableThreadLocal;", NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Lorg/apache/lucene/codecs/StoredFieldsReader;>;", .constantValue.asLong = 0 },
    { "termVectorsLocal_", NULL, 0x10, "Lorg.apache.lucene.util.CloseableThreadLocal;", NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Lorg/apache/lucene/codecs/TermVectorsReader;>;", .constantValue.asLong = 0 },
    { "coreClosedListeners_", NULL, 0x12, "Ljava.util.Set;", NULL, "Ljava/util/Set<Lorg/apache/lucene/index/LeafReader$CoreClosedListener;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.SegmentCoreReaders$FieldsReaderLocal;", "Lorg.apache.lucene.index.SegmentCoreReaders$TermVectorsLocal;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSegmentCoreReaders = { 2, "SegmentCoreReaders", "org.apache.lucene.index", NULL, 0x10, 7, methods, 10, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexSegmentCoreReaders;
}

@end

void OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneIndexSegmentCoreReaders *self, OrgApacheLuceneIndexSegmentReader *owner, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexSegmentCommitInfo *si, OrgApacheLuceneStoreIOContext *context) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->ref_, new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1));
  JreStrongAssignAndConsume(&self->fieldsReaderLocal_, new_OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(self));
  JreStrongAssignAndConsume(&self->termVectorsLocal_, new_OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(self));
  JreStrongAssign(&self->coreClosedListeners_, JavaUtilCollections_synchronizedSetWithJavaUtilSet_([new_JavaUtilLinkedHashSet_init() autorelease]));
  OrgApacheLuceneCodecsCodec *codec = [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentCommitInfo *) nil_chk(si))->info_)) getCodec];
  OrgApacheLuceneStoreDirectory *cfsDir;
  jboolean success = false;
  @try {
    if ([si->info_ getUseCompoundFile]) {
      cfsDir = JreStrongAssign(&self->cfsReader_, [((OrgApacheLuceneCodecsCompoundFormat *) nil_chk([((OrgApacheLuceneCodecsCodec *) nil_chk(codec)) compoundFormat])) getCompoundReaderWithOrgApacheLuceneStoreDirectory:dir withOrgApacheLuceneIndexSegmentInfo:si->info_ withOrgApacheLuceneStoreIOContext:context]);
    }
    else {
      JreStrongAssign(&self->cfsReader_, nil);
      cfsDir = dir;
    }
    JreStrongAssign(&self->coreFieldInfos_, [((OrgApacheLuceneCodecsFieldInfosFormat *) nil_chk([((OrgApacheLuceneCodecsCodec *) nil_chk(codec)) fieldInfosFormat])) readWithOrgApacheLuceneStoreDirectory:cfsDir withOrgApacheLuceneIndexSegmentInfo:si->info_ withNSString:@"" withOrgApacheLuceneStoreIOContext:context]);
    OrgApacheLuceneIndexSegmentReadState *segmentReadState = [new_OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_(cfsDir, si->info_, self->coreFieldInfos_, context) autorelease];
    OrgApacheLuceneCodecsPostingsFormat *format = [codec postingsFormat];
    JreStrongAssign(&self->fields_, [((OrgApacheLuceneCodecsPostingsFormat *) nil_chk(format)) fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:segmentReadState]);
    JreAssert((self->fields_ != nil), (@"org/apache/lucene/index/SegmentCoreReaders.java:114 condition failed: assert fields != null;"));
    if ([((OrgApacheLuceneIndexFieldInfos *) nil_chk(self->coreFieldInfos_)) hasNorms]) {
      JreStrongAssign(&self->normsProducer_, [((OrgApacheLuceneCodecsNormsFormat *) nil_chk([codec normsFormat])) normsProducerWithOrgApacheLuceneIndexSegmentReadState:segmentReadState]);
      JreAssert((self->normsProducer_ != nil), (@"org/apache/lucene/index/SegmentCoreReaders.java:121 condition failed: assert normsProducer != null;"));
    }
    else {
      JreStrongAssign(&self->normsProducer_, nil);
    }
    JreStrongAssign(&self->fieldsReaderOrig_, [((OrgApacheLuceneCodecsStoredFieldsFormat *) nil_chk([((OrgApacheLuceneCodecsCodec *) nil_chk([si->info_ getCodec])) storedFieldsFormat])) fieldsReaderWithOrgApacheLuceneStoreDirectory:cfsDir withOrgApacheLuceneIndexSegmentInfo:si->info_ withOrgApacheLuceneIndexFieldInfos:self->coreFieldInfos_ withOrgApacheLuceneStoreIOContext:context]);
    if ([self->coreFieldInfos_ hasVectors]) {
      JreStrongAssign(&self->termVectorsReaderOrig_, [((OrgApacheLuceneCodecsTermVectorsFormat *) nil_chk([((OrgApacheLuceneCodecsCodec *) nil_chk([si->info_ getCodec])) termVectorsFormat])) vectorsReaderWithOrgApacheLuceneStoreDirectory:cfsDir withOrgApacheLuceneIndexSegmentInfo:si->info_ withOrgApacheLuceneIndexFieldInfos:self->coreFieldInfos_ withOrgApacheLuceneStoreIOContext:context]);
    }
    else {
      JreStrongAssign(&self->termVectorsReaderOrig_, nil);
    }
    success = true;
  }
  @finally {
    if (!success) {
      [self decRef];
    }
  }
}

OrgApacheLuceneIndexSegmentCoreReaders *new_OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneIndexSegmentReader *owner, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexSegmentCommitInfo *si, OrgApacheLuceneStoreIOContext *context) {
  OrgApacheLuceneIndexSegmentCoreReaders *self = [OrgApacheLuceneIndexSegmentCoreReaders alloc];
  OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(self, owner, dir, si, context);
  return self;
}

void OrgApacheLuceneIndexSegmentCoreReaders_notifyCoreClosedListenersWithJavaLangThrowable_(OrgApacheLuceneIndexSegmentCoreReaders *self, JavaLangThrowable *th) {
  @synchronized(self->coreClosedListeners_) {
    for (id<OrgApacheLuceneIndexLeafReader_CoreClosedListener> __strong listener in nil_chk(self->coreClosedListeners_)) {
      @try {
        [((id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>) nil_chk(listener)) onCloseWithId:self];
      }
      @catch (JavaLangThrowable *t) {
        if (th == nil) {
          th = t;
        }
        else {
          [th addSuppressedWithJavaLangThrowable:t];
        }
      }
    }
    OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(th);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSegmentCoreReaders)

@implementation OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal

- (OrgApacheLuceneCodecsStoredFieldsReader *)initialValue {
  return [((OrgApacheLuceneCodecsStoredFieldsReader *) nil_chk(this$0_->fieldsReaderOrig_)) clone];
}

- (instancetype)initWithOrgApacheLuceneIndexSegmentCoreReaders:(OrgApacheLuceneIndexSegmentCoreReaders *)outer$ {
  OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(self, outer$);
  return self;
}

- (void)__javaClone {
  [super __javaClone];
  [this$0_ release];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initialValue", NULL, "Lorg.apache.lucene.codecs.StoredFieldsReader;", 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneIndexSegmentCoreReaders:", "init", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.index.SegmentCoreReaders;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.codecs.StoredFieldsReader;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal = { 2, "FieldsReaderLocal", "org.apache.lucene.index", "SegmentCoreReaders", 0x0, 2, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Lorg/apache/lucene/codecs/StoredFieldsReader;>;" };
  return &_OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal;
}

@end

void OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal *self, OrgApacheLuceneIndexSegmentCoreReaders *outer$) {
  self->this$0_ = outer$;
  OrgApacheLuceneUtilCloseableThreadLocal_init(self);
}

OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal *new_OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders *outer$) {
  OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal *self = [OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal alloc];
  OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal)

@implementation OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal

- (OrgApacheLuceneCodecsTermVectorsReader *)initialValue {
  return (this$0_->termVectorsReaderOrig_ == nil) ? nil : [this$0_->termVectorsReaderOrig_ clone];
}

- (instancetype)initWithOrgApacheLuceneIndexSegmentCoreReaders:(OrgApacheLuceneIndexSegmentCoreReaders *)outer$ {
  OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(self, outer$);
  return self;
}

- (void)__javaClone {
  [super __javaClone];
  [this$0_ release];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initialValue", NULL, "Lorg.apache.lucene.codecs.TermVectorsReader;", 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneIndexSegmentCoreReaders:", "init", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.index.SegmentCoreReaders;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.codecs.TermVectorsReader;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal = { 2, "TermVectorsLocal", "org.apache.lucene.index", "SegmentCoreReaders", 0x0, 2, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Lorg/apache/lucene/codecs/TermVectorsReader;>;" };
  return &_OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal;
}

@end

void OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal *self, OrgApacheLuceneIndexSegmentCoreReaders *outer$) {
  self->this$0_ = outer$;
  OrgApacheLuceneUtilCloseableThreadLocal_init(self);
}

OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal *new_OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(OrgApacheLuceneIndexSegmentCoreReaders *outer$) {
  OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal *self = [OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal alloc];
  OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal)
