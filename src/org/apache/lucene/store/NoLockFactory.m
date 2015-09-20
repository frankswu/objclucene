//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/NoLockFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/NoLockFactory.h"

@interface OrgApacheLuceneStoreNoLockFactory ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneStoreNoLockFactory_init(OrgApacheLuceneStoreNoLockFactory *self);

__attribute__((unused)) static OrgApacheLuceneStoreNoLockFactory *new_OrgApacheLuceneStoreNoLockFactory_init() NS_RETURNS_RETAINED;

@interface OrgApacheLuceneStoreNoLockFactory_NoLock ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneStoreNoLockFactory_NoLock_init(OrgApacheLuceneStoreNoLockFactory_NoLock *self);

__attribute__((unused)) static OrgApacheLuceneStoreNoLockFactory_NoLock *new_OrgApacheLuceneStoreNoLockFactory_NoLock_init() NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneStoreNoLockFactory)

OrgApacheLuceneStoreNoLockFactory *OrgApacheLuceneStoreNoLockFactory_INSTANCE_;
OrgApacheLuceneStoreNoLockFactory_NoLock *OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK_;

@implementation OrgApacheLuceneStoreNoLockFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreNoLockFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneStoreLock *)obtainLockWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                             withNSString:(NSString *)lockName {
  return OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK_;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneStoreNoLockFactory class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreNoLockFactory_INSTANCE_, new_OrgApacheLuceneStoreNoLockFactory_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK_, new_OrgApacheLuceneStoreNoLockFactory_NoLock_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneStoreNoLockFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NoLockFactory", NULL, 0x2, NULL, NULL },
    { "obtainLockWithOrgApacheLuceneStoreDirectory:withNSString:", "obtainLock", "Lorg.apache.lucene.store.Lock;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x19, "Lorg.apache.lucene.store.NoLockFactory;", &OrgApacheLuceneStoreNoLockFactory_INSTANCE_, NULL, .constantValue.asLong = 0 },
    { "SINGLETON_LOCK_", NULL, 0x18, "Lorg.apache.lucene.store.NoLockFactory$NoLock;", &OrgApacheLuceneStoreNoLockFactory_SINGLETON_LOCK_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.store.NoLockFactory$NoLock;"};
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNoLockFactory = { 2, "NoLockFactory", "org.apache.lucene.store", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneStoreNoLockFactory;
}

@end

void OrgApacheLuceneStoreNoLockFactory_init(OrgApacheLuceneStoreNoLockFactory *self) {
  OrgApacheLuceneStoreLockFactory_init(self);
}

OrgApacheLuceneStoreNoLockFactory *new_OrgApacheLuceneStoreNoLockFactory_init() {
  OrgApacheLuceneStoreNoLockFactory *self = [OrgApacheLuceneStoreNoLockFactory alloc];
  OrgApacheLuceneStoreNoLockFactory_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNoLockFactory)

@implementation OrgApacheLuceneStoreNoLockFactory_NoLock

- (void)close {
}

- (void)ensureValid {
}

- (NSString *)description {
  return @"NoLock";
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreNoLockFactory_NoLock_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "ensureValid", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNoLockFactory_NoLock = { 2, "NoLock", "org.apache.lucene.store", "NoLockFactory", 0xa, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreNoLockFactory_NoLock;
}

@end

void OrgApacheLuceneStoreNoLockFactory_NoLock_init(OrgApacheLuceneStoreNoLockFactory_NoLock *self) {
  OrgApacheLuceneStoreLock_init(self);
}

OrgApacheLuceneStoreNoLockFactory_NoLock *new_OrgApacheLuceneStoreNoLockFactory_NoLock_init() {
  OrgApacheLuceneStoreNoLockFactory_NoLock *self = [OrgApacheLuceneStoreNoLockFactory_NoLock alloc];
  OrgApacheLuceneStoreNoLockFactory_NoLock_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNoLockFactory_NoLock)
