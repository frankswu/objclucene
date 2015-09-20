//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/DirectReader.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/store/RandomAccessInput.h"
#include "org/apache/lucene/util/LongValues.h"
#include "org/apache/lucene/util/packed/DirectReader.h"

@implementation OrgApacheLuceneUtilPackedDirectReader

+ (OrgApacheLuceneUtilLongValues *)getInstanceWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)slice
                                                                                withInt:(jint)bitsPerValue {
  return OrgApacheLuceneUtilPackedDirectReader_getInstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt_(slice, bitsPerValue);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilPackedDirectReader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getInstanceWithOrgApacheLuceneStoreRandomAccessInput:withInt:", "getInstance", "Lorg.apache.lucene.util.LongValues;", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader1;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader2;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader4;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader8;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader12;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader16;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader20;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader24;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader28;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader32;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader40;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader48;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader56;", "Lorg.apache.lucene.util.packed.DirectReader$DirectPackedReader64;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader = { 2, "DirectReader", "org.apache.lucene.util.packed", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 14, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader;
}

@end

OrgApacheLuceneUtilLongValues *OrgApacheLuceneUtilPackedDirectReader_getInstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt_(id<OrgApacheLuceneStoreRandomAccessInput> slice, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedDirectReader_initialize();
  switch (bitsPerValue) {
    case 1:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 2:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 4:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 8:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 12:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 16:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 20:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 24:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 28:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 32:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 40:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 48:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 56:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    case 64:
    return [new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_initWithOrgApacheLuceneStoreRandomAccessInput_(slice) autorelease];
    default:
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"unsupported bitsPerValue: ", bitsPerValue)) autorelease];
  }
}

void OrgApacheLuceneUtilPackedDirectReader_init(OrgApacheLuceneUtilPackedDirectReader *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilPackedDirectReader *new_OrgApacheLuceneUtilPackedDirectReader_init() {
  OrgApacheLuceneUtilPackedDirectReader *self = [OrgApacheLuceneUtilPackedDirectReader alloc];
  OrgApacheLuceneUtilPackedDirectReader_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    jint shift = 7 - (jint) (index & 7);
    return (JreURShift32([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readByteWithLong:JreURShift64(index, 3)], shift)) & (jint) 0x1;
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader1", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 = { 2, "DirectPackedReader1", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    jint shift = JreLShift32((3 - (jint) (index & 3)), 1);
    return (JreURShift32([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readByteWithLong:JreURShift64(index, 2)], shift)) & (jint) 0x3;
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader2", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 = { 2, "DirectPackedReader2", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    jint shift = JreLShift32((jint) ((index + 1) & 1), 2);
    return (JreURShift32([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readByteWithLong:JreURShift64(index, 1)], shift)) & (jint) 0xF;
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader4", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 = { 2, "DirectPackedReader4", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    return [((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readByteWithLong:index] & (jint) 0xFF;
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader8", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 = { 2, "DirectPackedReader8", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    jlong offset = JreURShift64((index * 12), 3);
    jint shift = JreLShift32((jint) ((index + 1) & 1), 2);
    return (JreURShift32([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readShortWithLong:offset], shift)) & (jint) 0xFFF;
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader12", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 = { 2, "DirectPackedReader12", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    return [((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readShortWithLong:JreLShift64(index, 1)] & (jint) 0xFFFF;
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader16", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 = { 2, "DirectPackedReader16", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    jlong offset = JreURShift64((index * 20), 3);
    jint v = JreURShift32([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readIntWithLong:offset], 8);
    jint shift = JreLShift32((jint) ((index + 1) & 1), 2);
    return (JreURShift32(v, shift)) & (jint) 0xFFFFF;
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader20", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 = { 2, "DirectPackedReader20", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    return JreURShift32([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readIntWithLong:index * 3], 8);
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader24", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 = { 2, "DirectPackedReader24", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    jlong offset = JreURShift64((index * 28), 3);
    jint shift = JreLShift32((jint) ((index + 1) & 1), 2);
    return (JreURShift32([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readIntWithLong:offset], shift)) & (jlong) 0xFFFFFFFLL;
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader28", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 = { 2, "DirectPackedReader28", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    return [((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readIntWithLong:JreLShift64(index, 2)] & (jlong) 0xFFFFFFFFLL;
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader32", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 = { 2, "DirectPackedReader32", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    return JreURShift64([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readLongWithLong:index * 5], 24);
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader40", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 = { 2, "DirectPackedReader40", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    return JreURShift64([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readLongWithLong:index * 6], 16);
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader48", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 = { 2, "DirectPackedReader48", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    return JreURShift64([((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readLongWithLong:index * 7], 8);
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader56", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 = { 2, "DirectPackedReader56", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56)

@implementation OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

- (jlong)getWithLong:(jlong)index {
  @try {
    return [((id<OrgApacheLuceneStoreRandomAccessInput>) nil_chk(in_)) readLongWithLong:JreLShift64(index, 3)];
  }
  @catch (JavaIoIOException *e) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreRandomAccessInput:", "DirectPackedReader64", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.RandomAccessInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 = { 2, "DirectPackedReader64", "org.apache.lucene.util.packed", "DirectReader", 0x18, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64;
}

@end

void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilLongValues_init(self);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) {
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 *self = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 alloc];
  OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_initWithOrgApacheLuceneStoreRandomAccessInput_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64)
