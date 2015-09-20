//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene53/Lucene53NormsProducer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/NormsProducer.h"
#include "org/apache/lucene/codecs/lucene53/Lucene53NormsFormat.h"
#include "org/apache/lucene/codecs/lucene53/Lucene53NormsProducer.h"
#include "org/apache/lucene/index/CorruptIndexException.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/store/ChecksumIndexInput.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/RandomAccessInput.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer () {
 @public
  id<JavaUtilMap> norms_;
  OrgApacheLuceneStoreIndexInput *data_;
  jint maxDoc_;
}

- (void)readFieldsWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)meta
                  withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)infos;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer, norms_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer, data_, OrgApacheLuceneStoreIndexInput *)

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_readFieldsWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *self, OrgApacheLuceneStoreIndexInput *meta, OrgApacheLuceneIndexFieldInfos *infos);

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1 : OrgApacheLuceneIndexNumericDocValues {
 @public
  jlong val$value_;
}

- (jlong)getWithInt:(jint)docID;

- (instancetype)initWithLong:(jlong)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1)

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1_initWithLong_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1 *self, jlong capture$0);

__attribute__((unused)) static OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1_initWithLong_(jlong capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1)

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2 : OrgApacheLuceneIndexNumericDocValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> val$slice_;
}

- (jlong)getWithInt:(jint)docID;

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2, val$slice_, id<OrgApacheLuceneStoreRandomAccessInput>)

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2 *self, id<OrgApacheLuceneStoreRandomAccessInput> capture$0);

__attribute__((unused)) static OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2)

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3 : OrgApacheLuceneIndexNumericDocValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> val$slice_;
}

- (jlong)getWithInt:(jint)docID;

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3, val$slice_, id<OrgApacheLuceneStoreRandomAccessInput>)

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3 *self, id<OrgApacheLuceneStoreRandomAccessInput> capture$0);

__attribute__((unused)) static OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3)

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4 : OrgApacheLuceneIndexNumericDocValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> val$slice_;
}

- (jlong)getWithInt:(jint)docID;

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4, val$slice_, id<OrgApacheLuceneStoreRandomAccessInput>)

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4 *self, id<OrgApacheLuceneStoreRandomAccessInput> capture$0);

__attribute__((unused)) static OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4)

@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5 : OrgApacheLuceneIndexNumericDocValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> val$slice_;
}

- (jlong)getWithInt:(jint)docID;

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5, val$slice_, id<OrgApacheLuceneStoreRandomAccessInput>)

__attribute__((unused)) static void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5 *self, id<OrgApacheLuceneStoreRandomAccessInput> capture$0);

__attribute__((unused)) static OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5)

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer

- (instancetype)initWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state
                                                withNSString:(NSString *)dataCodec
                                                withNSString:(NSString *)dataExtension
                                                withNSString:(NSString *)metaCodec
                                                withNSString:(NSString *)metaExtension {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(self, state, dataCodec, dataExtension, metaCodec, metaExtension);
  return self;
}

- (void)readFieldsWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)meta
                  withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)infos {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_readFieldsWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneIndexFieldInfos_(self, meta, infos);
}

- (OrgApacheLuceneIndexNumericDocValues *)getNormsWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *entry_ = [((id<JavaUtilMap>) nil_chk(norms_)) getWithId:JavaLangInteger_valueOfWithInt_(((OrgApacheLuceneIndexFieldInfo *) nil_chk(field))->number_)];
  if (((OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *) nil_chk(entry_))->bytesPerValue_ == 0) {
    jlong value = entry_->offset_;
    return [new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1_initWithLong_(value) autorelease];
  }
  id<OrgApacheLuceneStoreRandomAccessInput> slice;
  @synchronized(data_) {
    switch (entry_->bytesPerValue_) {
      case 1:
      slice = [((OrgApacheLuceneStoreIndexInput *) nil_chk(data_)) randomAccessSliceWithLong:entry_->offset_ withLong:maxDoc_];
      return [new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
      case 2:
      slice = [((OrgApacheLuceneStoreIndexInput *) nil_chk(data_)) randomAccessSliceWithLong:entry_->offset_ withLong:maxDoc_ * 2LL];
      return [new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
      case 4:
      slice = [((OrgApacheLuceneStoreIndexInput *) nil_chk(data_)) randomAccessSliceWithLong:entry_->offset_ withLong:maxDoc_ * 4LL];
      return [new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
      case 8:
      slice = [((OrgApacheLuceneStoreIndexInput *) nil_chk(data_)) randomAccessSliceWithLong:entry_->offset_ withLong:maxDoc_ * 8LL];
      return [new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
      default:
      @throw [new_JavaLangAssertionError_init() autorelease];
    }
  }
}

- (void)close {
  [((OrgApacheLuceneStoreIndexInput *) nil_chk(data_)) close];
}

- (jlong)ramBytesUsed {
  return 64LL * [((id<JavaUtilMap>) nil_chk(norms_)) size];
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (void)checkIntegrity {
  OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(data_);
}

- (NSString *)description {
  return JreStrcat("$$IC", [[self getClass] getSimpleName], @"(fields=", [((id<JavaUtilMap>) nil_chk(norms_)) size], ')');
}

- (void)dealloc {
  RELEASE_(norms_);
  RELEASE_(data_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexSegmentReadState:withNSString:withNSString:withNSString:withNSString:", "Lucene53NormsProducer", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "readFieldsWithOrgApacheLuceneStoreIndexInput:withOrgApacheLuceneIndexFieldInfos:", "readFields", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "getNormsWithOrgApacheLuceneIndexFieldInfo:", "getNorms", "Lorg.apache.lucene.index.NumericDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "checkIntegrity", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "norms_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/lucene/codecs/lucene53/Lucene53NormsProducer$NormsEntry;>;", .constantValue.asLong = 0 },
    { "data_", NULL, 0x12, "Lorg.apache.lucene.store.IndexInput;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDoc_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.lucene53.Lucene53NormsProducer$NormsEntry;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53NormsProducer = { 2, "Lucene53NormsProducer", "org.apache.lucene.codecs.lucene53", NULL, 0x0, 8, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *self, OrgApacheLuceneIndexSegmentReadState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension) {
  OrgApacheLuceneCodecsNormsProducer_init(self);
  JreStrongAssignAndConsume(&self->norms_, new_JavaUtilHashMap_init());
  self->maxDoc_ = [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentReadState *) nil_chk(state))->segmentInfo_)) maxDoc];
  NSString *metaName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(state->segmentInfo_->name_, state->segmentSuffix_, metaExtension);
  jint version_ = -1;
  {
    OrgApacheLuceneStoreChecksumIndexInput *in = [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) openChecksumInputWithNSString:metaName withOrgApacheLuceneStoreIOContext:state->context_];
    JavaLangThrowable *__primaryException1 = nil;
    @try {
      JavaLangThrowable *priorE = nil;
      @try {
        version_ = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(in, metaCodec, OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_VERSION_START, OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
        OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_readFieldsWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneIndexFieldInfos_(self, in, state->fieldInfos_);
      }
      @catch (JavaLangThrowable *exception) {
        priorE = exception;
      }
      @finally {
        OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(in, priorE);
      }
    }
    @catch (JavaLangThrowable *e) {
      __primaryException1 = e;
      @throw e;
    }
    @finally {
      if (in != nil) {
        if (__primaryException1 != nil) {
          @try {
            [in close];
          } @catch (JavaLangThrowable *e) {
            [__primaryException1 addSuppressedWithJavaLangThrowable:e];
          }
        } else {
          [in close];
        }
      }
    }
  }
  NSString *dataName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(state->segmentInfo_->name_, state->segmentSuffix_, dataExtension);
  JreStrongAssign(&self->data_, [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) openInputWithNSString:dataName withOrgApacheLuceneStoreIOContext:state->context_]);
  jboolean success = false;
  @try {
    jint version2 = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(self->data_, dataCodec, OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_VERSION_START, OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
    if (version_ != version2) {
      @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I$I", @"Format versions mismatch: meta=", version_, @",data=", version2), self->data_) autorelease];
    }
    OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(self->data_);
    success = true;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ self->data_ } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexSegmentReadState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension) {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *self = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer alloc];
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(self, state, dataCodec, dataExtension, metaCodec, metaExtension);
  return self;
}

void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_readFieldsWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *self, OrgApacheLuceneStoreIndexInput *meta, OrgApacheLuceneIndexFieldInfos *infos) {
  jint fieldNumber = [((OrgApacheLuceneStoreIndexInput *) nil_chk(meta)) readVInt];
  while (fieldNumber != -1) {
    OrgApacheLuceneIndexFieldInfo *info = [((OrgApacheLuceneIndexFieldInfos *) nil_chk(infos)) fieldInfoWithInt:fieldNumber];
    if (info == nil) {
      @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I", @"Invalid field number: ", fieldNumber), meta) autorelease];
    }
    else if (![info hasNorms]) {
      @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$$", @"Invalid field: ", info->name_), meta) autorelease];
    }
    OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *entry_ = [new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init() autorelease];
    entry_->bytesPerValue_ = [meta readByte];
    switch (entry_->bytesPerValue_) {
      case 0:
      case 1:
      case 2:
      case 4:
      case 8:
      break;
      default:
      @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$B$$", @"Invalid bytesPerValue: ", entry_->bytesPerValue_, @", field: ", ((OrgApacheLuceneIndexFieldInfo *) nil_chk(info))->name_), meta) autorelease];
    }
    entry_->offset_ = [meta readLong];
    [((id<JavaUtilMap>) nil_chk(self->norms_)) putWithId:JavaLangInteger_valueOfWithInt_(((OrgApacheLuceneIndexFieldInfo *) nil_chk(info))->number_) withId:entry_];
    fieldNumber = [meta readVInt];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer)

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bytesPerValue_", NULL, 0x0, "B", NULL, NULL, .constantValue.asLong = 0 },
    { "offset_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry = { 2, "NormsEntry", "org.apache.lucene.codecs.lucene53", "Lucene53NormsProducer", 0x8, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *self) {
  NSObject_init(self);
}

OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init() {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry *self = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry alloc];
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry)

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1

- (jlong)getWithInt:(jint)docID {
  return val$value_;
}

- (instancetype)initWithLong:(jlong)capture$0 {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1_initWithLong_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "J", 0x1, NULL, NULL },
    { "initWithLong:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$value_", NULL, 0x1012, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneCodecsLucene53Lucene53NormsProducer", "getNormsWithOrgApacheLuceneIndexFieldInfo:" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1 = { 2, "", "org.apache.lucene.codecs.lucene53", "Lucene53NormsProducer", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1_initWithLong_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1 *self, jlong capture$0) {
  self->val$value_ = capture$0;
  OrgApacheLuceneIndexNumericDocValues_init(self);
}

OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1_initWithLong_(jlong capture$0) {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1 *self = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1 alloc];
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1_initWithLong_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$1)

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2

- (jlong)getWithInt:(jint)docID {
  @try {
    return [((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(val$slice_)) readByteWithLong:docID];
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)capture$0 {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2_initWithOrgApacheLuceneStoreRandomAccessInput_(self, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val$slice_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$slice_", NULL, 0x1012, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneCodecsLucene53Lucene53NormsProducer", "getNormsWithOrgApacheLuceneIndexFieldInfo:" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2 = { 2, "", "org.apache.lucene.codecs.lucene53", "Lucene53NormsProducer", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2 *self, id<OrgApacheLuceneStoreRandomAccessInput> capture$0) {
  JreStrongAssign(&self->val$slice_, capture$0);
  OrgApacheLuceneIndexNumericDocValues_init(self);
}

OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> capture$0) {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2 *self = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2 alloc];
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2_initWithOrgApacheLuceneStoreRandomAccessInput_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$2)

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3

- (jlong)getWithInt:(jint)docID {
  @try {
    return [((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(val$slice_)) readShortWithLong:JreLShift64(((jlong) docID), 1LL)];
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)capture$0 {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3_initWithOrgApacheLuceneStoreRandomAccessInput_(self, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val$slice_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$slice_", NULL, 0x1012, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneCodecsLucene53Lucene53NormsProducer", "getNormsWithOrgApacheLuceneIndexFieldInfo:" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3 = { 2, "", "org.apache.lucene.codecs.lucene53", "Lucene53NormsProducer", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3 *self, id<OrgApacheLuceneStoreRandomAccessInput> capture$0) {
  JreStrongAssign(&self->val$slice_, capture$0);
  OrgApacheLuceneIndexNumericDocValues_init(self);
}

OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> capture$0) {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3 *self = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3 alloc];
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3_initWithOrgApacheLuceneStoreRandomAccessInput_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$3)

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4

- (jlong)getWithInt:(jint)docID {
  @try {
    return [((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(val$slice_)) readIntWithLong:JreLShift64(((jlong) docID), 2LL)];
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)capture$0 {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4_initWithOrgApacheLuceneStoreRandomAccessInput_(self, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val$slice_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$slice_", NULL, 0x1012, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneCodecsLucene53Lucene53NormsProducer", "getNormsWithOrgApacheLuceneIndexFieldInfo:" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4 = { 2, "", "org.apache.lucene.codecs.lucene53", "Lucene53NormsProducer", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4 *self, id<OrgApacheLuceneStoreRandomAccessInput> capture$0) {
  JreStrongAssign(&self->val$slice_, capture$0);
  OrgApacheLuceneIndexNumericDocValues_init(self);
}

OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> capture$0) {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4 *self = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4 alloc];
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4_initWithOrgApacheLuceneStoreRandomAccessInput_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$4)

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5

- (jlong)getWithInt:(jint)docID {
  @try {
    return [((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(val$slice_)) readLongWithLong:JreLShift64(((jlong) docID), 3LL)];
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)capture$0 {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5_initWithOrgApacheLuceneStoreRandomAccessInput_(self, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val$slice_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$slice_", NULL, 0x1012, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneCodecsLucene53Lucene53NormsProducer", "getNormsWithOrgApacheLuceneIndexFieldInfo:" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5 = { 2, "", "org.apache.lucene.codecs.lucene53", "Lucene53NormsProducer", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5;
}

@end

void OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5 *self, id<OrgApacheLuceneStoreRandomAccessInput> capture$0) {
  JreStrongAssign(&self->val$slice_, capture$0);
  OrgApacheLuceneIndexNumericDocValues_init(self);
}

OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5 *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> capture$0) {
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5 *self = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5 alloc];
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5_initWithOrgApacheLuceneStoreRandomAccessInput_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_$5)
