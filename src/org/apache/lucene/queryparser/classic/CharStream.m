//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/classic/CharStream.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/queryparser/classic/CharStream.h"

@interface OrgApacheLuceneQueryparserClassicCharStream : NSObject

@end

@implementation OrgApacheLuceneQueryparserClassicCharStream

+ (IOSObjectArray *)__annotations_getColumn {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getLine {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readChar", NULL, "C", 0x401, "Ljava.io.IOException;", NULL },
    { "getColumn", NULL, "I", 0x401, NULL, NULL },
    { "getLine", NULL, "I", 0x401, NULL, NULL },
    { "getEndColumn", NULL, "I", 0x401, NULL, NULL },
    { "getEndLine", NULL, "I", 0x401, NULL, NULL },
    { "getBeginColumn", NULL, "I", 0x401, NULL, NULL },
    { "getBeginLine", NULL, "I", 0x401, NULL, NULL },
    { "backupWithInt:", "backup", "V", 0x401, NULL, NULL },
    { "BeginToken", NULL, "C", 0x401, "Ljava.io.IOException;", NULL },
    { "GetImage", NULL, "Ljava.lang.String;", 0x401, NULL, NULL },
    { "GetSuffixWithInt:", "GetSuffix", "[C", 0x401, NULL, NULL },
    { "Done", NULL, "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserClassicCharStream = { 2, "CharStream", "org.apache.lucene.queryparser.classic", NULL, 0x609, 12, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserClassicCharStream;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserClassicCharStream)
