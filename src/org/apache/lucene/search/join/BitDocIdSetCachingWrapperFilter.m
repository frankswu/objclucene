//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BitDocIdSetCachingWrapperFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Collections.h"
#include "java/util/Map.h"
#include "java/util/WeakHashMap.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/join/BitDocIdSetCachingWrapperFilter.h"
#include "org/apache/lucene/search/join/BitDocIdSetFilter.h"
#include "org/apache/lucene/util/BitDocIdSet.h"

@interface OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter () {
 @public
  OrgApacheLuceneSearchFilter *filter_;
  id<JavaUtilMap> cache_;
}

- (OrgApacheLuceneUtilBitDocIdSet *)docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                                  withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter, filter_, OrgApacheLuceneSearchFilter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter, cache_, id<JavaUtilMap>)

__attribute__((unused)) static OrgApacheLuceneUtilBitDocIdSet *OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *self, OrgApacheLuceneSearchDocIdSet *docIdSet, OrgApacheLuceneIndexLeafReader *reader);

@implementation OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter {
  OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(self, filter);
  return self;
}

- (OrgApacheLuceneSearchFilter *)getFilter {
  return filter_;
}

- (OrgApacheLuceneUtilBitDocIdSet *)docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                                  withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader {
  return OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneIndexLeafReader_(self, docIdSet, reader);
}

- (OrgApacheLuceneUtilBitDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneIndexLeafReader *reader = [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader];
  id key = [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) getCoreCacheKey];
  OrgApacheLuceneSearchDocIdSet *docIdSet = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:key];
  if (docIdSet == nil) {
    docIdSet = [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneUtilBits:nil];
    docIdSet = OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneIndexLeafReader_(self, docIdSet, reader);
    if (docIdSet == nil) {
      docIdSet = JreLoadStatic(OrgApacheLuceneSearchDocIdSet, EMPTY);
    }
    [cache_ putWithId:key withId:docIdSet];
  }
  return docIdSet == JreLoadStatic(OrgApacheLuceneSearchDocIdSet, EMPTY) ? nil : (OrgApacheLuceneUtilBitDocIdSet *) cast_chk(docIdSet, [OrgApacheLuceneUtilBitDocIdSet class]);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$C$C", [[self getClass] getSimpleName], '(', [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) toStringWithNSString:field], ')');
}

- (jboolean)isEqual:(id)o {
  if ([super isEqual:o] == false) {
    return false;
  }
  OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *other = (OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *) cast_chk(o, [OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter class]);
  return [((OrgApacheLuceneSearchFilter *) nil_chk(self->filter_)) isEqual:((OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *) nil_chk(other))->filter_];
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + ((jint) [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) hash]);
}

- (void)dealloc {
  RELEASE_(filter_);
  RELEASE_(cache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchFilter:", "BitDocIdSetCachingWrapperFilter", NULL, 0x1, NULL, NULL },
    { "getFilter", NULL, "Lorg.apache.lucene.search.Filter;", 0x1, NULL, NULL },
    { "docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:withOrgApacheLuceneIndexLeafReader:", "docIdSetToCache", "Lorg.apache.lucene.util.BitDocIdSet;", 0x2, "Ljava.io.IOException;", NULL },
    { "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:", "getDocIdSet", "Lorg.apache.lucene.util.BitDocIdSet;", 0x1, "Ljava.io.IOException;", NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "filter_", NULL, 0x12, "Lorg.apache.lucene.search.Filter;", NULL, NULL, .constantValue.asLong = 0 },
    { "cache_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/lucene/search/DocIdSet;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter = { 2, "BitDocIdSetCachingWrapperFilter", "org.apache.lucene.search.join", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter;
}

@end

void OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter) {
  OrgApacheLuceneSearchJoinBitDocIdSetFilter_init(self);
  JreStrongAssign(&self->cache_, JavaUtilCollections_synchronizedMapWithJavaUtilMap_(create_JavaUtilWeakHashMap_init()));
  JreStrongAssign(&self->filter_, filter);
}

OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *new_OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_, filter)
}

OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *create_OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_, filter)
}

OrgApacheLuceneUtilBitDocIdSet *OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *self, OrgApacheLuceneSearchDocIdSet *docIdSet, OrgApacheLuceneIndexLeafReader *reader) {
  OrgApacheLuceneSearchDocIdSetIterator *it = [((OrgApacheLuceneSearchDocIdSet *) nil_chk(docIdSet)) iterator];
  if (it == nil) {
    return nil;
  }
  else {
    OrgApacheLuceneUtilBitDocIdSet_Builder *builder = create_OrgApacheLuceneUtilBitDocIdSet_Builder_initWithInt_([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc]);
    [builder or__WithOrgApacheLuceneSearchDocIdSetIterator:it];
    return [builder build];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter)
