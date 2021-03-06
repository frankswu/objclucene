//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/RAMDirectory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/FileNotFoundException.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "org/apache/lucene/store/BaseDirectory.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/store/LockFactory.h"
#include "org/apache/lucene/store/RAMDirectory.h"
#include "org/apache/lucene/store/RAMFile.h"
#include "org/apache/lucene/store/RAMInputStream.h"
#include "org/apache/lucene/store/RAMOutputStream.h"
#include "org/apache/lucene/store/SingleInstanceLockFactory.h"
#include "org/apache/lucene/util/Accountables.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

@interface OrgApacheLuceneStoreRAMDirectory ()

- (instancetype)initWithOrgApacheLuceneStoreFSDirectory:(OrgApacheLuceneStoreFSDirectory *)dir
                                            withBoolean:(jboolean)closeDir
                      withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

@end

__attribute__((unused)) static void OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreRAMDirectory *self, OrgApacheLuceneStoreFSDirectory *dir, jboolean closeDir, OrgApacheLuceneStoreIOContext *context);

__attribute__((unused)) static OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreFSDirectory *dir, jboolean closeDir, OrgApacheLuceneStoreIOContext *context) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreFSDirectory *dir, jboolean closeDir, OrgApacheLuceneStoreIOContext *context);

@implementation OrgApacheLuceneStoreRAMDirectory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreRAMDirectory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory {
  OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(self, lockFactory);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreFSDirectory:(OrgApacheLuceneStoreFSDirectory *)dir
                      withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withOrgApacheLuceneStoreIOContext_(self, dir, context);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreFSDirectory:(OrgApacheLuceneStoreFSDirectory *)dir
                                            withBoolean:(jboolean)closeDir
                      withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_(self, dir, closeDir, context);
  return self;
}

- (IOSObjectArray *)listAll {
  [self ensureOpen];
  id<JavaUtilSet> fileNames = [((id<JavaUtilMap>) nil_chk(fileMap_)) keySet];
  id<JavaUtilList> names = create_JavaUtilArrayList_initWithInt_([((id<JavaUtilSet>) nil_chk(fileNames)) size]);
  for (NSString * __strong name in fileNames) [names addWithId:name];
  return [names toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[names size] type:NSString_class_()]];
}

- (jboolean)fileNameExistsWithNSString:(NSString *)name {
  [self ensureOpen];
  return [((id<JavaUtilMap>) nil_chk(fileMap_)) containsKeyWithId:name];
}

- (jlong)fileLengthWithNSString:(NSString *)name {
  [self ensureOpen];
  OrgApacheLuceneStoreRAMFile *file = [((id<JavaUtilMap>) nil_chk(fileMap_)) getWithId:name];
  if (file == nil) {
    @throw create_JavaIoFileNotFoundException_initWithNSString_(name);
  }
  return [file getLength];
}

- (jlong)ramBytesUsed {
  [self ensureOpen];
  return [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(sizeInBytes_)) get];
}

- (id<JavaUtilCollection>)getChildResources {
  return OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(@"file", fileMap_);
}

- (void)deleteFileWithNSString:(NSString *)name {
  [self ensureOpen];
  OrgApacheLuceneStoreRAMFile *file = [((id<JavaUtilMap>) nil_chk(fileMap_)) removeWithId:name];
  if (file != nil) {
    JreStrongAssign(&file->directory_, nil);
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(sizeInBytes_)) addAndGetWithLong:-file->sizeInBytes_];
  }
  else {
    @throw create_JavaIoFileNotFoundException_initWithNSString_(name);
  }
}

- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name
                            withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  [self ensureOpen];
  OrgApacheLuceneStoreRAMFile *file = [self newRAMFile];
  OrgApacheLuceneStoreRAMFile *existing = [((id<JavaUtilMap>) nil_chk(fileMap_)) removeWithId:name];
  if (existing != nil) {
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(sizeInBytes_)) addAndGetWithLong:-existing->sizeInBytes_];
    JreStrongAssign(&existing->directory_, nil);
  }
  [fileMap_ putWithId:name withId:file];
  return create_OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(name, file, true);
}

- (OrgApacheLuceneStoreRAMFile *)newRAMFile {
  return create_OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(self);
}

- (void)syncWithJavaUtilCollection:(id<JavaUtilCollection>)names {
}

- (void)renameFileWithNSString:(NSString *)source
                  withNSString:(NSString *)dest {
  [self ensureOpen];
  OrgApacheLuceneStoreRAMFile *file = [((id<JavaUtilMap>) nil_chk(fileMap_)) getWithId:source];
  if (file == nil) {
    @throw create_JavaIoFileNotFoundException_initWithNSString_(source);
  }
  [fileMap_ putWithId:dest withId:file];
  [fileMap_ removeWithId:source];
}

- (OrgApacheLuceneStoreIndexInput *)openInputWithNSString:(NSString *)name
                        withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context {
  [self ensureOpen];
  OrgApacheLuceneStoreRAMFile *file = [((id<JavaUtilMap>) nil_chk(fileMap_)) getWithId:name];
  if (file == nil) {
    @throw create_JavaIoFileNotFoundException_initWithNSString_(name);
  }
  return create_OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_(name, file);
}

