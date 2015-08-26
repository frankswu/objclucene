//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/FlagsAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/analysis/tokenattributes/FlagsAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/FlagsAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"

@interface OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl () {
 @public
  jint flags_;
}

@end

@implementation OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl

- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init(self);
  return self;
}

- (jint)getFlags {
  return flags_;
}

- (void)setFlagsWithInt:(jint)flags {
  self->flags_ = flags;
}

- (void)clear {
  flags_ = 0;
}

- (jboolean)isEqual:(id)other {
  if (self == other) {
    return YES;
  }
  if ([other isKindOfClass:[OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl class]]) {
    return ((OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *) nil_chk(((OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *) check_class_cast(other, [OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl class]))))->flags_ == flags_;
  }
  return NO;
}

- (NSUInteger)hash {
  return flags_;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute>) check_protocol_cast(target, OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute>) nil_chk(t)) setFlagsWithInt:flags_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_class_() withNSString:@"flags" withId:JavaLangInteger_valueOfWithInt_(flags_)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FlagsAttributeImpl", NULL, 0x1, NULL, NULL },
    { "getFlags", NULL, "I", 0x1, NULL, NULL },
    { "setFlagsWithInt:", "setFlags", "V", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "copyToWithOrgApacheLuceneUtilAttributeImpl:", "copyTo", "V", 0x1, NULL, NULL },
    { "reflectWithWithOrgApacheLuceneUtilAttributeReflector:", "reflectWith", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "flags_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl = { 2, "FlagsAttributeImpl", "org.apache.lucene.analysis.tokenattributes", NULL, 0x1, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  self->flags_ = 0;
}

OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init() {
  OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *self = [OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl alloc];
  OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl)