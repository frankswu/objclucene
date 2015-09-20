//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BulkOperationPacked2.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked.h"
#include "org/apache/lucene/util/packed/BulkOperationPacked2.h"

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked2

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilPackedBulkOperationPacked2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    for (jint shift = 62; shift >= 0; shift -= 2) {
      *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (jint) ((JreURShift64(block, shift)) & 3);
    }
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
               withIntArray:(IOSIntArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint j = 0; j < iterations; ++j) {
    jbyte block = IOSByteArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSIntArray_GetRef(nil_chk(values), valuesOffset++) = (JreURShift32(block, 6)) & 3;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreURShift32(block, 4)) & 3;
    *IOSIntArray_GetRef(values, valuesOffset++) = (JreURShift32(block, 2)) & 3;
    *IOSIntArray_GetRef(values, valuesOffset++) = block & 3;
  }
}

- (void)decodeWithLongArray:(IOSLongArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint i = 0; i < iterations; ++i) {
    jlong block = IOSLongArray_Get(nil_chk(blocks), blocksOffset++);
    for (jint shift = 62; shift >= 0; shift -= 2) {
      *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreURShift64(block, shift)) & 3;
    }
  }
}

- (void)decodeWithByteArray:(IOSByteArray *)blocks
                    withInt:(jint)blocksOffset
              withLongArray:(IOSLongArray *)values
                    withInt:(jint)valuesOffset
                    withInt:(jint)iterations {
  for (jint j = 0; j < iterations; ++j) {
    jbyte block = IOSByteArray_Get(nil_chk(blocks), blocksOffset++);
    *IOSLongArray_GetRef(nil_chk(values), valuesOffset++) = (JreURShift32(block, 6)) & 3;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift32(block, 4)) & 3;
    *IOSLongArray_GetRef(values, valuesOffset++) = (JreURShift32(block, 2)) & 3;
    *IOSLongArray_GetRef(values, valuesOffset++) = block & 3;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BulkOperationPacked2", NULL, 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withIntArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithLongArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
    { "decodeWithByteArray:withInt:withLongArray:withInt:withInt:", "decode", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedBulkOperationPacked2 = { 2, "BulkOperationPacked2", "org.apache.lucene.util.packed", NULL, 0x10, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedBulkOperationPacked2;
}

@end

void OrgApacheLuceneUtilPackedBulkOperationPacked2_init(OrgApacheLuceneUtilPackedBulkOperationPacked2 *self) {
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(self, 2);
}

OrgApacheLuceneUtilPackedBulkOperationPacked2 *new_OrgApacheLuceneUtilPackedBulkOperationPacked2_init() {
  OrgApacheLuceneUtilPackedBulkOperationPacked2 *self = [OrgApacheLuceneUtilPackedBulkOperationPacked2 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked2_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedBulkOperationPacked2)
