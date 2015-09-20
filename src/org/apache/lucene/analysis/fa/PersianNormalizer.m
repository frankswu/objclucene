//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fa/PersianNormalizer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/fa/PersianNormalizer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

@implementation OrgApacheLuceneAnalysisFaPersianNormalizer

- (jint)normalizeWithCharArray:(IOSCharArray *)s
                       withInt:(jint)len {
  for (jint i = 0; i < len; i++) {
    switch (IOSCharArray_Get(nil_chk(s), i)) {
      case OrgApacheLuceneAnalysisFaPersianNormalizer_FARSI_YEH:
      case OrgApacheLuceneAnalysisFaPersianNormalizer_YEH_BARREE:
      *IOSCharArray_GetRef(s, i) = OrgApacheLuceneAnalysisFaPersianNormalizer_YEH;
      break;
      case OrgApacheLuceneAnalysisFaPersianNormalizer_KEHEH:
      *IOSCharArray_GetRef(s, i) = OrgApacheLuceneAnalysisFaPersianNormalizer_KAF;
      break;
      case OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_YEH:
      case OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_GOAL:
      *IOSCharArray_GetRef(s, i) = OrgApacheLuceneAnalysisFaPersianNormalizer_HEH;
      break;
      case OrgApacheLuceneAnalysisFaPersianNormalizer_HAMZA_ABOVE:
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
  OrgApacheLuceneAnalysisFaPersianNormalizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "normalizeWithCharArray:withInt:", "normalize", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "YEH", "YEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_YEH },
    { "FARSI_YEH", "FARSI_YEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_FARSI_YEH },
    { "YEH_BARREE", "YEH_BARREE", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_YEH_BARREE },
    { "KEHEH", "KEHEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_KEHEH },
    { "KAF", "KAF", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_KAF },
    { "HAMZA_ABOVE", "HAMZA_ABOVE", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_HAMZA_ABOVE },
    { "HEH_YEH", "HEH_YEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_YEH },
    { "HEH_GOAL", "HEH_GOAL", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_HEH_GOAL },
    { "HEH", "HEH", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisFaPersianNormalizer_HEH },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisFaPersianNormalizer = { 2, "PersianNormalizer", "org.apache.lucene.analysis.fa", NULL, 0x1, 2, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisFaPersianNormalizer;
}

@end

void OrgApacheLuceneAnalysisFaPersianNormalizer_init(OrgApacheLuceneAnalysisFaPersianNormalizer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisFaPersianNormalizer *new_OrgApacheLuceneAnalysisFaPersianNormalizer_init() {
  OrgApacheLuceneAnalysisFaPersianNormalizer *self = [OrgApacheLuceneAnalysisFaPersianNormalizer alloc];
  OrgApacheLuceneAnalysisFaPersianNormalizer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisFaPersianNormalizer)