- (void)close {
  JreAssignVolatileBoolean(&isOpen_, false);
  [((id<JavaUtilMap>) nil_chk(fileMap_)) clear];
}

- (void)dealloc {
  RELEASE_(fileMap_);
  RELEASE_(sizeInBytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RAMDirectory", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreLockFactory:", "RAMDirectory", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreFSDirectory:withOrgApacheLuceneStoreIOContext:", "RAMDirectory", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneStoreFSDirectory:withBoolean:withOrgApacheLuceneStoreIOContext:", "RAMDirectory", NULL, 0x2, "Ljava.io.IOException;", NULL },
    { "listAll", NULL, "[Ljava.lang.String;", 0x11, NULL, NULL },
    { "fileNameExistsWithNSString:", "fileNameExists", "Z", 0x11, NULL, NULL },
    { "fileLengthWithNSString:", "fileLength", "J", 0x11, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x11, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
    { "deleteFileWithNSString:", "deleteFile", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "createOutputWithNSString:withOrgApacheLuceneStoreIOContext:", "createOutput", "Lorg.apache.lucene.store.IndexOutput;", 0x1, "Ljava.io.IOException;", NULL },
    { "newRAMFile", NULL, "Lorg.apache.lucene.store.RAMFile;", 0x4, NULL, NULL },
    { "syncWithJavaUtilCollection:", "sync", "V", 0x1, "Ljava.io.IOException;", "(Ljava/util/Collection<Ljava/lang/String;>;)V" },
    { "renameFileWithNSString:withNSString:", "renameFile", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "openInputWithNSString:withOrgApacheLuceneStoreIOContext:", "openInput", "Lorg.apache.lucene.store.IndexInput;", 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fileMap_", NULL, 0x14, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/store/RAMFile;>;", .constantValue.asLong = 0 },
    { "sizeInBytes_", NULL, 0x14, "Ljava.util.concurrent.atomic.AtomicLong;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreRAMDirectory = { 2, "RAMDirectory", "org.apache.lucene.store", NULL, 0x1, 16, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreRAMDirectory;
}

@end

void OrgApacheLuceneStoreRAMDirectory_init(OrgApacheLuceneStoreRAMDirectory *self) {
  OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(self, create_OrgApacheLuceneStoreSingleInstanceLockFactory_init());
}

OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMDirectory, init)
}

OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMDirectory, init)
}

void OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreRAMDirectory *self, OrgApacheLuceneStoreLockFactory *lockFactory) {
  OrgApacheLuceneStoreBaseDirectory_initWithOrgApacheLuceneStoreLockFactory_(self, lockFactory);
  JreStrongAssignAndConsume(&self->fileMap_, new_JavaUtilConcurrentConcurrentHashMap_init());
  JreStrongAssignAndConsume(&self->sizeInBytes_, new_JavaUtilConcurrentAtomicAtomicLong_init());
}

OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreLockFactory *lockFactory) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMDirectory, initWithOrgApacheLuceneStoreLockFactory_, lockFactory)
}

OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreLockFactory *lockFactory) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMDirectory, initWithOrgApacheLuceneStoreLockFactory_, lockFactory)
}

void OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreRAMDirectory *self, OrgApacheLuceneStoreFSDirectory *dir, OrgApacheLuceneStoreIOContext *context) {
  OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_(self, dir, false, context);
}

OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreFSDirectory *dir, OrgApacheLuceneStoreIOContext *context) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMDirectory, initWithOrgApacheLuceneStoreFSDirectory_withOrgApacheLuceneStoreIOContext_, dir, context)
}

OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreFSDirectory *dir, OrgApacheLuceneStoreIOContext *context) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMDirectory, initWithOrgApacheLuceneStoreFSDirectory_withOrgApacheLuceneStoreIOContext_, dir, context)
}

void OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreRAMDirectory *self, OrgApacheLuceneStoreFSDirectory *dir, jboolean closeDir, OrgApacheLuceneStoreIOContext *context) {
  OrgApacheLuceneStoreRAMDirectory_init(self);
  {
    IOSObjectArray *a__ = [((OrgApacheLuceneStoreFSDirectory *) nil_chk(dir)) listAll];
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *file = *b__++;
      if (!OrgLukhnosPortmobileFileFiles_isDirectoryWithOrgLukhnosPortmobileFilePath_([((OrgLukhnosPortmobileFilePath *) nil_chk([dir getDirectory])) resolveWithNSString:file])) {
        [self copyFromWithOrgApacheLuceneStoreDirectory:dir withNSString:file withNSString:file withOrgApacheLuceneStoreIOContext:context];
      }
    }
  }
  if (closeDir) {
    [dir close];
  }
}

OrgApacheLuceneStoreRAMDirectory *new_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreFSDirectory *dir, jboolean closeDir, OrgApacheLuceneStoreIOContext *context) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMDirectory, initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_, dir, closeDir, context)
}

OrgApacheLuceneStoreRAMDirectory *create_OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_(OrgApacheLuceneStoreFSDirectory *dir, jboolean closeDir, OrgApacheLuceneStoreIOContext *context) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMDirectory, initWithOrgApacheLuceneStoreFSDirectory_withBoolean_withOrgApacheLuceneStoreIOContext_, dir, closeDir, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreRAMDirectory)
