//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SnapshotDeletionPolicy.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/IndexCommit.h"
#include "org/apache/lucene/index/IndexDeletionPolicy.h"
#include "org/apache/lucene/index/SnapshotDeletionPolicy.h"
#include "org/apache/lucene/store/Directory.h"

@interface OrgApacheLuceneIndexSnapshotDeletionPolicy () {
 @public
  OrgApacheLuceneIndexIndexDeletionPolicy *primary_;
  jboolean initCalled_;
}

- (id<JavaUtilList>)wrapCommitsWithJavaUtilList:(id<JavaUtilList>)commits;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSnapshotDeletionPolicy, primary_, OrgApacheLuceneIndexIndexDeletionPolicy *)

__attribute__((unused)) static id<JavaUtilList> OrgApacheLuceneIndexSnapshotDeletionPolicy_wrapCommitsWithJavaUtilList_(OrgApacheLuceneIndexSnapshotDeletionPolicy *self, id<JavaUtilList> commits);

@interface OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint : OrgApacheLuceneIndexIndexCommit {
 @public
  OrgApacheLuceneIndexSnapshotDeletionPolicy *this$0_;
  OrgApacheLuceneIndexIndexCommit *cp_;
}

- (instancetype)initWithOrgApacheLuceneIndexSnapshotDeletionPolicy:(OrgApacheLuceneIndexSnapshotDeletionPolicy *)outer$
                               withOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)cp;

- (NSString *)description;

- (void)delete__;

- (OrgApacheLuceneStoreDirectory *)getDirectory;

- (id<JavaUtilCollection>)getFileNames;

- (jlong)getGeneration;

- (NSString *)getSegmentsFileName;

- (id<JavaUtilMap>)getUserData;

- (jboolean)isDeleted;

- (jint)getSegmentCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint, this$0_, OrgApacheLuceneIndexSnapshotDeletionPolicy *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint, cp_, OrgApacheLuceneIndexIndexCommit *)

__attribute__((unused)) static void OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint_initWithOrgApacheLuceneIndexSnapshotDeletionPolicy_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint *self, OrgApacheLuceneIndexSnapshotDeletionPolicy *outer$, OrgApacheLuceneIndexIndexCommit *cp);

__attribute__((unused)) static OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint *new_OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint_initWithOrgApacheLuceneIndexSnapshotDeletionPolicy_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneIndexSnapshotDeletionPolicy *outer$, OrgApacheLuceneIndexIndexCommit *cp) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint)

@implementation OrgApacheLuceneIndexSnapshotDeletionPolicy

- (instancetype)initWithOrgApacheLuceneIndexIndexDeletionPolicy:(OrgApacheLuceneIndexIndexDeletionPolicy *)primary {
  OrgApacheLuceneIndexSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_(self, primary);
  return self;
}

- (void)onCommitWithJavaUtilList:(id<JavaUtilList>)commits {
  @synchronized(self) {
    [((OrgApacheLuceneIndexIndexDeletionPolicy *) nil_chk(primary_)) onCommitWithJavaUtilList:OrgApacheLuceneIndexSnapshotDeletionPolicy_wrapCommitsWithJavaUtilList_(self, commits)];
    JreStrongAssign(&lastCommit_, [commits getWithInt:[((id<JavaUtilList>) nil_chk(commits)) size] - 1]);
  }
}

- (void)onInitWithJavaUtilList:(id<JavaUtilList>)commits {
  @synchronized(self) {
    initCalled_ = true;
    [((OrgApacheLuceneIndexIndexDeletionPolicy *) nil_chk(primary_)) onInitWithJavaUtilList:OrgApacheLuceneIndexSnapshotDeletionPolicy_wrapCommitsWithJavaUtilList_(self, commits)];
    for (OrgApacheLuceneIndexIndexCommit * __strong commit in nil_chk(commits)) {
      if ([((id<JavaUtilMap>) nil_chk(refCounts_)) containsKeyWithId:JavaLangLong_valueOfWithLong_([((OrgApacheLuceneIndexIndexCommit *) nil_chk(commit)) getGeneration])]) {
        [((id<JavaUtilMap>) nil_chk(indexCommits_)) putWithId:JavaLangLong_valueOfWithLong_([commit getGeneration]) withId:commit];
      }
    }
    if (![commits isEmpty]) {
      JreStrongAssign(&lastCommit_, [commits getWithInt:[commits size] - 1]);
    }
  }
}

