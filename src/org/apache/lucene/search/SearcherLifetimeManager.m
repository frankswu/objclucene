//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SearcherLifetimeManager.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/Comparable.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/SearcherLifetimeManager.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneSearchSearcherLifetimeManager () {
 @public
  volatile_jboolean closed_;
  JavaUtilConcurrentConcurrentHashMap *searchers_;
}

- (void)ensureOpen;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSearcherLifetimeManager, searchers_, JavaUtilConcurrentConcurrentHashMap *)

__attribute__((unused)) static void OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(OrgApacheLuceneSearchSearcherLifetimeManager *self);

@interface OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker : NSObject < JavaLangComparable, JavaIoCloseable > {
 @public
  OrgApacheLuceneSearchIndexSearcher *searcher_;
  jdouble recordTimeSec_;
  jlong version__;
}

- (instancetype)initWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (jint)compareToWithId:(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *)other;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker, searcher_, OrgApacheLuceneSearchIndexSearcher *)

__attribute__((unused)) static void OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *self, OrgApacheLuceneSearchIndexSearcher *searcher);

__attribute__((unused)) static OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *new_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchIndexSearcher *searcher) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker)

@interface OrgApacheLuceneSearchSearcherLifetimeManager_Pruner : NSObject

@end

@interface OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge () {
 @public
  jdouble maxAgeSec_;
}

@end

@implementation OrgApacheLuceneSearchSearcherLifetimeManager

- (void)ensureOpen {
  OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(self);
}

- (jlong)recordWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(self);
  jlong version_ = [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(((OrgApacheLuceneIndexDirectoryReader *) check_class_cast([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader], [OrgApacheLuceneIndexDirectoryReader class])))) getVersion];
  OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *tracker = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(searchers_)) getWithId:JavaLangLong_valueOfWithLong_(version_)];
  if (tracker == nil) {
    tracker = [new_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(searcher) autorelease];
    if ([searchers_ putIfAbsentWithId:JavaLangLong_valueOfWithLong_(version_) withId:tracker] != nil) {
      [tracker close];
    }
  }
  else if (tracker->searcher_ != searcher) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$@", @"the provided searcher has the same underlying reader version yet the searcher instance differs from before (new=", searcher, @" vs old=", tracker->searcher_)) autorelease];
  }
  return version_;
}

- (OrgApacheLuceneSearchIndexSearcher *)acquireWithLong:(jlong)version_ {
  OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(self);
  OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *tracker = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(searchers_)) getWithId:JavaLangLong_valueOfWithLong_(version_)];
  if (tracker != nil && [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(tracker->searcher_)) getIndexReader])) tryIncRef]) {
    return tracker->searcher_;
  }
  return nil;
}

- (void)release__WithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)s {
  [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(s)) getIndexReader])) decRef];
}

- (void)pruneWithOrgApacheLuceneSearchSearcherLifetimeManager_Pruner:(id<OrgApacheLuceneSearchSearcherLifetimeManager_Pruner>)pruner {
  @synchronized(self) {
    id<JavaUtilList> trackers = [new_JavaUtilArrayList_init() autorelease];
    for (OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker * __strong tracker in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(searchers_)) values])) {
      [trackers addWithId:tracker];
    }
    JavaUtilCollections_sortWithJavaUtilList_(trackers);
    jdouble lastRecordTimeSec = 0.0;
    jdouble now = JavaLangSystem_nanoTime() / OrgApacheLuceneSearchSearcherLifetimeManager_NANOS_PER_SEC;
    for (OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker * __strong tracker in trackers) {
      jdouble ageSec;
      if (lastRecordTimeSec == 0.0) {
        ageSec = 0.0;
      }
      else {
        ageSec = now - lastRecordTimeSec;
      }
      if ([((id<OrgApacheLuceneSearchSearcherLifetimeManager_Pruner>) nil_chk(pruner)) doPruneWithDouble:ageSec withOrgApacheLuceneSearchIndexSearcher:((OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *) nil_chk(tracker))->searcher_]) {
        [searchers_ removeWithId:JavaLangLong_valueOfWithLong_(tracker->version__)];
        [tracker close];
      }
      lastRecordTimeSec = tracker->recordTimeSec_;
    }
  }
}

