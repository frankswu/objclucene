//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/IntsRef.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/util/IntsRef.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilIntsRef)

IOSIntArray *OrgApacheLuceneUtilIntsRef_EMPTY_INTS;

@implementation OrgApacheLuceneUtilIntsRef

+ (IOSIntArray *)EMPTY_INTS {
  return OrgApacheLuceneUtilIntsRef_EMPTY_INTS;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilIntsRef_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)capacity {
  OrgApacheLuceneUtilIntsRef_initWithInt_(self, capacity);
  return self;
}

- (instancetype)initWithIntArray:(IOSIntArray *)ints
                         withInt:(jint)offset
                         withInt:(jint)length {
  OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(self, ints, offset, length);
  return self;
}

- (OrgApacheLuceneUtilIntsRef *)clone {
  return create_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(ints_, offset_, length_);
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 0;
  jint end = offset_ + length_;
  for (jint i = offset_; i < end; i++) {
    result = prime * result + IOSIntArray_Get(nil_chk(ints_), i);
  }
  return result;
}

- (jboolean)isEqual:(id)other {
  if (other == nil) {
    return false;
  }
  if ([other isKindOfClass:[OrgApacheLuceneUtilIntsRef class]]) {
    return [self intsEqualsWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *) cast_chk(other, [OrgApacheLuceneUtilIntsRef class])];
  }
  return false;
}

- (jboolean)intsEqualsWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)other {
  if (length_ == ((OrgApacheLuceneUtilIntsRef *) nil_chk(other))->length_) {
    jint otherUpto = other->offset_;
    IOSIntArray *otherInts = other->ints_;
    jint end = offset_ + length_;
    for (jint upto = offset_; upto < end; upto++, otherUpto++) {
      if (IOSIntArray_Get(nil_chk(ints_), upto) != IOSIntArray_Get(nil_chk(otherInts), otherUpto)) {
        return false;
      }
    }
    return true;
  }
  else {
    return false;
  }
}

- (jint)compareToWithId:(OrgApacheLuceneUtilIntsRef *)other {
  cast_chk(other, [OrgApacheLuceneUtilIntsRef class]);
  if (self == other) return 0;
  IOSIntArray *aInts = self->ints_;
  jint aUpto = self->offset_;
  IOSIntArray *bInts = ((OrgApacheLuceneUtilIntsRef *) nil_chk(other))->ints_;
  jint bUpto = other->offset_;
  jint aStop = aUpto + JavaLangMath_minWithInt_withInt_(self->length_, other->length_);
  while (aUpto < aStop) {
    jint aInt = IOSIntArray_Get(nil_chk(aInts), aUpto++);
    jint bInt = IOSIntArray_Get(nil_chk(bInts), bUpto++);
    if (aInt > bInt) {
      return 1;
    }
    else if (aInt < bInt) {
      return -1;
    }
  }
  return self->length_ - other->length_;
}

- (NSString *)description {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [sb appendWithChar:'['];
  jint end = offset_ + length_;
  for (jint i = offset_; i < end; i++) {
    if (i > offset_) {
      [sb appendWithChar:' '];
    }
    [sb appendWithNSString:JavaLangInteger_toHexStringWithInt_(IOSIntArray_Get(nil_chk(ints_), i))];
  }
  [sb appendWithChar:']'];
  return [sb description];
}

+ (OrgApacheLuceneUtilIntsRef *)deepCopyOfWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)other {
  return OrgApacheLuceneUtilIntsRef_deepCopyOfWithOrgApacheLuceneUtilIntsRef_(other);
}

- (jboolean)isValid {
  if (ints_ == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"ints is null");
  }
  if (length_ < 0) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I", @"length is negative: ", length_));
  }
  if (length_ > ints_->size_) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I", @"length is out of bounds: ", length_, @",ints.length=", ints_->size_));
  }
  if (offset_ < 0) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I", @"offset is negative: ", offset_));
  }
  if (offset_ > ints_->size_) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I", @"offset out of bounds: ", offset_, @",ints.length=", ints_->size_));
  }
  if (offset_ + length_ < 0) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I", @"offset+length is negative: offset=", offset_, @",length=", length_));
  }
  if (offset_ + length_ > ints_->size_) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$I$I", @"offset+length out of bounds: offset=", offset_, @",length=", length_, @",ints.length=", ints_->size_));
  }
  return true;
}

- (void)dealloc {
  RELEASE_(ints_);
  [super dealloc];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilIntsRef class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilIntsRef_EMPTY_INTS, [IOSIntArray newArrayWithLength:0]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilIntsRef)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "IntsRef", NULL, 0x1, NULL, NULL },
    { "initWithInt:", "IntsRef", NULL, 0x1, NULL, NULL },
    { "initWithIntArray:withInt:withInt:", "IntsRef", NULL, 0x1, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.util.IntsRef;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "intsEqualsWithOrgApacheLuceneUtilIntsRef:", "intsEquals", "Z", 0x1, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "deepCopyOfWithOrgApacheLuceneUtilIntsRef:", "deepCopyOf", "Lorg.apache.lucene.util.IntsRef;", 0x9, NULL, NULL },
    { "isValid", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_INTS", "EMPTY_INTS", 0x19, "[I", &OrgApacheLuceneUtilIntsRef_EMPTY_INTS, NULL, .constantValue.asLong = 0 },
    { "ints_", NULL, 0x1, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "offset_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "length_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIntsRef = { 2, "IntsRef", "org.apache.lucene.util", NULL, 0x11, 11, methods, 4, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/util/IntsRef;>;Ljava/lang/Cloneable;" };
  return &_OrgApacheLuceneUtilIntsRef;
}

@end

void OrgApacheLuceneUtilIntsRef_init(OrgApacheLuceneUtilIntsRef *self) {
  NSObject_init(self);
  JreStrongAssign(&self->ints_, OrgApacheLuceneUtilIntsRef_EMPTY_INTS);
}

OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilIntsRef, init)
}

OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilIntsRef, init)
}

void OrgApacheLuceneUtilIntsRef_initWithInt_(OrgApacheLuceneUtilIntsRef *self, jint capacity) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->ints_, [IOSIntArray newArrayWithLength:capacity]);
}

OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_initWithInt_(jint capacity) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilIntsRef, initWithInt_, capacity)
}

OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_initWithInt_(jint capacity) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilIntsRef, initWithInt_, capacity)
}

void OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(OrgApacheLuceneUtilIntsRef *self, IOSIntArray *ints, jint offset, jint length) {
  NSObject_init(self);
  JreStrongAssign(&self->ints_, ints);
  self->offset_ = offset;
  self->length_ = length;
  JreAssert(([self isValid]), (@"org/apache/lucene/util/IntsRef.java:58 condition failed: assert isValid();"));
}

OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(IOSIntArray *ints, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilIntsRef, initWithIntArray_withInt_withInt_, ints, offset, length)
}

OrgApacheLuceneUtilIntsRef *create_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(IOSIntArray *ints, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilIntsRef, initWithIntArray_withInt_withInt_, ints, offset, length)
}

OrgApacheLuceneUtilIntsRef *OrgApacheLuceneUtilIntsRef_deepCopyOfWithOrgApacheLuceneUtilIntsRef_(OrgApacheLuceneUtilIntsRef *other) {
  OrgApacheLuceneUtilIntsRef_initialize();
  return create_OrgApacheLuceneUtilIntsRef_initWithIntArray_withInt_withInt_(JavaUtilArrays_copyOfRangeWithIntArray_withInt_withInt_(((OrgApacheLuceneUtilIntsRef *) nil_chk(other))->ints_, other->offset_, other->offset_ + other->length_), 0, other->length_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIntsRef)
