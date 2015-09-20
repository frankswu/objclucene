//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cz/CzechStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/cz/CzechStemmer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

@interface OrgApacheLuceneAnalysisCzCzechStemmer ()

- (jint)removeCaseWithCharArray:(IOSCharArray *)s
                        withInt:(jint)len;

- (jint)removePossessivesWithCharArray:(IOSCharArray *)s
                               withInt:(jint)len;

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len;

@end

__attribute__((unused)) static jint OrgApacheLuceneAnalysisCzCzechStemmer_removeCaseWithCharArray_withInt_(OrgApacheLuceneAnalysisCzCzechStemmer *self, IOSCharArray *s, jint len);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisCzCzechStemmer_removePossessivesWithCharArray_withInt_(OrgApacheLuceneAnalysisCzCzechStemmer *self, IOSCharArray *s, jint len);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisCzCzechStemmer_normalizeWithCharArray_withInt_(OrgApacheLuceneAnalysisCzCzechStemmer *self, IOSCharArray *s, jint len);

@implementation OrgApacheLuceneAnalysisCzCzechStemmer

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  len = OrgApacheLuceneAnalysisCzCzechStemmer_removeCaseWithCharArray_withInt_(self, s, len);
  len = OrgApacheLuceneAnalysisCzCzechStemmer_removePossessivesWithCharArray_withInt_(self, s, len);
  if (len > 0) {
    len = OrgApacheLuceneAnalysisCzCzechStemmer_normalizeWithCharArray_withInt_(self, s, len);
  }
  return len;
}

- (jint)removeCaseWithCharArray:(IOSCharArray *)s
                        withInt:(jint)len {
  return OrgApacheLuceneAnalysisCzCzechStemmer_removeCaseWithCharArray_withInt_(self, s, len);
}

- (jint)removePossessivesWithCharArray:(IOSCharArray *)s
                               withInt:(jint)len {
  return OrgApacheLuceneAnalysisCzCzechStemmer_removePossessivesWithCharArray_withInt_(self, s, len);
}

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len {
  return OrgApacheLuceneAnalysisCzCzechStemmer_normalizeWithCharArray_withInt_(self, s, len);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisCzCzechStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "stemWithCharArray:withInt:", "stem", "I", 0x1, NULL, NULL },
    { "removeCaseWithCharArray:withInt:", "removeCase", "I", 0x2, NULL, NULL },
    { "removePossessivesWithCharArray:withInt:", "removePossessives", "I", 0x2, NULL, NULL },
    { "normalizeWithCharArray:withInt:", "normalize", "I", 0x2, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCzCzechStemmer = { 2, "CzechStemmer", "org.apache.lucene.analysis.cz", NULL, 0x1, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCzCzechStemmer;
}

@end

jint OrgApacheLuceneAnalysisCzCzechStemmer_removeCaseWithCharArray_withInt_(OrgApacheLuceneAnalysisCzCzechStemmer *self, IOSCharArray *s, jint len) {
  if (len > 7 && OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"atech")) return len - 5;
  if (len > 6 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u011btem") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"etem") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"at\u016fm"))) return len - 4;
  if (len > 5 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ech") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ich") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00edch") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00e9ho") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u011bmi") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"emi") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00e9mu") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u011bte") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ete") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u011bti") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"eti") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00edho") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"iho") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00edmi") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00edmu") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"imu") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00e1ch") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ata") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"aty") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00fdch") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ama") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ami") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ov\u00e9") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ovi") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00fdmi"))) return len - 3;
  if (len > 4 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"em") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"es") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00e9m") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00edm") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u016fm") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"at") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00e1m") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"os") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"us") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u00fdm") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"mi") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ou"))) return len - 2;
  if (len > 3) {
    switch (IOSCharArray_Get(nil_chk(s), len - 1)) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
      case 0x016f:
      case 'y':
      case 0x00e1:
      case 0x00e9:
      case 0x00ed:
      case 0x00fd:
      case 0x011b:
      return len - 1;
    }
  }
  return len;
}

jint OrgApacheLuceneAnalysisCzCzechStemmer_removePossessivesWithCharArray_withInt_(OrgApacheLuceneAnalysisCzCzechStemmer *self, IOSCharArray *s, jint len) {
  if (len > 5 && (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"ov") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"in") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u016fv"))) return len - 2;
  return len;
}

jint OrgApacheLuceneAnalysisCzCzechStemmer_normalizeWithCharArray_withInt_(OrgApacheLuceneAnalysisCzCzechStemmer *self, IOSCharArray *s, jint len) {
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u010dt")) {
    *IOSCharArray_GetRef(nil_chk(s), len - 2) = 'c';
    *IOSCharArray_GetRef(s, len - 1) = 'k';
    return len;
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(s, len, @"\u0161t")) {
    *IOSCharArray_GetRef(nil_chk(s), len - 2) = 's';
    *IOSCharArray_GetRef(s, len - 1) = 'k';
    return len;
  }
  switch (IOSCharArray_Get(nil_chk(s), len - 1)) {
    case 'c':
    case 0x010d:
    *IOSCharArray_GetRef(s, len - 1) = 'k';
    return len;
    case 'z':
    case 0x017e:
    *IOSCharArray_GetRef(s, len - 1) = 'h';
    return len;
  }
  if (len > 1 && IOSCharArray_Get(s, len - 2) == 'e') {
    *IOSCharArray_GetRef(s, len - 2) = IOSCharArray_Get(s, len - 1);
    return len - 1;
  }
  if (len > 2 && IOSCharArray_Get(s, len - 2) == 0x016f) {
    *IOSCharArray_GetRef(s, len - 2) = 'o';
    return len;
  }
  return len;
}

void OrgApacheLuceneAnalysisCzCzechStemmer_init(OrgApacheLuceneAnalysisCzCzechStemmer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisCzCzechStemmer *new_OrgApacheLuceneAnalysisCzCzechStemmer_init() {
  OrgApacheLuceneAnalysisCzCzechStemmer *self = [OrgApacheLuceneAnalysisCzCzechStemmer alloc];
  OrgApacheLuceneAnalysisCzCzechStemmer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCzCzechStemmer)
