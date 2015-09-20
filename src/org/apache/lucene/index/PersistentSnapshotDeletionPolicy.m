//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/PersistentSnapshotDeletionPolicy.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/index/IndexCommit.h"
#include "org/apache/lucene/index/IndexDeletionPolicy.h"
#include "org/apache/lucene/index/IndexWriterConfig.h"
#include "org/apache/lucene/index/PersistentSnapshotDeletionPolicy.h"
#include "org/apache/lucene/index/SnapshotDeletionPolicy.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/IOUtils.h"

#define OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_VERSION_START 0
#define OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_VERSION_CURRENT 0

@interface OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy () {
 @public
  jlong nextWriteGen_;
  OrgApacheLuceneStoreDirectory *dir_;
}

- (void)persist;

- (void)clearPriorSnapshots;

- (void)loadPriorSnapshots;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy, dir_, OrgApacheLuceneStoreDirectory *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy, VERSION_START, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy, VERSION_CURRENT, jint)

static NSString *OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_CODEC_NAME_ = @"snapshots";
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy, CODEC_NAME_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_persist(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self);

__attribute__((unused)) static void OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_clearPriorSnapshots(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self);

__attribute__((unused)) static void OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_loadPriorSnapshots(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self);

NSString *OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_ = @"snapshots_";

@implementation OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy

- (instancetype)initWithOrgApacheLuceneIndexIndexDeletionPolicy:(OrgApacheLuceneIndexIndexDeletionPolicy *)primary
                              withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir {
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneStoreDirectory_(self, primary, dir);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexIndexDeletionPolicy:(OrgApacheLuceneIndexIndexDeletionPolicy *)primary
                              withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
         withOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum:(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *)mode {
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_(self, primary, dir, mode);
  return self;
}

- (OrgApacheLuceneIndexIndexCommit *)snapshot {
  @synchronized(self) {
    OrgApacheLuceneIndexIndexCommit *ic = [super snapshot];
    jboolean success = false;
    @try {
      OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_persist(self);
      success = true;
    }
    @finally {
      if (!success) {
        @try {
          [super release__WithOrgApacheLuceneIndexIndexCommit:ic];
        }
        @catch (JavaLangException *e) {
        }
      }
    }
    return ic;
  }
}

- (void)release__WithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit {
  @synchronized(self) {
    [super release__WithOrgApacheLuceneIndexIndexCommit:commit];
    jboolean success = false;
    @try {
      OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_persist(self);
      success = true;
    }
    @finally {
      if (!success) {
        @try {
          [self incRefWithOrgApacheLuceneIndexIndexCommit:commit];
        }
        @catch (JavaLangException *e) {
        }
      }
    }
  }
}

- (void)release__WithLong:(jlong)gen {
  @synchronized(self) {
    [super releaseGenWithLong:gen];
    OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_persist(self);
  }
}

- (void)persist {
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_persist(self);
}

- (void)clearPriorSnapshots {
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_clearPriorSnapshots(self);
}

- (NSString *)getLastSaveFile {
  if (nextWriteGen_ == 0) {
    return nil;
  }
  else {
    return JreStrcat("$J", OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_, (nextWriteGen_ - 1));
  }
}

- (void)loadPriorSnapshots {
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_loadPriorSnapshots(self);
}

- (void)dealloc {
  RELEASE_(dir_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexIndexDeletionPolicy:withOrgApacheLuceneStoreDirectory:", "PersistentSnapshotDeletionPolicy", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneIndexIndexDeletionPolicy:withOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum:", "PersistentSnapshotDeletionPolicy", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "snapshot", NULL, "Lorg.apache.lucene.index.IndexCommit;", 0x21, "Ljava.io.IOException;", NULL },
    { "release__WithOrgApacheLuceneIndexIndexCommit:", "release", "V", 0x21, "Ljava.io.IOException;", NULL },
    { "release__WithLong:", "release", "V", 0x21, "Ljava.io.IOException;", NULL },
    { "persist", NULL, "V", 0x22, "Ljava.io.IOException;", NULL },
    { "clearPriorSnapshots", NULL, "V", 0x22, "Ljava.io.IOException;", NULL },
    { "getLastSaveFile", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "loadPriorSnapshots", NULL, "V", 0x22, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SNAPSHOTS_PREFIX_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_, NULL, .constantValue.asLong = 0 },
    { "VERSION_START", "VERSION_START", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_VERSION_START },
    { "VERSION_CURRENT", "VERSION_CURRENT", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_VERSION_CURRENT },
    { "CODEC_NAME_", NULL, 0x1a, "Ljava.lang.String;", &OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_CODEC_NAME_, NULL, .constantValue.asLong = 0 },
    { "nextWriteGen_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "dir_", NULL, 0x12, "Lorg.apache.lucene.store.Directory;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy = { 2, "PersistentSnapshotDeletionPolicy", "org.apache.lucene.index", NULL, 0x1, 9, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy;
}

@end

void OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneStoreDirectory_(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self, OrgApacheLuceneIndexIndexDeletionPolicy *primary, OrgApacheLuceneStoreDirectory *dir) {
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_(self, primary, dir, JreLoadStatic(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum, CREATE_OR_APPEND));
}

OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *new_OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneStoreDirectory_(OrgApacheLuceneIndexIndexDeletionPolicy *primary, OrgApacheLuceneStoreDirectory *dir) {
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self = [OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy alloc];
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneStoreDirectory_(self, primary, dir);
  return self;
}

void OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self, OrgApacheLuceneIndexIndexDeletionPolicy *primary, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *mode) {
  OrgApacheLuceneIndexSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_(self, primary);
  JreStrongAssign(&self->dir_, dir);
  if (mode == JreLoadStatic(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum, CREATE)) {
    OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_clearPriorSnapshots(self);
  }
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_loadPriorSnapshots(self);
  if (mode == JreLoadStatic(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum, APPEND) && self->nextWriteGen_ == 0) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"no snapshots stored in this directory") autorelease];
  }
}

OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *new_OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_(OrgApacheLuceneIndexIndexDeletionPolicy *primary, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *mode) {
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self = [OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy alloc];
  OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_initWithOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_(self, primary, dir, mode);
  return self;
}

void OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_persist(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self) {
  @synchronized(self) {
    NSString *fileName = JreStrcat("$J", OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_, self->nextWriteGen_);
    OrgApacheLuceneStoreIndexOutput *out = [((OrgApacheLuceneStoreDirectory *) nil_chk(self->dir_)) createOutputWithNSString:fileName withOrgApacheLuceneStoreIOContext:JreLoadStatic(OrgApacheLuceneStoreIOContext, DEFAULT_)];
    jboolean success = false;
    @try {
      OrgApacheLuceneCodecsCodecUtil_writeHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_(out, OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_CODEC_NAME_, OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_VERSION_CURRENT);
      [((OrgApacheLuceneStoreIndexOutput *) nil_chk(out)) writeVIntWithInt:[((id<JavaUtilMap>) nil_chk(self->refCounts_)) size]];
      for (id<JavaUtilMap_Entry> __strong ent in nil_chk([self->refCounts_ entrySet])) {
        [out writeVLongWithLong:[((JavaLangLong *) nil_chk([((id<JavaUtilMap_Entry>) nil_chk(ent)) getKey])) longLongValue]];
        [out writeVIntWithInt:[((JavaLangInteger *) nil_chk([ent getValue])) intValue]];
      }
      success = true;
    }
    @finally {
      if (!success) {
        OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ out } count:1 type:JavaIoCloseable_class_()]);
        OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(self->dir_, [IOSObjectArray arrayWithObjects:(id[]){ fileName } count:1 type:NSString_class_()]);
      }
      else {
        OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ out } count:1 type:JavaIoCloseable_class_()]);
      }
    }
    [self->dir_ syncWithJavaUtilCollection:JavaUtilCollections_singletonListWithId_(fileName)];
    if (self->nextWriteGen_ > 0) {
      NSString *lastSaveFile = JreStrcat("$J", OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_, (self->nextWriteGen_ - 1));
      OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(self->dir_, [IOSObjectArray arrayWithObjects:(id[]){ lastSaveFile } count:1 type:NSString_class_()]);
    }
    self->nextWriteGen_++;
  }
}

void OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_clearPriorSnapshots(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self) {
  @synchronized(self) {
    {
      IOSObjectArray *a__ = [((OrgApacheLuceneStoreDirectory *) nil_chk(self->dir_)) listAll];
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *file = *b__++;
        if ([((NSString *) nil_chk(file)) hasPrefix:OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_]) {
          [self->dir_ deleteFileWithNSString:file];
        }
      }
    }
  }
}

void OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_loadPriorSnapshots(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy *self) {
  @synchronized(self) {
    jlong genLoaded = -1;
    JavaIoIOException *ioe = nil;
    id<JavaUtilList> snapshotFiles = [new_JavaUtilArrayList_init() autorelease];
    {
      IOSObjectArray *a__ = [((OrgApacheLuceneStoreDirectory *) nil_chk(self->dir_)) listAll];
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *file = *b__++;
        if ([((NSString *) nil_chk(file)) hasPrefix:OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_]) {
          jlong gen = JavaLangLong_parseLongWithNSString_([file substring:((jint) [((NSString *) nil_chk(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_)) length])]);
          if (genLoaded == -1 || gen > genLoaded) {
            [snapshotFiles addWithId:file];
            id<JavaUtilMap> m = [new_JavaUtilHashMap_init() autorelease];
            OrgApacheLuceneStoreIndexInput *in = [self->dir_ openInputWithNSString:file withOrgApacheLuceneStoreIOContext:JreLoadStatic(OrgApacheLuceneStoreIOContext, DEFAULT_)];
            @try {
              OrgApacheLuceneCodecsCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(in, OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_CODEC_NAME_, OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_VERSION_START, OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_VERSION_START);
              jint count = [((OrgApacheLuceneStoreIndexInput *) nil_chk(in)) readVInt];
              for (jint i = 0; i < count; i++) {
                jlong commitGen = [in readVLong];
                jint refCount = [in readVInt];
                [m putWithId:JavaLangLong_valueOfWithLong_(commitGen) withId:JavaLangInteger_valueOfWithInt_(refCount)];
              }
            }
            @catch (JavaIoIOException *ioe2) {
              if (ioe == nil) {
                ioe = ioe2;
              }
            }
            @finally {
              [((OrgApacheLuceneStoreIndexInput *) nil_chk(in)) close];
            }
            genLoaded = gen;
            [((id<JavaUtilMap>) nil_chk(self->refCounts_)) clear];
            [self->refCounts_ putAllWithJavaUtilMap:m];
          }
        }
      }
    }
    if (genLoaded == -1) {
      if (ioe != nil) {
        @throw ioe;
      }
    }
    else {
      if ([snapshotFiles size] > 1) {
        NSString *curFileName = JreStrcat("$J", OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy_SNAPSHOTS_PREFIX_, genLoaded);
        for (NSString * __strong file in snapshotFiles) {
          if (![curFileName isEqual:file]) {
            OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(self->dir_, [IOSObjectArray arrayWithObjects:(id[]){ file } count:1 type:NSString_class_()]);
          }
        }
      }
      self->nextWriteGen_ = 1 + genLoaded;
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexPersistentSnapshotDeletionPolicy)
