//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ru/RussianLightStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/ru/RussianLightStemmer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

@interface OrgApacheLuceneAnalysisRuRussianLightStemmer ()

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len;

- (jint)removeCaseWithCharArray:(IOSCharArray *)s
                        withInt:(jint)len;

@end

__attribute__((unused)) static jint OrgApacheLuceneAnalysisRuRussianLightStemmer_normalizeWithCharArray_withInt_(OrgApacheLuceneAnalysisRuRussianLightStemmer *self, IOSCharArray *s, jint len);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisRuRussianLightStemmer_removeCaseWithCharArray_withInt_(OrgApacheLuceneAnalysisRuRussianLightStemmer *self, IOSCharArray *s, jint len);

@implementation OrgApacheLuceneAnalysisRuRussianLightStemmer

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  len = OrgApacheLuceneAnalysisRuRussianLightStemmer_removeCaseWithCharArray_withInt_(self, s, len);
  return OrgApacheLuceneAnalysisRuRussianLightStemmer_normalizeWithCharArray_withInt_(self, s, len);
}

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len {
  return OrgApacheLuceneAnalysisRuRussianLightStemmer_normalizeWithCharArray_withInt_(self, s, len);
}

- (jint)removeCaseWithCharArray:(IOSCharArray *)s
                        withInt:(jint)len {
  return OrgApacheLuceneAnalysisRuRussianLightStemmer_removeCaseWithCharArray_withInt_(self, s, len);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisRuRussianLightStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "stemWithCharArray:withInt:", "stem", "I", 0x1, NULL, NULL },
    { "normalizeWithCharArray:withInt:", "normalize", "I", 0x2, NULL, NULL },
    { "removeCaseWithCharArray:withInt:", "removeCase", "I", 0x2, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisRuRussianLightStemmer = { 2, "RussianLightStemmer", "org.apache.lucene.analysis.ru", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisRuRussianLightStemmer;
}

@end

jint OrgApacheLuceneAnalysisRuRussianLightStemmer_normalizeWithCharArray_withInt_(OrgApacheLuceneAnalysisRuRussianLightStemmer *self, IOSCharArray *s, jint len) {
  if (len > 3) switch (IOSCharArray_Get(nil_chk(s), len - 1)) {
    case 0x044c:
    case 0x0438:
    return len - 1;
    case 0x043d:
    if (IOSCharArray_Get(s, len - 2) == 0x043d) return len - 1;
  }
  return len;
}

jint OrgApacheLuceneAnalysisRuRussianLightStemmer_removeCaseWithCharArray_withInt_(OrgApacheLuceneAnalysisRuRussianLightStemmer *self, IOSCharArray *s, jint len) {
  if (len > 6 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0438\u044f\u043c\u0438") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u044f\u043c\u0438"))) return len - 4;
  if (len > 5 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0438\u044f\u043c") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0438\u044f\u0445") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u044f\u0445") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044f\u043c\u0438") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u044f\u043c") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u044c\u0432") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0430\u043c\u0438") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0435\u0433\u043e") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0435\u043c\u0443") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0435\u0440\u0438") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0438\u043c\u0438") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u0433\u043e") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u043c\u0443") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044b\u043c\u0438") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u0435\u0432"))) return len - 3;
  if (len > 4 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0430\u044f") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044f\u044f") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044f\u0445") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044e\u044e") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0430\u0445") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0435\u044e") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0438\u0445") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0438\u044f") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0438\u044e") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044c\u0432") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u044e") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0443\u044e") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044f\u043c") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044b\u0445") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0435\u044f") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0430\u043c") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0435\u043c") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0435\u0439") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0451\u043c") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0435\u0432") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0438\u0439") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0438\u043c") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u0435") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u0439") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u043c") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043e\u0432") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044b\u0435") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044b\u0439") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u044b\u043c") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u043c\u0438"))) return len - 2;
  if (len > 3) switch (IOSCharArray_Get(nil_chk(s), len - 1)) {
    case 0x0430:
    case 0x0435:
    case 0x0438:
    case 0x043e:
    case 0x0443:
    case 0x0439:
    case 0x044b:
    case 0x044f:
    case 0x044c:
    return len - 1;
  }
  return len;
}

void OrgApacheLuceneAnalysisRuRussianLightStemmer_init(OrgApacheLuceneAnalysisRuRussianLightStemmer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisRuRussianLightStemmer *new_OrgApacheLuceneAnalysisRuRussianLightStemmer_init() {
  OrgApacheLuceneAnalysisRuRussianLightStemmer *self = [OrgApacheLuceneAnalysisRuRussianLightStemmer alloc];
  OrgApacheLuceneAnalysisRuRussianLightStemmer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisRuRussianLightStemmer)
