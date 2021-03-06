//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MergeTrigger.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/index/MergeTrigger.h"

__attribute__((unused)) static void OrgApacheLuceneIndexMergeTrigger_initWithNSString_withInt_(OrgApacheLuceneIndexMergeTrigger *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexMergeTrigger)

OrgApacheLuceneIndexMergeTrigger *OrgApacheLuceneIndexMergeTrigger_values_[5];

@implementation OrgApacheLuceneIndexMergeTrigger

+ (OrgApacheLuceneIndexMergeTrigger *)SEGMENT_FLUSH {
  return JreEnum(OrgApacheLuceneIndexMergeTrigger, SEGMENT_FLUSH);
}

+ (OrgApacheLuceneIndexMergeTrigger *)FULL_FLUSH {
  return JreEnum(OrgApacheLuceneIndexMergeTrigger, FULL_FLUSH);
}

+ (OrgApacheLuceneIndexMergeTrigger *)EXPLICIT {
  return JreEnum(OrgApacheLuceneIndexMergeTrigger, EXPLICIT);
}

+ (OrgApacheLuceneIndexMergeTrigger *)MERGE_FINISHED {
  return JreEnum(OrgApacheLuceneIndexMergeTrigger, MERGE_FINISHED);
}

+ (OrgApacheLuceneIndexMergeTrigger *)CLOSING {
  return JreEnum(OrgApacheLuceneIndexMergeTrigger, CLOSING);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneIndexMergeTrigger_values();
}

+ (OrgApacheLuceneIndexMergeTrigger *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneIndexMergeTrigger_valueOfWithNSString_(name);
}

- (OrgApacheLuceneIndexMergeTrigger_Enum)toNSEnum {
  return (OrgApacheLuceneIndexMergeTrigger_Enum)[self ordinal];
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexMergeTrigger class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 5 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(OrgApacheLuceneIndexMergeTrigger, SEGMENT_FLUSH) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneIndexMergeTrigger_initWithNSString_withInt_(e, @"SEGMENT_FLUSH", 0);
    (JreEnum(OrgApacheLuceneIndexMergeTrigger, FULL_FLUSH) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneIndexMergeTrigger_initWithNSString_withInt_(e, @"FULL_FLUSH", 1);
    (JreEnum(OrgApacheLuceneIndexMergeTrigger, EXPLICIT) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneIndexMergeTrigger_initWithNSString_withInt_(e, @"EXPLICIT", 2);
    (JreEnum(OrgApacheLuceneIndexMergeTrigger, MERGE_FINISHED) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneIndexMergeTrigger_initWithNSString_withInt_(e, @"MERGE_FINISHED", 3);
    (JreEnum(OrgApacheLuceneIndexMergeTrigger, CLOSING) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneIndexMergeTrigger_initWithNSString_withInt_(e, @"CLOSING", 4);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexMergeTrigger)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "SEGMENT_FLUSH", "SEGMENT_FLUSH", 0x4019, "Lorg.apache.lucene.index.MergeTrigger;", &JreEnum(OrgApacheLuceneIndexMergeTrigger, SEGMENT_FLUSH), NULL, .constantValue.asLong = 0 },
    { "FULL_FLUSH", "FULL_FLUSH", 0x4019, "Lorg.apache.lucene.index.MergeTrigger;", &JreEnum(OrgApacheLuceneIndexMergeTrigger, FULL_FLUSH), NULL, .constantValue.asLong = 0 },
    { "EXPLICIT", "EXPLICIT", 0x4019, "Lorg.apache.lucene.index.MergeTrigger;", &JreEnum(OrgApacheLuceneIndexMergeTrigger, EXPLICIT), NULL, .constantValue.asLong = 0 },
    { "MERGE_FINISHED", "MERGE_FINISHED", 0x4019, "Lorg.apache.lucene.index.MergeTrigger;", &JreEnum(OrgApacheLuceneIndexMergeTrigger, MERGE_FINISHED), NULL, .constantValue.asLong = 0 },
    { "CLOSING", "CLOSING", 0x4019, "Lorg.apache.lucene.index.MergeTrigger;", &JreEnum(OrgApacheLuceneIndexMergeTrigger, CLOSING), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.index.MergeTrigger;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMergeTrigger = { 2, "MergeTrigger", "org.apache.lucene.index", NULL, 0x4011, 0, NULL, 5, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/index/MergeTrigger;>;" };
  return &_OrgApacheLuceneIndexMergeTrigger;
}

@end

void OrgApacheLuceneIndexMergeTrigger_initWithNSString_withInt_(OrgApacheLuceneIndexMergeTrigger *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneIndexMergeTrigger_values() {
  OrgApacheLuceneIndexMergeTrigger_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneIndexMergeTrigger_values_ count:5 type:OrgApacheLuceneIndexMergeTrigger_class_()];
}

OrgApacheLuceneIndexMergeTrigger *OrgApacheLuceneIndexMergeTrigger_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneIndexMergeTrigger_initialize();
  for (int i = 0; i < 5; i++) {
    OrgApacheLuceneIndexMergeTrigger *e = OrgApacheLuceneIndexMergeTrigger_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

OrgApacheLuceneIndexMergeTrigger *OrgApacheLuceneIndexMergeTrigger_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneIndexMergeTrigger_initialize();
  if (ordinal >= 5) {
    return nil;
  }
  return OrgApacheLuceneIndexMergeTrigger_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMergeTrigger)
