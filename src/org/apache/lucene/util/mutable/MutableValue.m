//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValue.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"

@implementation OrgApacheLuceneUtilMutableMutableValue

- (void)copy__WithOrgApacheLuceneUtilMutableMutableValue:(OrgApacheLuceneUtilMutableMutableValue *)source {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneUtilMutableMutableValue *)duplicate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)equalsSameTypeWithId:(id)other {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)compareSameTypeWithId:(id)other {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)toObject {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)exists {
  return exists_;
}

- (jint)compareToWithId:(OrgApacheLuceneUtilMutableMutableValue *)other {
  check_class_cast(other, [OrgApacheLuceneUtilMutableMutableValue class]);
  IOSClass *c1 = [self getClass];
  IOSClass *c2 = [((OrgApacheLuceneUtilMutableMutableValue *) nil_chk(other)) getClass];
  if (c1 != c2) {
    jint c = ((jint) [c1 hash]) - ((jint) [c2 hash]);
    if (c == 0) {
      c = [((NSString *) nil_chk([c1 getCanonicalName])) compareToWithId:[c2 getCanonicalName]];
    }
    return c;
  }
  return [self compareSameTypeWithId:other];
}

- (jboolean)isEqual:(id)other {
  return ([self getClass] == [nil_chk(other) getClass]) && [self equalsSameTypeWithId:other];
}

- (NSUInteger)hash {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  return [self exists] ? [nil_chk([self toObject]) description] : @"(null)";
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilMutableMutableValue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "copy__WithOrgApacheLuceneUtilMutableMutableValue:", "copy", "V", 0x401, NULL, NULL },
    { "duplicate", NULL, "Lorg.apache.lucene.util.mutable.MutableValue;", 0x401, NULL, NULL },
    { "equalsSameTypeWithId:", "equalsSameType", "Z", 0x401, NULL, NULL },
    { "compareSameTypeWithId:", "compareSameType", "I", 0x401, NULL, NULL },
    { "toObject", NULL, "Ljava.lang.Object;", 0x401, NULL, NULL },
    { "exists", NULL, "Z", 0x1, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x401, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "exists_", NULL, 0x1, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilMutableMutableValue = { 2, "MutableValue", "org.apache.lucene.util.mutable", NULL, 0x401, 11, methods, 1, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/util/mutable/MutableValue;>;" };
  return &_OrgApacheLuceneUtilMutableMutableValue;
}

@end

void OrgApacheLuceneUtilMutableMutableValue_init(OrgApacheLuceneUtilMutableMutableValue *self) {
  NSObject_init(self);
  self->exists_ = true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilMutableMutableValue)
