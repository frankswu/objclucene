//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked20.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked20.h"

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked20

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilPackedBulkOperationPacked20_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) (JreURShift64(block0, 44));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 24)) & 1048575LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 4)) & 1048575LL);
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block0 & 15LL), 16)) | (JreURShift64(block1, 48)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 28)) & 1048575LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 8)) & 1048575LL);
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block1 & 255LL), 12)) | (JreURShift64(block2, 52)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 32)) & 1048575LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 12)) & 1048575LL);
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block2 & 4095LL), 8)) | (JreURShift64(block3, 56)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 36)) & 1048575LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 16)) & 1048575LL);
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block3 & 65535LL), 4)) | (JreURShift64(block4, 60)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 40)) & 1048575LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 20)) & 1048575LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) (block4 & 1048575LL);
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jint byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    jint byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift32(byte0, 12)) | (JreLShift32(byte1, 4)) | (JreURShift32(byte2, 4));
    jint byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte2 & 15), 16)) | (JreLShift32(byte3, 8)) | byte4;
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift64(block0, 44);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 24)) & 1048575LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 4)) & 1048575LL;
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block0 & 15LL), 16)) | (JreURShift64(block1, 48));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 28)) & 1048575LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 8)) & 1048575LL;
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block1 & 255LL), 12)) | (JreURShift64(block2, 52));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 32)) & 1048575LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 12)) & 1048575LL;
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block2 & 4095LL), 8)) | (JreURShift64(block3, 56));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 36)) & 1048575LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 16)) & 1048575LL;
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block3 & 65535LL), 4)) | (JreURShift64(block4, 60));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 40)) & 1048575LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 20)) & 1048575LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = block4 & 1048575LL;
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong byte0 = IOSByteArray_Get(nil_chk(blocks), blocksOffset++) & (jint) 0xFF;
    jlong byte1 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift64(byte0, 12)) | (JreLShift64(byte1, 4)) | (JreURShift64(byte2, 4));
    jlong byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte2 & 15), 16)) | (JreLShift64(byte3, 8)) | byte4;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BulkOperationPacked20", NULL, 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked20 = { 2, "BulkOperationPacked20", "org.apache.lucene.util.packed", NULL, 0x10, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked20;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked20_init(OrgApacheLuceneUtilPackedBulkOperationPacked20 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(self, 20);
}

OrgApacheLuceneUtilPackedBulkOperationPacked20 *new_OrgApacheLuceneUtilPackedBulkOperationPacked20_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked20, init)
}

OrgApacheLuceneUtilPackedBulkOperationPacked20 *create_OrgApacheLuceneUtilPackedBulkOperationPacked20_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedBulkOperationPacked20, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked20)
