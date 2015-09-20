//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ar/ArabicNormalizer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/ar/ArabicNormalizer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

@implementation OrgApacheLuceneAnalysisArArabicNormalizer

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len {
  for (jint i = 0; i < len; i++) {
    switch (IOSCharArray_Get(nil_chk(s), i)) {
      case OrgApacheLuceneAnalysisArArabicNormalizer_ALEF_MADDA:
      case OrgApacheLuceneAnalysisArArabicNormalizer_ALEF_HAMZA_ABOVE:
      case OrgApacheLuceneAnalysisArArabicNormalizer_ALEF_HAMZA_BELOW:
      *IOSCharArray_GetRef(s, i) = OrgApacheLuceneAnalysisArArabicNormalizer_ALEF;
      break;
      case OrgApacheLuceneAnalysisArArabicNormalizer_DOTLESS_YEH:
      *IOSCharArray_GetRef(s, i) = OrgApacheLuceneAnalysisArArabicNormalizer_YEH;
      break;
      case OrgApacheLuceneAnalysisArArabicNormalizer_TEH_MARBUTA:
      *IOSCharArray_GetRef(s, i) = OrgApacheLuceneAnalysisArArabicNormalizer_HEH;
      break;
      case OrgApacheLuceneAnalysisArArabicNormalizer_TATWEEL:
      case OrgApacheLuceneAnalysisArArabicNormalizer_KASRATAN:
      case OrgApacheLuceneAnalysisArArabicNormalizer_DAMMATAN:
      case OrgApacheLuceneAnalysisArArabicNormalizer_FATHATAN:
      case OrgApacheLuceneAnalysisArArabicNormalizer_FATHA:
      case OrgApacheLuceneAnalysisArArabicNormalizer_DAMMA:
      case OrgApacheLuceneAnalysisArArabicNormalizer_KASRA:
      case OrgApacheLuceneAnalysisArArabicNormalizer_SHADDA:
      case OrgApacheLuceneAnalysisArArabicNormalizer_SUKUN:
      len = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(s, i, len);
      i--;
      break;
      default:
      break;
    }
  }
  return len;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisArArabicNormalizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "normalizeWithCharArray:withInt:", "normalize", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ALEF", "ALEF", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_ALEF },
    { "ALEF_MADDA", "ALEF_MADDA", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_ALEF_MADDA },
    { "ALEF_HAMZA_ABOVE", "ALEF_HAMZA_ABOVE", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_ALEF_HAMZA_ABOVE },
    { "ALEF_HAMZA_BELOW", "ALEF_HAMZA_BELOW", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_ALEF_HAMZA_BELOW },
    { "YEH", "YEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_YEH },
    { "DOTLESS_YEH", "DOTLESS_YEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_DOTLESS_YEH },
    { "TEH_MARBUTA", "TEH_MARBUTA", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_TEH_MARBUTA },
    { "HEH", "HEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_HEH },
    { "TATWEEL", "TATWEEL", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_TATWEEL },
    { "FATHATAN", "FATHATAN", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_FATHATAN },
    { "DAMMATAN", "DAMMATAN", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_DAMMATAN },
    { "KASRATAN", "KASRATAN", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_KASRATAN },
    { "FATHA", "FATHA", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_FATHA },
    { "DAMMA", "DAMMA", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_DAMMA },
    { "KASRA", "KASRA", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_KASRA },
    { "SHADDA", "SHADDA", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_SHADDA },
    { "SUKUN", "SUKUN", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisArArabicNormalizer_SUKUN },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisArArabicNormalizer = { 2, "ArabicNormalizer", "org.apache.lucene.analysis.ar", NULL, 0x1, 2, methods, 17, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisArArabicNormalizer;
}

@end

void OrgApacheLuceneAnalysisArArabicNormalizer_init(OrgApacheLuceneAnalysisArArabicNormalizer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisArArabicNormalizer *new_OrgApacheLuceneAnalysisArArabicNormalizer_init() {
  OrgApacheLuceneAnalysisArArabicNormalizer *self = [OrgApacheLuceneAnalysisArArabicNormalizer alloc];
  OrgApacheLuceneAnalysisArArabicNormalizer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisArArabicNormalizer)
