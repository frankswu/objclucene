//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/SmallFloat.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "org/apache/lucene/util/SmallFloat.h"

@interface OrgApacheLuceneUtilSmallFloat ()

/*!
 @brief No instance
 */
- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilSmallFloat_init(OrgApacheLuceneUtilSmallFloat *self);

__attribute__((unused)) static OrgApacheLuceneUtilSmallFloat *new_OrgApacheLuceneUtilSmallFloat_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilSmallFloat *create_OrgApacheLuceneUtilSmallFloat_init();

@implementation OrgApacheLuceneUtilSmallFloat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilSmallFloat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jbyte)floatToByteWithFloat:(jfloat)f
                      withInt:(jint)numMantissaBits
                      withInt:(jint)zeroExp {
  return OrgApacheLuceneUtilSmallFloat_floatToByteWithFloat_withInt_withInt_(f, numMantissaBits, zeroExp);
}

+ (jfloat)byteToFloatWithByte:(jbyte)b
                      withInt:(jint)numMantissaBits
                      withInt:(jint)zeroExp {
  return OrgApacheLuceneUtilSmallFloat_byteToFloatWithByte_withInt_withInt_(b, numMantissaBits, zeroExp);
}

+ (jbyte)floatToByte315WithFloat:(jfloat)f {
  return OrgApacheLuceneUtilSmallFloat_floatToByte315WithFloat_(f);
}

+ (jfloat)byte315ToFloatWithByte:(jbyte)b {
  return OrgApacheLuceneUtilSmallFloat_byte315ToFloatWithByte_(b);
}

+ (jbyte)floatToByte52WithFloat:(jfloat)f {
  return OrgApacheLuceneUtilSmallFloat_floatToByte52WithFloat_(f);
}

+ (jfloat)byte52ToFloatWithByte:(jbyte)b {
  return OrgApacheLuceneUtilSmallFloat_byte52ToFloatWithByte_(b);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SmallFloat", NULL, 0x2, NULL, NULL },
    { "floatToByteWithFloat:withInt:withInt:", "floatToByte", "B", 0x9, NULL, NULL },
    { "byteToFloatWithByte:withInt:withInt:", "byteToFloat", "F", 0x9, NULL, NULL },
    { "floatToByte315WithFloat:", "floatToByte315", "B", 0x9, NULL, NULL },
    { "byte315ToFloatWithByte:", "byte315ToFloat", "F", 0x9, NULL, NULL },
    { "floatToByte52WithFloat:", "floatToByte52", "B", 0x9, NULL, NULL },
    { "byte52ToFloatWithByte:", "byte52ToFloat", "F", 0x9, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilSmallFloat = { 2, "SmallFloat", "org.apache.lucene.util", NULL, 0x1, 7, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilSmallFloat;
}

@end

void OrgApacheLuceneUtilSmallFloat_init(OrgApacheLuceneUtilSmallFloat *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilSmallFloat *new_OrgApacheLuceneUtilSmallFloat_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilSmallFloat, init)
}

OrgApacheLuceneUtilSmallFloat *create_OrgApacheLuceneUtilSmallFloat_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilSmallFloat, init)
}

jbyte OrgApacheLuceneUtilSmallFloat_floatToByteWithFloat_withInt_withInt_(jfloat f, jint numMantissaBits, jint zeroExp) {
  OrgApacheLuceneUtilSmallFloat_initialize();
  jint fzero = JreLShift32((63 - zeroExp), numMantissaBits);
  jint bits = JavaLangFloat_floatToRawIntBitsWithFloat_(f);
  jint smallfloat = JreRShift32(bits, (24 - numMantissaBits));
  if (smallfloat <= fzero) {
    return (bits <= 0) ? (jbyte) 0 : (jbyte) 1;
  }
  else if (smallfloat >= fzero + (jint) 0x100) {
    return -1;
  }
  else {
    return (jbyte) (smallfloat - fzero);
  }
}

jfloat OrgApacheLuceneUtilSmallFloat_byteToFloatWithByte_withInt_withInt_(jbyte b, jint numMantissaBits, jint zeroExp) {
  OrgApacheLuceneUtilSmallFloat_initialize();
  if (b == 0) return 0.0f;
  jint bits = JreLShift32((b & (jint) 0xff), (24 - numMantissaBits));
  bits += JreLShift32((63 - zeroExp), 24);
  return JavaLangFloat_intBitsToFloatWithInt_(bits);
}

jbyte OrgApacheLuceneUtilSmallFloat_floatToByte315WithFloat_(jfloat f) {
  OrgApacheLuceneUtilSmallFloat_initialize();
  jint bits = JavaLangFloat_floatToRawIntBitsWithFloat_(f);
  jint smallfloat = JreRShift32(bits, (24 - 3));
  if (smallfloat <= (JreLShift32((63 - 15), 3))) {
    return (bits <= 0) ? (jbyte) 0 : (jbyte) 1;
  }
  if (smallfloat >= (JreLShift32((63 - 15), 3)) + (jint) 0x100) {
    return -1;
  }
  return (jbyte) (smallfloat - (JreLShift32((63 - 15), 3)));
}

jfloat OrgApacheLuceneUtilSmallFloat_byte315ToFloatWithByte_(jbyte b) {
  OrgApacheLuceneUtilSmallFloat_initialize();
  if (b == 0) return 0.0f;
  jint bits = JreLShift32((b & (jint) 0xff), (24 - 3));
  bits += JreLShift32((63 - 15), 24);
  return JavaLangFloat_intBitsToFloatWithInt_(bits);
}

jbyte OrgApacheLuceneUtilSmallFloat_floatToByte52WithFloat_(jfloat f) {
  OrgApacheLuceneUtilSmallFloat_initialize();
  jint bits = JavaLangFloat_floatToRawIntBitsWithFloat_(f);
  jint smallfloat = JreRShift32(bits, (24 - 5));
  if (smallfloat <= JreLShift32((63 - 2), 5)) {
    return (bits <= 0) ? (jbyte) 0 : (jbyte) 1;
  }
  if (smallfloat >= (JreLShift32((63 - 2), 5)) + (jint) 0x100) {
    return -1;
  }
  return (jbyte) (smallfloat - (JreLShift32((63 - 2), 5)));
}

jfloat OrgApacheLuceneUtilSmallFloat_byte52ToFloatWithByte_(jbyte b) {
  OrgApacheLuceneUtilSmallFloat_initialize();
  if (b == 0) return 0.0f;
  jint bits = JreLShift32((b & (jint) 0xff), (24 - 5));
  bits += JreLShift32((63 - 2), 24);
  return JavaLangFloat_intBitsToFloatWithInt_(bits);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilSmallFloat)