- (void)close {
  @synchronized(self) {
    JreAssignVolatileBoolean(&closed_, true);
    id<JavaUtilList> toClose = [new_JavaUtilArrayList_initWithJavaUtilCollection_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(searchers_)) values]) autorelease];
    for (OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker * __strong tracker in toClose) {
      [searchers_ removeWithId:JavaLangLong_valueOfWithLong_(((OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *) nil_chk(tracker))->version__)];
    }
    OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(toClose);
    if ([searchers_ size] != 0) {
      @throw [new_JavaLangIllegalStateException_initWithNSString_(@"another thread called record while this SearcherLifetimeManager instance was being closed; not all searchers were closed") autorelease];
    }
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSearcherLifetimeManager_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(searchers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "ensureOpen", NULL, "V", 0x2, NULL, NULL },
    { "recordWithOrgApacheLuceneSearchIndexSearcher:", "record", "J", 0x1, "Ljava.io.IOException;", NULL },
    { "acquireWithLong:", "acquire", "Lorg.apache.lucene.search.IndexSearcher;", 0x1, NULL, NULL },
    { "release__WithOrgApacheLuceneSearchIndexSearcher:", "release", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "pruneWithOrgApacheLuceneSearchSearcherLifetimeManager_Pruner:", "prune", "V", 0x21, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x21, "Ljava.io.IOException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NANOS_PER_SEC", "NANOS_PER_SEC", 0x18, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneSearchSearcherLifetimeManager_NANOS_PER_SEC },
    { "closed_", NULL, 0x42, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "searchers_", NULL, 0x12, "Ljava.util.concurrent.ConcurrentHashMap;", NULL, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lorg/apache/lucene/search/SearcherLifetimeManager$SearcherTracker;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.SearcherLifetimeManager$SearcherTracker;", "Lorg.apache.lucene.search.SearcherLifetimeManager$Pruner;", "Lorg.apache.lucene.search.SearcherLifetimeManager$PruneByAge;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherLifetimeManager = { 2, "SearcherLifetimeManager", "org.apache.lucene.search", NULL, 0x1, 7, methods, 3, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSearcherLifetimeManager;
}

@end

void OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(OrgApacheLuceneSearchSearcherLifetimeManager *self) {
  if (JreLoadVolatileBoolean(&self->closed_)) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this SearcherLifetimeManager instance is closed") autorelease];
  }
}

void OrgApacheLuceneSearchSearcherLifetimeManager_init(OrgApacheLuceneSearchSearcherLifetimeManager *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->searchers_, new_JavaUtilConcurrentConcurrentHashMap_init());
}

OrgApacheLuceneSearchSearcherLifetimeManager *new_OrgApacheLuceneSearchSearcherLifetimeManager_init() {
  OrgApacheLuceneSearchSearcherLifetimeManager *self = [OrgApacheLuceneSearchSearcherLifetimeManager alloc];
  OrgApacheLuceneSearchSearcherLifetimeManager_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherLifetimeManager)

@implementation OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker

- (instancetype)initWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(self, searcher);
  return self;
}

- (jint)compareToWithId:(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *)other {
  check_class_cast(other, [OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker class]);
  return JavaLangDouble_compareWithDouble_withDouble_(((OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *) nil_chk(other))->recordTimeSec_, recordTimeSec_);
}

- (void)close {
  @synchronized(self) {
    [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher_)) getIndexReader])) decRef];
  }
}

- (void)dealloc {
  RELEASE_(searcher_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchIndexSearcher:", "SearcherTracker", NULL, 0x1, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x21, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "searcher_", NULL, 0x11, "Lorg.apache.lucene.search.IndexSearcher;", NULL, NULL, .constantValue.asLong = 0 },
    { "recordTimeSec_", NULL, 0x11, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "version__", "version", 0x11, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker = { 2, "SearcherTracker", "org.apache.lucene.search", "SearcherLifetimeManager", 0xa, 3, methods, 3, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/search/SearcherLifetimeManager$SearcherTracker;>;Ljava/io/Closeable;" };
  return &_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker;
}

@end

void OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *self, OrgApacheLuceneSearchIndexSearcher *searcher) {
  NSObject_init(self);
  JreStrongAssign(&self->searcher_, searcher);
  self->version__ = [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(((OrgApacheLuceneIndexDirectoryReader *) check_class_cast([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader], [OrgApacheLuceneIndexDirectoryReader class])))) getVersion];
  [((OrgApacheLuceneIndexIndexReader *) nil_chk([searcher getIndexReader])) incRef];
  self->recordTimeSec_ = JavaLangSystem_nanoTime() / OrgApacheLuceneSearchSearcherLifetimeManager_NANOS_PER_SEC;
}

OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *new_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchIndexSearcher *searcher) {
  OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *self = [OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker alloc];
  OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(self, searcher);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker)

@implementation OrgApacheLuceneSearchSearcherLifetimeManager_Pruner

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "doPruneWithDouble:withOrgApacheLuceneSearchIndexSearcher:", "doPrune", "Z", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherLifetimeManager_Pruner = { 2, "Pruner", "org.apache.lucene.search", "SearcherLifetimeManager", 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSearcherLifetimeManager_Pruner;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherLifetimeManager_Pruner)

@implementation OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge

- (instancetype)initWithDouble:(jdouble)maxAgeSec {
  OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithDouble_(self, maxAgeSec);
  return self;
}

- (jboolean)doPruneWithDouble:(jdouble)ageSec
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  return ageSec > maxAgeSec_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithDouble:", "PruneByAge", NULL, 0x1, NULL, NULL },
    { "doPruneWithDouble:withOrgApacheLuceneSearchIndexSearcher:", "doPrune", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "maxAgeSec_", NULL, 0x12, "D", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge = { 2, "PruneByAge", "org.apache.lucene.search", "SearcherLifetimeManager", 0x19, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge;
}

@end

void OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithDouble_(OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge *self, jdouble maxAgeSec) {
  NSObject_init(self);
  if (maxAgeSec < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$DC", @"maxAgeSec must be > 0 (got ", maxAgeSec, ')')) autorelease];
  }
  self->maxAgeSec_ = maxAgeSec;
}

OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge *new_OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithDouble_(jdouble maxAgeSec) {
  OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge *self = [OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge alloc];
  OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithDouble_(self, maxAgeSec);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge)
