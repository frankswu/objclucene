//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SortedSetDocValues.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValuesTermsEnum.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/BytesRef.h"

@implementation OrgApacheLuceneIndexSortedSetDocValues

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexSortedSetDocValues_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)nextOrd {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setDocumentWithInt:(jint)docID {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithLong:(jlong)ord {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getValueCount {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key {
  jlong low = 0;
  jlong high = [self getValueCount] - 1;
  while (low <= high) {
    jlong mid = JreURShift64((low + high), 1);
    OrgApacheLuceneUtilBytesRef *term = [self lookupOrdWithLong:mid];
    jint cmp = [((OrgApacheLuceneUtilBytesRef *) nil_chk(term)) compareToWithId:key];
    if (cmp < 0) {
      low = mid + 1;
    }
    else if (cmp > 0) {
      high = mid - 1;
    }
    else {
      return mid;
    }
  }
  return -(low + 1);
}

- (OrgApacheLuceneIndexTermsEnum *)termsEnum {
  return [new_OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(self) autorelease];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SortedSetDocValues", NULL, 0x4, NULL, NULL },
    { "nextOrd", NULL, "J", 0x401, NULL, NULL },
    { "setDocumentWithInt:", "setDocument", "V", 0x401, NULL, NULL },
    { "lookupOrdWithLong:", "lookupOrd", "Lorg.apache.lucene.util.BytesRef;", 0x401, NULL, NULL },
    { "getValueCount", NULL, "J", 0x401, NULL, NULL },
    { "lookupTermWithOrgApacheLuceneUtilBytesRef:", "lookupTerm", "J", 0x1, NULL, NULL },
    { "termsEnum", NULL, "Lorg.apache.lucene.index.TermsEnum;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NO_MORE_ORDS", "NO_MORE_ORDS", 0x19, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneIndexSortedSetDocValues_NO_MORE_ORDS },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSortedSetDocValues = { 2, "SortedSetDocValues", "org.apache.lucene.index", NULL, 0x401, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexSortedSetDocValues;
}

@end

void OrgApacheLuceneIndexSortedSetDocValues_init(OrgApacheLuceneIndexSortedSetDocValues *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSortedSetDocValues)
