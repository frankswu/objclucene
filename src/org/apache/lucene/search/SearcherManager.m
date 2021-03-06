//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SearcherManager.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/ReferenceManager.h"
#include "org/apache/lucene/search/SearcherFactory.h"
#include "org/apache/lucene/search/SearcherManager.h"
#include "org/apache/lucene/store/Directory.h"

@interface OrgApacheLuceneSearchSearcherManager () {
 @public
  OrgApacheLuceneSearchSearcherFactory *searcherFactory_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSearcherManager, searcherFactory_, OrgApacheLuceneSearchSearcherFactory *)

@implementation OrgApacheLuceneSearchSearcherManager

- (instancetype)initWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                            withBoolean:(jboolean)applyAllDeletes
               withOrgApacheLuceneSearchSearcherFactory:(OrgApacheLuceneSearchSearcherFactory *)searcherFactory {
  OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherFactory_(self, writer, applyAllDeletes, searcherFactory);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
             withOrgApacheLuceneSearchSearcherFactory:(OrgApacheLuceneSearchSearcherFactory *)searcherFactory {
  OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherFactory_(self, dir, searcherFactory);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)reader
                   withOrgApacheLuceneSearchSearcherFactory:(OrgApacheLuceneSearchSearcherFactory *)searcherFactory {
  OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneSearchSearcherFactory_(self, reader, searcherFactory);
  return self;
}

- (void)decRefWithId:(OrgApacheLuceneSearchIndexSearcher *)reference {
  [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(reference)) getIndexReader])) decRef];
}

- (OrgApacheLuceneSearchIndexSearcher *)refreshIfNeededWithId:(OrgApacheLuceneSearchIndexSearcher *)referenceToRefresh {
  OrgApacheLuceneIndexIndexReader *r = [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(referenceToRefresh)) getIndexReader];
  JreAssert(([r isKindOfClass:[OrgApacheLuceneIndexDirectoryReader class]]), (JreStrcat("$@", @"searcher's IndexReader should be a DirectoryReader, but got ", r)));
  OrgApacheLuceneIndexIndexReader *newReader = OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_((OrgApacheLuceneIndexDirectoryReader *) cast_chk(r, [OrgApacheLuceneIndexDirectoryReader class]));
  if (newReader == nil) {
    return nil;
  }
  else {
    return OrgApacheLuceneSearchSearcherManager_getSearcherWithOrgApacheLuceneSearchSearcherFactory_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReader_(searcherFactory_, newReader, r);
  }
}

- (jboolean)tryIncRefWithId:(OrgApacheLuceneSearchIndexSearcher *)reference {
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(reference)) getIndexReader])) tryIncRef];
}

- (jint)getRefCountWithId:(OrgApacheLuceneSearchIndexSearcher *)reference {
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(reference)) getIndexReader])) getRefCount];
}

- (jboolean)isSearcherCurrent {
  OrgApacheLuceneSearchIndexSearcher *searcher = [self acquire];
  @try {
    OrgApacheLuceneIndexIndexReader *r = [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader];
    JreAssert(([r isKindOfClass:[OrgApacheLuceneIndexDirectoryReader class]]), (JreStrcat("$@", @"searcher's IndexReader should be a DirectoryReader, but got ", r)));
    return [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(((OrgApacheLuceneIndexDirectoryReader *) cast_chk(r, [OrgApacheLuceneIndexDirectoryReader class])))) isCurrent];
  }
  @finally {
    [self release__WithId:searcher];
  }
}

+ (OrgApacheLuceneSearchIndexSearcher *)getSearcherWithOrgApacheLuceneSearchSearcherFactory:(OrgApacheLuceneSearchSearcherFactory *)searcherFactory
                                                        withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                        withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)previousReader {
  return OrgApacheLuceneSearchSearcherManager_getSearcherWithOrgApacheLuceneSearchSearcherFactory_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReader_(searcherFactory, reader, previousReader);
}

- (void)dealloc {
  RELEASE_(searcherFactory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexIndexWriter:withBoolean:withOrgApacheLuceneSearchSearcherFactory:", "SearcherManager", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneSearchSearcherFactory:", "SearcherManager", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneIndexDirectoryReader:withOrgApacheLuceneSearchSearcherFactory:", "SearcherManager", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "decRefWithId:", "decRef", "V", 0x4, "Ljava.io.IOException;", "(Lorg/apache/lucene/search/IndexSearcher;)V" },
    { "refreshIfNeededWithId:", "refreshIfNeeded", "Lorg.apache.lucene.search.IndexSearcher;", 0x4, "Ljava.io.IOException;", "(Lorg/apache/lucene/search/IndexSearcher;)Lorg/apache/lucene/search/IndexSearcher;" },
    { "tryIncRefWithId:", "tryIncRef", "Z", 0x4, NULL, "(Lorg/apache/lucene/search/IndexSearcher;)Z" },
    { "getRefCountWithId:", "getRefCount", "I", 0x4, NULL, "(Lorg/apache/lucene/search/IndexSearcher;)I" },
    { "isSearcherCurrent", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "getSearcherWithOrgApacheLuceneSearchSearcherFactory:withOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneIndexIndexReader:", "getSearcher", "Lorg.apache.lucene.search.IndexSearcher;", 0x9, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "searcherFactory_", NULL, 0x12, "Lorg.apache.lucene.search.SearcherFactory;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.IndexSearcher;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherManager = { 2, "SearcherManager", "org.apache.lucene.search", NULL, 0x11, 9, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/search/ReferenceManager<Lorg/apache/lucene/search/IndexSearcher;>;" };
  return &_OrgApacheLuceneSearchSearcherManager;
}

@end

void OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherFactory_(OrgApacheLuceneSearchSearcherManager *self, OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes, OrgApacheLuceneSearchSearcherFactory *searcherFactory) {
  OrgApacheLuceneSearchReferenceManager_init(self);
  if (searcherFactory == nil) {
    searcherFactory = create_OrgApacheLuceneSearchSearcherFactory_init();
  }
  JreStrongAssign(&self->searcherFactory_, searcherFactory);
  JreVolatileStrongAssign(&self->current_, OrgApacheLuceneSearchSearcherManager_getSearcherWithOrgApacheLuceneSearchSearcherFactory_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReader_(searcherFactory, OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneIndexIndexWriter_withBoolean_(writer, applyAllDeletes), nil));
}

OrgApacheLuceneSearchSearcherManager *new_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherFactory_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes, OrgApacheLuceneSearchSearcherFactory *searcherFactory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherFactory_, writer, applyAllDeletes, searcherFactory)
}

OrgApacheLuceneSearchSearcherManager *create_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherFactory_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes, OrgApacheLuceneSearchSearcherFactory *searcherFactory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherFactory_, writer, applyAllDeletes, searcherFactory)
}

void OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherFactory_(OrgApacheLuceneSearchSearcherManager *self, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneSearchSearcherFactory *searcherFactory) {
  OrgApacheLuceneSearchReferenceManager_init(self);
  if (searcherFactory == nil) {
    searcherFactory = create_OrgApacheLuceneSearchSearcherFactory_init();
  }
  JreStrongAssign(&self->searcherFactory_, searcherFactory);
  JreVolatileStrongAssign(&self->current_, OrgApacheLuceneSearchSearcherManager_getSearcherWithOrgApacheLuceneSearchSearcherFactory_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReader_(searcherFactory, OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneStoreDirectory_(dir), nil));
}

OrgApacheLuceneSearchSearcherManager *new_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherFactory_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneSearchSearcherFactory *searcherFactory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherFactory_, dir, searcherFactory)
}

OrgApacheLuceneSearchSearcherManager *create_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherFactory_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneSearchSearcherFactory *searcherFactory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherFactory_, dir, searcherFactory)
}

void OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneSearchSearcherFactory_(OrgApacheLuceneSearchSearcherManager *self, OrgApacheLuceneIndexDirectoryReader *reader, OrgApacheLuceneSearchSearcherFactory *searcherFactory) {
  OrgApacheLuceneSearchReferenceManager_init(self);
  if (searcherFactory == nil) {
    searcherFactory = create_OrgApacheLuceneSearchSearcherFactory_init();
  }
  JreStrongAssign(&self->searcherFactory_, searcherFactory);
  JreVolatileStrongAssign(&self->current_, OrgApacheLuceneSearchSearcherManager_getSearcherWithOrgApacheLuceneSearchSearcherFactory_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReader_(searcherFactory, reader, nil));
}

OrgApacheLuceneSearchSearcherManager *new_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneSearchSearcherFactory_(OrgApacheLuceneIndexDirectoryReader *reader, OrgApacheLuceneSearchSearcherFactory *searcherFactory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneSearchSearcherFactory_, reader, searcherFactory)
}

OrgApacheLuceneSearchSearcherManager *create_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneSearchSearcherFactory_(OrgApacheLuceneIndexDirectoryReader *reader, OrgApacheLuceneSearchSearcherFactory *searcherFactory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneSearchSearcherFactory_, reader, searcherFactory)
}

OrgApacheLuceneSearchIndexSearcher *OrgApacheLuceneSearchSearcherManager_getSearcherWithOrgApacheLuceneSearchSearcherFactory_withOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchSearcherFactory *searcherFactory, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneIndexIndexReader *previousReader) {
  OrgApacheLuceneSearchSearcherManager_initialize();
  jboolean success = false;
  OrgApacheLuceneSearchIndexSearcher *searcher;
  @try {
    searcher = [((OrgApacheLuceneSearchSearcherFactory *) nil_chk(searcherFactory)) newSearcherWithOrgApacheLuceneIndexIndexReader:reader withOrgApacheLuceneIndexIndexReader:previousReader];
    if ([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader] != reader) {
      @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@C", @"SearcherFactory must wrap exactly the provided reader (got ", [searcher getIndexReader], @" but expected ", reader, ')'));
    }
    success = true;
  }
  @finally {
    if (!success) {
      [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) decRef];
    }
  }
  return searcher;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherManager)
