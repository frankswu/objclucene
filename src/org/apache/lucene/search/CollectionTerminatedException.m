//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/CollectionTerminatedException.java
//

#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/search/CollectionTerminatedException.h"

@implementation OrgApacheLuceneSearchCollectionTerminatedException

- (instancetype)init {
  OrgApacheLuceneSearchCollectionTerminatedException_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CollectionTerminatedException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchCollectionTerminatedException = { 2, "CollectionTerminatedException", "org.apache.lucene.search", NULL, 0x11, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchCollectionTerminatedException;
}

@end

void OrgApacheLuceneSearchCollectionTerminatedException_init(OrgApacheLuceneSearchCollectionTerminatedException *self) {
  JavaLangRuntimeException_init(self);
}

OrgApacheLuceneSearchCollectionTerminatedException *new_OrgApacheLuceneSearchCollectionTerminatedException_init() {
  OrgApacheLuceneSearchCollectionTerminatedException *self = [OrgApacheLuceneSearchCollectionTerminatedException alloc];
  OrgApacheLuceneSearchCollectionTerminatedException_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchCollectionTerminatedException)