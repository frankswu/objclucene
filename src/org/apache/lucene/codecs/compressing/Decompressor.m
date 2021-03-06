//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/compressing/Decompressor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/codecs/compressing/Decompressor.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/BytesRef.h"

@implementation OrgApacheLuceneCodecsCompressingDecompressor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCompressingDecompressor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)decompressWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                            withInt:(jint)originalLength
                                            withInt:(jint)offset
                                            withInt:(jint)length
                    withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneCodecsCompressingDecompressor *)clone {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Decompressor", NULL, 0x4, NULL, NULL },
    { "decompressWithOrgApacheLuceneStoreDataInput:withInt:withInt:withInt:withOrgApacheLuceneUtilBytesRef:", "decompress", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "clone", NULL, "Lorg.apache.lucene.codecs.compressing.Decompressor;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCompressingDecompressor = { 2, "Decompressor", "org.apache.lucene.codecs.compressing", NULL, 0x401, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCompressingDecompressor;
}

@end

void OrgApacheLuceneCodecsCompressingDecompressor_init(OrgApacheLuceneCodecsCompressingDecompressor *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCompressingDecompressor)
