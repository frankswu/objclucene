//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/util/StringUtils.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/core/util/StringUtils.h"

@implementation OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils

+ (NSString *)toStringWithId:(id)obj {
  return OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_toStringWithId_(obj);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "toStringWithId:", "toString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils = { 2, "StringUtils", "org.apache.lucene.queryparser.flexible.core.util", NULL, 0x11, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils;
}

@end

NSString *OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_toStringWithId_(id obj) {
  OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_initialize();
  if (obj != nil) {
    return [obj description];
  }
  else {
    return nil;
  }
}

void OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_init(OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils *new_OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_init() {
  OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils *self = [OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils alloc];
  OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleCoreUtilStringUtils)
