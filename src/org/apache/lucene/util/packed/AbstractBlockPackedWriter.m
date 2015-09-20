//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/AbstractBlockPackedWriter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/packed/AbstractBlockPackedWriter.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

@interface OrgApacheLuceneUtilPackedAbstractBlockPackedWriter ()

- (void)checkNotFinished;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_checkNotFinished(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *self);

@implementation OrgApacheLuceneUtilPackedAbstractBlockPackedWriter

+ (void)writeVLongWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                            withLong:(jlong)i {
  OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_writeVLongWithOrgApacheLuceneStoreDataOutput_withLong_(outArg, i);
}

- (instancetype)initWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                               withInt:(jint)blockSize {
  OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(self, outArg, blockSize);
  return self;
}

- (void)resetWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  JreAssert((outArg != nil), (@"org/apache/lucene/util/packed/AbstractBlockPackedWriter.java:63 condition failed: assert out != null;"));
  JreStrongAssign(&self->out_, outArg);
  off_ = 0;
  ord_ = 0LL;
  finished_ = false;
}

- (void)checkNotFinished {
  OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_checkNotFinished(self);
}

- (void)addWithLong:(jlong)l {
  OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_checkNotFinished(self);
  if (off_ == ((IOSLongArray *) nil_chk(values_))->size_) {
    [self flush];
  }
  *IOSLongArray_GetRef(values_, off_++) = l;
  ++ord_;
}

- (void)addBlockOfZeros {
  OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_checkNotFinished(self);
  if (off_ != 0 && off_ != ((IOSLongArray *) nil_chk(values_))->size_) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("I", off_)) autorelease];
  }
  if (off_ == ((IOSLongArray *) nil_chk(values_))->size_) {
    [self flush];
  }
  JavaUtilArrays_fillWithLongArray_withLong_(values_, 0);
  off_ = values_->size_;
  ord_ += values_->size_;
}

- (void)finish {
  OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_checkNotFinished(self);
  if (off_ > 0) {
    [self flush];
  }
  finished_ = true;
}

- (jlong)ord {
  return ord_;
}

- (void)flush {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)writeValuesWithInt:(jint)bitsRequired {
  id<OrgApacheLuceneUtilPackedPackedInts_Encoder> encoder = OrgApacheLuceneUtilPackedPackedInts_getEncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(JreLoadStatic(OrgApacheLuceneUtilPackedPackedInts_FormatEnum, PACKED), OrgApacheLuceneUtilPackedPackedInts_VERSION_CURRENT, bitsRequired);
  jint iterations = ((IOSLongArray *) nil_chk(values_))->size_ / [((id<OrgApacheLuceneUtilPackedPackedInts_Encoder>) nil_chk(encoder)) byteValueCount];
  jint blockSize = [encoder byteBlockCount] * iterations;
  if (blocks_ == nil || blocks_->size_ < blockSize) {
    JreStrongAssignAndConsume(&blocks_, [IOSByteArray newArrayWithLength:blockSize]);
  }
  if (off_ < values_->size_) {
    JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(values_, off_, values_->size_, 0LL);
  }
  [encoder encodeWithLongArray:values_ withInt:0 withByteArray:blocks_ withInt:0 withInt:iterations];
  jint blockCount = (jint) [((OrgApacheLuceneUtilPackedPackedInts_FormatEnum *) nil_chk(JreLoadStatic(OrgApacheLuceneUtilPackedPackedInts_FormatEnum, PACKED))) byteCountWithInt:OrgApacheLuceneUtilPackedPackedInts_VERSION_CURRENT withInt:off_ withInt:bitsRequired];
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(out_)) writeBytesWithByteArray:blocks_ withInt:blockCount];
}

- (void)dealloc {
  RELEASE_(out_);
  RELEASE_(values_);
  RELEASE_(blocks_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "writeVLongWithOrgApacheLuceneStoreDataOutput:withLong:", "writeVLong", "V", 0x8, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneStoreDataOutput:withInt:", "AbstractBlockPackedWriter", NULL, 0x1, NULL, NULL },
    { "resetWithOrgApacheLuceneStoreDataOutput:", "reset", "V", 0x1, NULL, NULL },
    { "checkNotFinished", NULL, "V", 0x2, NULL, NULL },
    { "addWithLong:", "add", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "addBlockOfZeros", NULL, "V", 0x0, "Ljava.io.IOException;", NULL },
    { "finish", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "ord", NULL, "J", 0x1, NULL, NULL },
    { "flush", NULL, "V", 0x404, "Ljava.io.IOException;", NULL },
    { "writeValuesWithInt:", "writeValues", "V", 0x14, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_BLOCK_SIZE", "MIN_BLOCK_SIZE", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MIN_BLOCK_SIZE },
    { "MAX_BLOCK_SIZE", "MAX_BLOCK_SIZE", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MAX_BLOCK_SIZE },
    { "MIN_VALUE_EQUALS_0", "MIN_VALUE_EQUALS_0", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MIN_VALUE_EQUALS_0 },
    { "BPV_SHIFT", "BPV_SHIFT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_BPV_SHIFT },
    { "out_", NULL, 0x4, "Lorg.apache.lucene.store.DataOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "values_", NULL, 0x14, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "blocks_", NULL, 0x4, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "off_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "ord_", NULL, 0x4, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "finished_", NULL, 0x4, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedAbstractBlockPackedWriter = { 2, "AbstractBlockPackedWriter", "org.apache.lucene.util.packed", NULL, 0x400, 10, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedAbstractBlockPackedWriter;
}

@end

void OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_writeVLongWithOrgApacheLuceneStoreDataOutput_withLong_(OrgApacheLuceneStoreDataOutput *outArg, jlong i) {
  OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_initialize();
  jint k = 0;
  while ((i & ~(jlong) 0x7FLL) != 0LL && k++ < 8) {
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeByteWithByte:(jbyte) ((i & (jlong) 0x7FLL) | (jlong) 0x80LL)];
    JreURShiftAssignLong(&i, 7);
  }
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeByteWithByte:(jbyte) i];
}

void OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *self, OrgApacheLuceneStoreDataOutput *outArg, jint blockSize) {
  NSObject_init(self);
  OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(blockSize, OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MIN_BLOCK_SIZE, OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_MAX_BLOCK_SIZE);
  [self resetWithOrgApacheLuceneStoreDataOutput:outArg];
  JreStrongAssignAndConsume(&self->values_, [IOSLongArray newArrayWithLength:blockSize]);
}

void OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_checkNotFinished(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *self) {
  if (self->finished_) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"Already finished") autorelease];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter)
