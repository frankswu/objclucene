//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocsEnum.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/index/DocsEnum.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/util/BytesRef.h"

@implementation OrgApacheLuceneIndexDocsEnum

+ (jint)FLAG_NONE {
  return OrgApacheLuceneIndexDocsEnum_FLAG_NONE;
}

+ (jint)FLAG_FREQS {
  return OrgApacheLuceneIndexDocsEnum_FLAG_FREQS;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexDocsEnum_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)nextPosition {
  return -1;
}

- (jint)startOffset {
  return -1;
}

- (jint)endOffset {
  return -1;
}

- (OrgApacheLuceneUtilBytesRef *)getPayload {
  return nil;
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DocsEnum", NULL, 0x4, NULL, NULL },
    { "nextPosition", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "startOffset", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "endOffset", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "getPayload", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FLAG_NONE", "FLAG_NONE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexDocsEnum_FLAG_NONE },
    { "FLAG_FREQS", "FLAG_FREQS", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexDocsEnum_FLAG_FREQS },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDocsEnum = { 2, "DocsEnum", "org.apache.lucene.index", NULL, 0x401, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexDocsEnum;
}

@end

void OrgApacheLuceneIndexDocsEnum_init(OrgApacheLuceneIndexDocsEnum *self) {
  OrgApacheLuceneIndexPostingsEnum_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDocsEnum)