- (void)release__WithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit {
  @synchronized(self) {
    jlong gen = [((OrgApacheLuceneIndexIndexCommit *) nil_chk(commit)) getGeneration];
    [self releaseGenWithLong:gen];
  }
}

- (void)releaseGenWithLong:(jlong)gen {
  if (!initCalled_) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"this instance is not being used by IndexWriter; be sure to use the instance returned from writer.getConfig().getIndexDeletionPolicy()") autorelease];
  }
  JavaLangInteger *refCount = [((id<JavaUtilMap>) nil_chk(refCounts_)) getWithId:JavaLangLong_valueOfWithLong_(gen)];
  if (refCount == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J$", @"commit gen=", gen, @" is not currently snapshotted")) autorelease];
  }
  jint refCountInt = [((JavaLangInteger *) nil_chk(refCount)) intValue];
  JreAssert((refCountInt > 0), (@"org/apache/lucene/index/SnapshotDeletionPolicy.java:113 condition failed: assert refCountInt > 0;"));
  refCountInt--;
  if (refCountInt == 0) {
    [refCounts_ removeWithId:JavaLangLong_valueOfWithLong_(gen)];
    [((id<JavaUtilMap>) nil_chk(indexCommits_)) removeWithId:JavaLangLong_valueOfWithLong_(gen)];
  }
  else {
    [refCounts_ putWithId:JavaLangLong_valueOfWithLong_(gen) withId:JavaLangInteger_valueOfWithInt_(refCountInt)];
  }
}

- (void)incRefWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)ic {
  @synchronized(self) {
    jlong gen = [((OrgApacheLuceneIndexIndexCommit *) nil_chk(ic)) getGeneration];
    JavaLangInteger *refCount = [((id<JavaUtilMap>) nil_chk(refCounts_)) getWithId:JavaLangLong_valueOfWithLong_(gen)];
    jint refCountInt;
    if (refCount == nil) {
      [((id<JavaUtilMap>) nil_chk(indexCommits_)) putWithId:JavaLangLong_valueOfWithLong_(gen) withId:lastCommit_];
      refCountInt = 0;
    }
    else {
      refCountInt = [refCount intValue];
    }
    [refCounts_ putWithId:JavaLangLong_valueOfWithLong_(gen) withId:JavaLangInteger_valueOfWithInt_(refCountInt + 1)];
  }
}

- (OrgApacheLuceneIndexIndexCommit *)snapshot {
  @synchronized(self) {
    if (!initCalled_) {
      @throw [new_JavaLangIllegalStateException_initWithNSString_(@"this instance is not being used by IndexWriter; be sure to use the instance returned from writer.getConfig().getIndexDeletionPolicy()") autorelease];
    }
    if (lastCommit_ == nil) {
      @throw [new_JavaLangIllegalStateException_initWithNSString_(@"No index commit to snapshot") autorelease];
    }
    [self incRefWithOrgApacheLuceneIndexIndexCommit:lastCommit_];
    return lastCommit_;
  }
}

- (id<JavaUtilList>)getSnapshots {
  @synchronized(self) {
    return [new_JavaUtilArrayList_initWithJavaUtilCollection_([((id<JavaUtilMap>) nil_chk(indexCommits_)) values]) autorelease];
  }
}

- (jint)getSnapshotCount {
  @synchronized(self) {
    jint total = 0;
    for (JavaLangInteger * __strong refCount in nil_chk([((id<JavaUtilMap>) nil_chk(refCounts_)) values])) {
      total += [((JavaLangInteger *) nil_chk(refCount)) intValue];
    }
    return total;
  }
}

- (OrgApacheLuceneIndexIndexCommit *)getIndexCommitWithLong:(jlong)gen {
  @synchronized(self) {
    return [((id<JavaUtilMap>) nil_chk(indexCommits_)) getWithId:JavaLangLong_valueOfWithLong_(gen)];
  }
}

