//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/mutable/MutableValueInt.java
//

#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/util/mutable/MutableValue.h"
#include "org/apache/lucene/util/mutable/MutableValueInt.h"

@implementation OrgApacheLuceneUtilMutableMutableValueInt

- (id)toObject {
  JreAssert((exists_ || 0 == value_), (@"org/apache/lucene/util/mutable/MutableValueInt.java:30 condition failed: assert exists || 0 == value;"));
  return exists_ ? JavaLangInteger_valueOfWithInt_(value_) : nil;
}

- (void)copy__WithOrgApacheLuceneUtilMutableMutableValue:(OrgApacheLuceneUtilMutableMutableValue *)source {
  OrgApacheLuceneUtilMutableMutableValueInt *s = (OrgApacheLuceneUtilMutableMutableValueInt *) check_class_cast(source, [OrgApacheLuceneUtilMutableMutableValueInt class]);
  value_ = ((OrgApacheLuceneUtilMutableMutableValueInt *) nil_chk(s))->value_;
  exists_ = s->exists_;
}

- (OrgApacheLuceneUtilMutableMutableValue *)duplicate {
  OrgApacheLuceneUtilMutableMutableValueInt *v = [new_OrgApacheLuceneUtilMutableMutableValueInt_init() autorelease];
  v->value_ = self->value_;
  v->exists_ = self->exists_;
  return v;
}

- (jboolean)equalsSameTypeWithId:(id)other {
  JreAssert((exists_ || 0 == value_), (@"org/apache/lucene/util/mutable/MutableValueInt.java:51 condition failed: assert exists || 0 == value;"));
  OrgApacheLuceneUtilMutableMutableValueInt *b = (OrgApacheLuceneUtilMutableMutableValueInt *) check_class_cast(other, [OrgApacheLuceneUtilMutableMutableValueInt class]);
  return value_ == ((OrgApacheLuceneUtilMutableMutableValueInt *) nil_chk(b))->value_ && exists_ == b->exists_;
}

- (jint)compareSameTypeWithId:(id)other {
  JreAssert((exists_ || 0 == value_), (@"org/apache/lucene/util/mutable/MutableValueInt.java:58 condition failed: assert exists || 0 == value;"));
  OrgApacheLuceneUtilMutableMutableValueInt *b = (OrgApacheLuceneUtilMutableMutableValueInt *) check_class_cast(other, [OrgApacheLuceneUtilMutableMutableValueInt class]);
  jint ai = value_;
  jint bi = ((OrgApacheLuceneUtilMutableMutableValueInt *) nil_chk(b))->value_;
  if (ai < bi) return -1;
  else if (ai > bi) return 1;
  if (exists_ == b->exists_) return 0;
  return exists_ ? 1 : -1;
}

- (NSUInteger)hash {
  JreAssert((exists_ || 0 == value_), (@"org/apache/lucene/util/mutable/MutableValueInt.java:72 condition failed: assert exists || 0 == value;"));
  return (JreRShift32(value_, 8)) + (JreRShift32(value_, 16));
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilMutableMutableValueInt_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toObject", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "copy__WithOrgApacheLuceneUtilMutableMutableValue:", "copy", "V", 0x1, NULL, NULL },
    { "duplicate", NULL, "Lorg.apache.lucene.util.mutable.MutableValue;", 0x1, NULL, NULL },
    { "equalsSameTypeWithId:", "equalsSameType", "Z", 0x1, NULL, NULL },
    { "compareSameTypeWithId:", "compareSameType", "I", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "value_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilMutableMutableValueInt = { 2, "MutableValueInt", "org.apache.lucene.util.mutable", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilMutableMutableValueInt;
}

@end

void OrgApacheLuceneUtilMutableMutableValueInt_init(OrgApacheLuceneUtilMutableMutableValueInt *self) {
  OrgApacheLuceneUtilMutableMutableValue_init(self);
}

OrgApacheLuceneUtilMutableMutableValueInt *new_OrgApacheLuceneUtilMutableMutableValueInt_init() {
  OrgApacheLuceneUtilMutableMutableValueInt *self = [OrgApacheLuceneUtilMutableMutableValueInt alloc];
  OrgApacheLuceneUtilMutableMutableValueInt_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilMutableMutableValueInt)
