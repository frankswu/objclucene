//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fi/FinnishLightStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/fi/FinnishLightStemmer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

@interface OrgApacheLuceneAnalysisFiFinnishLightStemmer ()

- (jint)step1WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len;

- (jint)step2WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len;

- (jint)step3WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len;

- (jint)norm1WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len;

- (jint)norm2WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len;

- (jboolean)isVowelWithChar:(jchar)ch;

@end

__attribute__((unused)) static jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_step1WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_step2WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_step3WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_norm1WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_norm2WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisFiFinnishLightStemmer_isVowelWithChar_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, jchar ch);

@implementation OrgApacheLuceneAnalysisFiFinnishLightStemmer

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  if (len < 4) return len;
  for (jint i = 0; i < len; i++) switch (IOSCharArray_Get(nil_chk(s), i)) {
    case 0x00e4:
    case 0x00e5:
    *IOSCharArray_GetRef(s, i) = 'a';
    break;
    case 0x00f6:
    *IOSCharArray_GetRef(s, i) = 'o';
    break;
  }
  len = OrgApacheLuceneAnalysisFiFinnishLightStemmer_step1WithCharArray_withInt_(self, s, len);
  len = OrgApacheLuceneAnalysisFiFinnishLightStemmer_step2WithCharArray_withInt_(self, s, len);
  len = OrgApacheLuceneAnalysisFiFinnishLightStemmer_step3WithCharArray_withInt_(self, s, len);
  len = OrgApacheLuceneAnalysisFiFinnishLightStemmer_norm1WithCharArray_withInt_(self, s, len);
  len = OrgApacheLuceneAnalysisFiFinnishLightStemmer_norm2WithCharArray_withInt_(self, s, len);
  return len;
}

- (jint)step1WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len {
  return OrgApacheLuceneAnalysisFiFinnishLightStemmer_step1WithCharArray_withInt_(self, s, len);
}

- (jint)step2WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len {
  return OrgApacheLuceneAnalysisFiFinnishLightStemmer_step2WithCharArray_withInt_(self, s, len);
}

- (jint)step3WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len {
  return OrgApacheLuceneAnalysisFiFinnishLightStemmer_step3WithCharArray_withInt_(self, s, len);
}

- (jint)norm1WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len {
  return OrgApacheLuceneAnalysisFiFinnishLightStemmer_norm1WithCharArray_withInt_(self, s, len);
}

- (jint)norm2WithCharArray:(IOSCharArray *)s
                   withInt:(jint)len {
  return OrgApacheLuceneAnalysisFiFinnishLightStemmer_norm2WithCharArray_withInt_(self, s, len);
}

- (jboolean)isVowelWithChar:(jchar)ch {
  return OrgApacheLuceneAnalysisFiFinnishLightStemmer_isVowelWithChar_(self, ch);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisFiFinnishLightStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "stemWithCharArray:withInt:", "stem", "I", 0x1, NULL, NULL },
    { "step1WithCharArray:withInt:", "step1", "I", 0x2, NULL, NULL },
    { "step2WithCharArray:withInt:", "step2", "I", 0x2, NULL, NULL },
    { "step3WithCharArray:withInt:", "step3", "I", 0x2, NULL, NULL },
    { "norm1WithCharArray:withInt:", "norm1", "I", 0x2, NULL, NULL },
    { "norm2WithCharArray:withInt:", "norm2", "I", 0x2, NULL, NULL },
    { "isVowelWithChar:", "isVowel", "Z", 0x2, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFiFinnishLightStemmer = { 2, "FinnishLightStemmer", "org.apache.lucene.analysis.fi", NULL, 0x1, 8, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisFiFinnishLightStemmer;
}

@end

jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_step1WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len) {
  if (len > 8) {
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"kin")) return OrgApacheLuceneAnalysisFiFinnishLightStemmer_step1WithCharArray_withInt_(self, s, len - 3);
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ko")) return OrgApacheLuceneAnalysisFiFinnishLightStemmer_step1WithCharArray_withInt_(self, s, len - 2);
  }
  if (len > 11) {
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"dellinen")) return len - 8;
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"dellisuus")) return len - 9;
  }
  return len;
}

jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_step2WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len) {
  if (len > 5) {
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"lla") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"tse") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"sti")) return len - 3;
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ni")) return len - 2;
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"aa")) return len - 1;
  }
  return len;
}

jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_step3WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len) {
  if (len > 8) {
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"nnen")) {
      *IOSCharArray_GetRef(nil_chk(s), len - 4) = 's';
      return len - 3;
    }
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ntena")) {
      *IOSCharArray_GetRef(nil_chk(s), len - 5) = 's';
      return len - 4;
    }
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"tten")) return len - 4;
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"eiden")) return len - 5;
  }
  if (len > 6) {
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"neen") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"niin") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"seen") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"teen") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"inen")) return len - 4;
    if (IOSCharArray_Get(nil_chk(s), len - 3) == 'h' && OrgApacheLuceneAnalysisFiFinnishLightStemmer_isVowelWithChar_(self, IOSCharArray_Get(s, len - 2)) && IOSCharArray_Get(s, len - 1) == 'n') return len - 3;
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"den")) {
      *IOSCharArray_GetRef(s, len - 3) = 's';
      return len - 2;
    }
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ksen")) {
      *IOSCharArray_GetRef(s, len - 4) = 's';
      return len - 3;
    }
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ssa") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"sta") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"lla") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"lta") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"tta") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ksi") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"lle")) return len - 3;
  }
  if (len > 5) {
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"na") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ne")) return len - 2;
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"nei")) return len - 3;
  }
  if (len > 4) {
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ja") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ta")) return len - 2;
    if (IOSCharArray_Get(nil_chk(s), len - 1) == 'a') return len - 1;
    if (IOSCharArray_Get(s, len - 1) == 'n' && OrgApacheLuceneAnalysisFiFinnishLightStemmer_isVowelWithChar_(self, IOSCharArray_Get(s, len - 2))) return len - 2;
    if (IOSCharArray_Get(s, len - 1) == 'n') return len - 1;
  }
  return len;
}

jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_norm1WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len) {
  if (len > 5 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"hde")) {
    *IOSCharArray_GetRef(nil_chk(s), len - 3) = 'k';
    *IOSCharArray_GetRef(s, len - 2) = 's';
    *IOSCharArray_GetRef(s, len - 1) = 'i';
  }
  if (len > 4) {
    if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ei") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"at")) return len - 2;
  }
  if (len > 3) switch (IOSCharArray_Get(nil_chk(s), len - 1)) {
    case 't':
    case 's':
    case 'j':
    case 'e':
    case 'a':
    case 'i':
    return len - 1;
  }
  return len;
}

jint OrgApacheLuceneAnalysisFiFinnishLightStemmer_norm2WithCharArray_withInt_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, IOSCharArray *s, jint len) {
  if (len > 8) {
    if (IOSCharArray_Get(nil_chk(s), len - 1) == 'e' || IOSCharArray_Get(s, len - 1) == 'o' || IOSCharArray_Get(s, len - 1) == 'u') len--;
  }
  if (len > 4) {
    if (IOSCharArray_Get(nil_chk(s), len - 1) == 'i') len--;
    if (len > 4) {
      jchar ch = IOSCharArray_Get(s, 0);
      for (jint i = 1; i < len; i++) {
        if (IOSCharArray_Get(s, i) == ch && (ch == 'k' || ch == 'p' || ch == 't')) len = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(s, i--, len);
        else ch = IOSCharArray_Get(s, i);
      }
    }
  }
  return len;
}

jboolean OrgApacheLuceneAnalysisFiFinnishLightStemmer_isVowelWithChar_(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self, jchar ch) {
  switch (ch) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    case 'y':
    return true;
    default:
    return false;
  }
}

void OrgApacheLuceneAnalysisFiFinnishLightStemmer_init(OrgApacheLuceneAnalysisFiFinnishLightStemmer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisFiFinnishLightStemmer *new_OrgApacheLuceneAnalysisFiFinnishLightStemmer_init() {
  OrgApacheLuceneAnalysisFiFinnishLightStemmer *self = [OrgApacheLuceneAnalysisFiFinnishLightStemmer alloc];
  OrgApacheLuceneAnalysisFiFinnishLightStemmer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFiFinnishLightStemmer)