- (id<JavaUtilList>)wrapCommitsWithJavaUtilList:(id<JavaUtilList>)commits {
  return OrgApacheLuceneIndexSnapshotDeletionPolicy_wrapCommitsWithJavaUtilList_(self, commits);
}

- (void)dealloc {
  RELEASE_(refCounts_);
  RELEASE_(indexCommits_);
  RELEASE_(primary_);
  RELEASE_(lastCommit_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexIndexDeletionPolicy:", "SnapshotDeletionPolicy", NULL, 0x1, NULL, NULL },
    { "onCommitWithJavaUtilList:", "onCommit", "V", 0x21, "Ljava.io.IOException;", NULL },
    { "onInitWithJavaUtilList:", "onInit", "V", 0x21, "Ljava.io.IOException;", NULL },
    { "release__WithOrgApacheLuceneIndexIndexCommit:", "release", "V", 0x21, "Ljava.io.IOException;", NULL },
    { "releaseGenWithLong:", "releaseGen", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "incRefWithOrgApacheLuceneIndexIndexCommit:", "incRef", "V", 0x24, NULL, NULL },
    { "snapshot", NULL, "Lorg.apache.lucene.index.IndexCommit;", 0x21, "Ljava.io.IOException;", NULL },
    { "getSnapshots", NULL, "Ljava.util.List;", 0x21, NULL, NULL },
    { "getSnapshotCount", NULL, "I", 0x21, NULL, NULL },
    { "getIndexCommitWithLong:", "getIndexCommit", "Lorg.apache.lucene.index.IndexCommit;", 0x21, NULL, NULL },
    { "wrapCommitsWithJavaUtilList:", "wrapCommits", "Ljava.util.List;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "refCounts_", NULL, 0x14, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "indexCommits_", NULL, 0x14, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/lucene/index/IndexCommit;>;", .constantValue.asLong = 0 },
    { "primary_", NULL, 0x12, "Lorg.apache.lucene.index.IndexDeletionPolicy;", NULL, NULL, .constantValue.asLong = 0 },
    { "lastCommit_", NULL, 0x4, "Lorg.apache.lucene.index.IndexCommit;", NULL, NULL, .constantValue.asLong = 0 },
    { "initCalled_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.SnapshotDeletionPolicy$SnapshotCommitPoint;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSnapshotDeletionPolicy = { 2, "SnapshotDeletionPolicy", "org.apache.lucene.index", NULL, 0x1, 11, methods, 5, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexSnapshotDeletionPolicy;
}

@end

void OrgApacheLuceneIndexSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_(OrgApacheLuceneIndexSnapshotDeletionPolicy *self, OrgApacheLuceneIndexIndexDeletionPolicy *primary) {
  OrgApacheLuceneIndexIndexDeletionPolicy_init(self);
  JreStrongAssignAndConsume(&self->refCounts_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->indexCommits_, new_JavaUtilHashMap_init());
  JreStrongAssign(&self->primary_, primary);
}

OrgApacheLuceneIndexSnapshotDeletionPolicy *new_OrgApacheLuceneIndexSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_(OrgApacheLuceneIndexIndexDeletionPolicy *primary) {
  OrgApacheLuceneIndexSnapshotDeletionPolicy *self = [OrgApacheLuceneIndexSnapshotDeletionPolicy alloc];
  OrgApacheLuceneIndexSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_(self, primary);
  return self;
}

id<JavaUtilList> OrgApacheLuceneIndexSnapshotDeletionPolicy_wrapCommitsWithJavaUtilList_(OrgApacheLuceneIndexSnapshotDeletionPolicy *self, id<JavaUtilList> commits) {
  id<JavaUtilList> wrappedCommits = [new_JavaUtilArrayList_initWithInt_([((id<JavaUtilList>) nil_chk(commits)) size]) autorelease];
  for (OrgApacheLuceneIndexIndexCommit * __strong ic in commits) {
    [wrappedCommits addWithId:[new_OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint_initWithOrgApacheLuceneIndexSnapshotDeletionPolicy_withOrgApacheLuceneIndexIndexCommit_(self, ic) autorelease]];
  }
  return wrappedCommits;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSnapshotDeletionPolicy)

@implementation OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint

- (instancetype)initWithOrgApacheLuceneIndexSnapshotDeletionPolicy:(OrgApacheLuceneIndexSnapshotDeletionPolicy *)outer$
                               withOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)cp {
  OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint_initWithOrgApacheLuceneIndexSnapshotDeletionPolicy_withOrgApacheLuceneIndexIndexCommit_(self, outer$, cp);
  return self;
}

- (NSString *)description {
  return JreStrcat("$@C", @"SnapshotDeletionPolicy.SnapshotCommitPoint(", cp_, ')');
}

- (void)delete__ {
  @synchronized(this$0_) {
    if (![((id<JavaUtilMap>) nil_chk(this$0_->refCounts_)) containsKeyWithId:JavaLangLong_valueOfWithLong_([((OrgApacheLuceneIndexIndexCommit *) nil_chk(cp_)) getGeneration])]) {
      [cp_ delete__];
    }
  }
}

- (OrgApacheLuceneStoreDirectory *)getDirectory {
  return [((OrgApacheLuceneIndexIndexCommit *) nil_chk(cp_)) getDirectory];
}

- (id<JavaUtilCollection>)getFileNames {
  return [((OrgApacheLuceneIndexIndexCommit *) nil_chk(cp_)) getFileNames];
}

- (jlong)getGeneration {
  return [((OrgApacheLuceneIndexIndexCommit *) nil_chk(cp_)) getGeneration];
}

- (NSString *)getSegmentsFileName {
  return [((OrgApacheLuceneIndexIndexCommit *) nil_chk(cp_)) getSegmentsFileName];
}

- (id<JavaUtilMap>)getUserData {
  return [((OrgApacheLuceneIndexIndexCommit *) nil_chk(cp_)) getUserData];
}

- (jboolean)isDeleted {
  return [((OrgApacheLuceneIndexIndexCommit *) nil_chk(cp_)) isDeleted];
}

- (jint)getSegmentCount {
  return [((OrgApacheLuceneIndexIndexCommit *) nil_chk(cp_)) getSegmentCount];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(cp_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexSnapshotDeletionPolicy:withOrgApacheLuceneIndexIndexCommit:", "SnapshotCommitPoint", NULL, 0x4, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "delete__", "delete", "V", 0x1, NULL, NULL },
    { "getDirectory", NULL, "Lorg.apache.lucene.store.Directory;", 0x1, NULL, NULL },
    { "getFileNames", NULL, "Ljava.util.Collection;", 0x1, "Ljava.io.IOException;", NULL },
    { "getGeneration", NULL, "J", 0x1, NULL, NULL },
    { "getSegmentsFileName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getUserData", NULL, "Ljava.util.Map;", 0x1, "Ljava.io.IOException;", NULL },
    { "isDeleted", NULL, "Z", 0x1, NULL, NULL },
    { "getSegmentCount", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.index.SnapshotDeletionPolicy;", NULL, NULL, .constantValue.asLong = 0 },
    { "cp_", NULL, 0x4, "Lorg.apache.lucene.index.IndexCommit;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint = { 2, "SnapshotCommitPoint", "org.apache.lucene.index", "SnapshotDeletionPolicy", 0x2, 10, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint;
}

@end

void OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint_initWithOrgApacheLuceneIndexSnapshotDeletionPolicy_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint *self, OrgApacheLuceneIndexSnapshotDeletionPolicy *outer$, OrgApacheLuceneIndexIndexCommit *cp) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneIndexIndexCommit_init(self);
  JreStrongAssign(&self->cp_, cp);
}

OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint *new_OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint_initWithOrgApacheLuceneIndexSnapshotDeletionPolicy_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneIndexSnapshotDeletionPolicy *outer$, OrgApacheLuceneIndexIndexCommit *cp) {
  OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint *self = [OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint alloc];
  OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint_initWithOrgApacheLuceneIndexSnapshotDeletionPolicy_withOrgApacheLuceneIndexIndexCommit_(self, outer$, cp);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSnapshotDeletionPolicy_SnapshotCommitPoint)
