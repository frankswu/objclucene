//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/LockObtainFailedException.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/store/LockObtainFailedException.h"

@implementation OrgApacheLuceneStoreLockObtainFailedException

- (instancetype)initWithNSString:(NSString *)message {
  OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(self, message);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
                 withNSException:(NSException *)cause {
  OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withNSException_(self, message, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "LockObtainFailedException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withNSException:", "LockObtainFailedException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreLockObtainFailedException = { 2, "LockObtainFailedException", "org.apache.lucene.store", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreLockObtainFailedException;
}

@end

void OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(OrgApacheLuceneStoreLockObtainFailedException *self, NSString *message) {
  JavaIoIOException_initWithNSString_(self, message);
}

OrgApacheLuceneStoreLockObtainFailedException *new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreLockObtainFailedException, initWithNSString_, message)
}

OrgApacheLuceneStoreLockObtainFailedException *create_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreLockObtainFailedException, initWithNSString_, message)
}

void OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withNSException_(OrgApacheLuceneStoreLockObtainFailedException *self, NSString *message, NSException *cause) {
  JavaIoIOException_initWithNSString_withNSException_(self, message, cause);
}

OrgApacheLuceneStoreLockObtainFailedException *new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withNSException_(NSString *message, NSException *cause) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreLockObtainFailedException, initWithNSString_withNSException_, message, cause)
}

OrgApacheLuceneStoreLockObtainFailedException *create_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withNSException_(NSString *message, NSException *cause) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreLockObtainFailedException, initWithNSString_withNSException_, message, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreLockObtainFailedException)
