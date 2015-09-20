//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/it/ItalianLightStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/it/ItalianLightStemmer.h"

@implementation OrgApacheLuceneAnalysisItItalianLightStemmer

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  if (len < 6) return len;
  for (jint i = 0; i < len; i++) switch (IOSCharArray_Get(nil_chk(s), i)) {
    case 0x00e0:
    case 0x00e1:
    case 0x00e2:
    case 0x00e4:
    *IOSCharArray_GetRef(s, i) = 'a';
    break;
    case 0x00f2:
    case 0x00f3:
    case 0x00f4:
    case 0x00f6:
    *IOSCharArray_GetRef(s, i) = 'o';
    break;
    case 0x00e8:
    case 0x00e9:
    case 0x00ea:
    case 0x00eb:
    *IOSCharArray_GetRef(s, i) = 'e';
    break;
    case 0x00f9:
    case 0x00fa:
    case 0x00fb:
    case 0x00fc:
    *IOSCharArray_GetRef(s, i) = 'u';
    break;
    case 0x00ec:
    case 0x00ed:
    case 0x00ee:
    case 0x00ef:
    *IOSCharArray_GetRef(s, i) = 'i';
    break;
  }
  switch (IOSCharArray_Get(nil_chk(s), len - 1)) {
    case 'e':
    if (IOSCharArray_Get(s, len - 2) == 'i' || IOSCharArray_Get(s, len - 2) == 'h') return len - 2;
    else return len - 1;
    case 'i':
    if (IOSCharArray_Get(s, len - 2) == 'h' || IOSCharArray_Get(s, len - 2) == 'i') return len - 2;
    else return len - 1;
    case 'a':
    if (IOSCharArray_Get(s, len - 2) == 'i') return len - 2;
    else return len - 1;
    case 'o':
    if (IOSCharArray_Get(s, len - 2) == 'i') return len - 2;
    else return len - 1;
  }
  return len;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisItItalianLightStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "stemWithCharArray:withInt:", "stem", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisItItalianLightStemmer = { 2, "ItalianLightStemmer", "org.apache.lucene.analysis.it", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisItItalianLightStemmer;
}

@end

void OrgApacheLuceneAnalysisItItalianLightStemmer_init(OrgApacheLuceneAnalysisItItalianLightStemmer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisItItalianLightStemmer *new_OrgApacheLuceneAnalysisItItalianLightStemmer_init() {
  OrgApacheLuceneAnalysisItItalianLightStemmer *self = [OrgApacheLuceneAnalysisItItalianLightStemmer alloc];
  OrgApacheLuceneAnalysisItItalianLightStemmer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisItItalianLightStemmer)
