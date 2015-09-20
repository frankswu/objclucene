//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/StatePair.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/util/automaton/StatePair.h"

@implementation OrgApacheLuceneUtilAutomatonStatePair

- (instancetype)initWithInt:(jint)s
                    withInt:(jint)s1
                    withInt:(jint)s2 {
  OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_withInt_(self, s, s1, s2);
  return self;
}

- (instancetype)initWithInt:(jint)s1
                    withInt:(jint)s2 {
  OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(self, s1, s2);
  return self;
}

- (jboolean)isEqual:(id)obj {
  if ([obj isKindOfClass:[OrgApacheLuceneUtilAutomatonStatePair class]]) {
    OrgApacheLuceneUtilAutomatonStatePair *p = (OrgApacheLuceneUtilAutomatonStatePair *) check_class_cast(obj, [OrgApacheLuceneUtilAutomatonStatePair class]);
    return ((OrgApacheLuceneUtilAutomatonStatePair *) nil_chk(p))->s1_ == s1_ && p->s2_ == s2_;
  }
  else return false;
}

- (NSUInteger)hash {
  return s1_ ^ s2_;
}

- (NSString *)description {
  return JreStrcat("$I$IC", @"StatePair(s1=", s1_, @" s2=", s2_, ')');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withInt:", "StatePair", NULL, 0x0, NULL, NULL },
    { "initWithInt:withInt:", "StatePair", NULL, 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "s_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "s1_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "s2_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonStatePair = { 2, "StatePair", "org.apache.lucene.util.automaton", NULL, 0x1, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilAutomatonStatePair;
}

@end

void OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_withInt_(OrgApacheLuceneUtilAutomatonStatePair *self, jint s, jint s1, jint s2) {
  NSObject_init(self);
  self->s_ = s;
  self->s1_ = s1;
  self->s2_ = s2;
}

OrgApacheLuceneUtilAutomatonStatePair *new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_withInt_(jint s, jint s1, jint s2) {
  OrgApacheLuceneUtilAutomatonStatePair *self = [OrgApacheLuceneUtilAutomatonStatePair alloc];
  OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_withInt_(self, s, s1, s2);
  return self;
}

void OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(OrgApacheLuceneUtilAutomatonStatePair *self, jint s1, jint s2) {
  NSObject_init(self);
  self->s1_ = s1;
  self->s2_ = s2;
  self->s_ = -1;
}

OrgApacheLuceneUtilAutomatonStatePair *new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(jint s1, jint s2) {
  OrgApacheLuceneUtilAutomatonStatePair *self = [OrgApacheLuceneUtilAutomatonStatePair alloc];
  OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(self, s1, s2);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonStatePair)
