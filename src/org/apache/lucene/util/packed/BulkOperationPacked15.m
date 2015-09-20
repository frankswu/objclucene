//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked15.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked15.h"

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked15

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilPackedBulkOperationPacked15_init(self);
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
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) (JreURShift64(block0, 49));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 34)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 19)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block0, 4)) & 32767LL);
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block0 & 15LL), 11)) | (JreURShift64(block1, 53)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 38)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 23)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block1, 8)) & 32767LL);
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block1 & 255LL), 7)) | (JreURShift64(block2, 57)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 42)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 27)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block2, 12)) & 32767LL);
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block2 & 4095LL), 3)) | (JreURShift64(block3, 61)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 46)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 31)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 16)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block3, 1)) & 32767LL);
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block3 & 1LL), 14)) | (JreURShift64(block4, 50)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 35)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 20)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block4, 5)) & 32767LL);
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block4 & 31LL), 10)) | (JreURShift64(block5, 54)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 39)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 24)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block5, 9)) & 32767LL);
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block5 & 511LL), 6)) | (JreURShift64(block6, 58)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 43)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 28)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block6, 13)) & 32767LL);
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block6 & 8191LL), 2)) | (JreURShift64(block7, 62)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 47)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 32)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 17)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block7, 2)) & 32767LL);
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block7 & 3LL), 13)) | (JreURShift64(block8, 51)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 36)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 21)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block8, 6)) & 32767LL);
    jlong block9 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block8 & 63LL), 9)) | (JreURShift64(block9, 55)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 40)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 25)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block9, 10)) & 32767LL);
    jlong block10 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block9 & 1023LL), 5)) | (JreURShift64(block10, 59)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 44)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 29)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block10, 14)) & 32767LL);
    jlong block11 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block10 & 16383LL), 1)) | (JreURShift64(block11, 63)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 48)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 33)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 18)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block11, 3)) & 32767LL);
    jlong block12 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block11 & 7LL), 12)) | (JreURShift64(block12, 52)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block12, 37)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block12, 22)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block12, 7)) & 32767LL);
    jlong block13 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block12 & 127LL), 8)) | (JreURShift64(block13, 56)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block13, 41)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block13, 26)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block13, 11)) & 32767LL);
    jlong block14 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreLShift64((block13 & 2047LL), 4)) | (JreURShift64(block14, 60)));
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block14, 45)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block14, 30)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) ((JreURShift64(block14, 15)) & 32767LL);
    *IOSIntArray_GetRef(values, valuesOffset++) = (jint) (block14 & 32767LL);
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
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift32(byte0, 7)) | (JreURShift32(byte1, 1));
    jint byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte1 & 1), 14)) | (JreLShift32(byte2, 6)) | (JreURShift32(byte3, 2));
    jint byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte3 & 3), 13)) | (JreLShift32(byte4, 5)) | (JreURShift32(byte5, 3));
    jint byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte5 & 7), 12)) | (JreLShift32(byte6, 4)) | (JreURShift32(byte7, 4));
    jint byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte9 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte7 & 15), 11)) | (JreLShift32(byte8, 3)) | (JreURShift32(byte9, 5));
    jint byte10 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte11 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte9 & 31), 10)) | (JreLShift32(byte10, 2)) | (JreURShift32(byte11, 6));
    jint byte12 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jint byte13 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte11 & 63), 9)) | (JreLShift32(byte12, 1)) | (JreURShift32(byte13, 7));
    jint byte14 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreLShift32((byte13 & 127), 8)) | byte14;
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block0 = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = JreURShift64(block0, 49);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 34)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 19)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block0, 4)) & 32767LL;
    jlong block1 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block0 & 15LL), 11)) | (JreURShift64(block1, 53));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 38)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 23)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block1, 8)) & 32767LL;
    jlong block2 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block1 & 255LL), 7)) | (JreURShift64(block2, 57));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 42)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 27)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block2, 12)) & 32767LL;
    jlong block3 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block2 & 4095LL), 3)) | (JreURShift64(block3, 61));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 46)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 31)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 16)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block3, 1)) & 32767LL;
    jlong block4 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block3 & 1LL), 14)) | (JreURShift64(block4, 50));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 35)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 20)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block4, 5)) & 32767LL;
    jlong block5 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block4 & 31LL), 10)) | (JreURShift64(block5, 54));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 39)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 24)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block5, 9)) & 32767LL;
    jlong block6 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block5 & 511LL), 6)) | (JreURShift64(block6, 58));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 43)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 28)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block6, 13)) & 32767LL;
    jlong block7 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block6 & 8191LL), 2)) | (JreURShift64(block7, 62));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 47)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 32)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 17)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block7, 2)) & 32767LL;
    jlong block8 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block7 & 3LL), 13)) | (JreURShift64(block8, 51));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 36)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 21)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block8, 6)) & 32767LL;
    jlong block9 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block8 & 63LL), 9)) | (JreURShift64(block9, 55));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 40)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 25)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block9, 10)) & 32767LL;
    jlong block10 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block9 & 1023LL), 5)) | (JreURShift64(block10, 59));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 44)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 29)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block10, 14)) & 32767LL;
    jlong block11 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block10 & 16383LL), 1)) | (JreURShift64(block11, 63));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 48)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 33)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 18)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block11, 3)) & 32767LL;
    jlong block12 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block11 & 7LL), 12)) | (JreURShift64(block12, 52));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block12, 37)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block12, 22)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block12, 7)) & 32767LL;
    jlong block13 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block12 & 127LL), 8)) | (JreURShift64(block13, 56));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block13, 41)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block13, 26)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block13, 11)) & 32767LL;
    jlong block14 = IOSLongArray_Get(blocks, blocksOffset++);
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((block13 & 2047LL), 4)) | (JreURShift64(block14, 60));
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block14, 45)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block14, 30)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift64(block14, 15)) & 32767LL;
    *IOSLongArray_GetRef(values, valuesOffset++) = block14 & 32767LL;
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
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreLShift64(byte0, 7)) | (JreURShift64(byte1, 1));
    jlong byte2 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte3 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte1 & 1), 14)) | (JreLShift64(byte2, 6)) | (JreURShift64(byte3, 2));
    jlong byte4 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte5 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte3 & 3), 13)) | (JreLShift64(byte4, 5)) | (JreURShift64(byte5, 3));
    jlong byte6 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte7 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte5 & 7), 12)) | (JreLShift64(byte6, 4)) | (JreURShift64(byte7, 4));
    jlong byte8 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte9 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte7 & 15), 11)) | (JreLShift64(byte8, 3)) | (JreURShift64(byte9, 5));
    jlong byte10 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte11 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte9 & 31), 10)) | (JreLShift64(byte10, 2)) | (JreURShift64(byte11, 6));
    jlong byte12 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    jlong byte13 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte11 & 63), 9)) | (JreLShift64(byte12, 1)) | (JreURShift64(byte13, 7));
    jlong byte14 = IOSByteArray_Get(blocks, blocksOffset++) & (jint) 0xFF;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreLShift64((byte13 & 127), 8)) | byte14;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BulkOperationPacked15", NULL, 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked15 = { 2, "BulkOperationPacked15", "org.apache.lucene.util.packed", NULL, 0x10, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked15;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked15_init(OrgApacheLuceneUtilPackedBulkOperationPacked15 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(self, 15);
}

OrgApacheLuceneUtilPackedBulkOperationPacked15 *new_OrgApacheLuceneUtilPackedBulkOperationPacked15_init() {
  OrgApacheLuceneUtilPackedBulkOperationPacked15 *self = [OrgApacheLuceneUtilPackedBulkOperationPacked15 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked15_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked15)
