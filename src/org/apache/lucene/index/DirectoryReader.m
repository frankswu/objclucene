//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DirectoryReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/FileNotFoundException.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/BaseCompositeReader.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/IndexCommit.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/SegmentInfos.h"
#include "org/apache/lucene/index/StandardDirectoryReader.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/lukhnos/portmobile/file/NoSuchFileException.h"

@implementation OrgApacheLuceneIndexDirectoryReader

+ (OrgApacheLuceneIndexDirectoryReader *)openWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory {
  return OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneStoreDirectory_(directory);
}

+ (OrgApacheLuceneIndexDirectoryReader *)openWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                                                     withBoolean:(jboolean)applyAllDeletes {
  return OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneIndexIndexWriter_withBoolean_(writer, applyAllDeletes);
}

+ (OrgApacheLuceneIndexDirectoryReader *)openWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit {
  return OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneIndexIndexCommit_(commit);
}

+ (OrgApacheLuceneIndexDirectoryReader *)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)oldReader {
  return OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_(oldReader);
}

+ (OrgApacheLuceneIndexDirectoryReader *)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)oldReader
                                                          withOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit {
  return OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexIndexCommit_(oldReader, commit);
}

+ (OrgApacheLuceneIndexDirectoryReader *)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)oldReader
                                                          withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                                                                  withBoolean:(jboolean)applyAllDeletes {
  return OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexIndexWriter_withBoolean_(oldReader, writer, applyAllDeletes);
}

+ (id<JavaUtilList>)listCommitsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir {
  return OrgApacheLuceneIndexDirectoryReader_listCommitsWithOrgApacheLuceneStoreDirectory_(dir);
}

+ (jboolean)indexExistsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory {
  return OrgApacheLuceneIndexDirectoryReader_indexExistsWithOrgApacheLuceneStoreDirectory_(directory);
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
              withOrgApacheLuceneIndexLeafReaderArray:(IOSObjectArray *)segmentReaders {
  OrgApacheLuceneIndexDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_(self, directory, segmentReaders);
  return self;
}

- (OrgApacheLuceneStoreDirectory *)directory {
  return directory_;
}

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChanged {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                                                                withBoolean:(jboolean)applyAllDeletes {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getVersion {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isCurrent {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexIndexCommit *)getIndexCommit {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  RELEASE_(directory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "openWithOrgApacheLuceneStoreDirectory:", "open", "Lorg.apache.lucene.index.DirectoryReader;", 0x9, "Ljava.io.IOException;", NULL },
    { "openWithOrgApacheLuceneIndexIndexWriter:withBoolean:", "open", "Lorg.apache.lucene.index.DirectoryReader;", 0x9, "Ljava.io.IOException;", NULL },
    { "openWithOrgApacheLuceneIndexIndexCommit:", "open", "Lorg.apache.lucene.index.DirectoryReader;", 0x9, "Ljava.io.IOException;", NULL },
    { "openIfChangedWithOrgApacheLuceneIndexDirectoryReader:", "openIfChanged", "Lorg.apache.lucene.index.DirectoryReader;", 0x9, "Ljava.io.IOException;", NULL },
    { "openIfChangedWithOrgApacheLuceneIndexDirectoryReader:withOrgApacheLuceneIndexIndexCommit:", "openIfChanged", "Lorg.apache.lucene.index.DirectoryReader;", 0x9, "Ljava.io.IOException;", NULL },
    { "openIfChangedWithOrgApacheLuceneIndexDirectoryReader:withOrgApacheLuceneIndexIndexWriter:withBoolean:", "openIfChanged", "Lorg.apache.lucene.index.DirectoryReader;", 0x9, "Ljava.io.IOException;", NULL },
    { "listCommitsWithOrgApacheLuceneStoreDirectory:", "listCommits", "Ljava.util.List;", 0x9, "Ljava.io.IOException;", NULL },
    { "indexExistsWithOrgApacheLuceneStoreDirectory:", "indexExists", "Z", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexLeafReaderArray:", "DirectoryReader", NULL, 0x4, "Ljava.io.IOException;", NULL },
    { "directory", NULL, "Lorg.apache.lucene.store.Directory;", 0x11, NULL, NULL },
    { "doOpenIfChanged", NULL, "Lorg.apache.lucene.index.DirectoryReader;", 0x404, "Ljava.io.IOException;", NULL },
    { "doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:", "doOpenIfChanged", "Lorg.apache.lucene.index.DirectoryReader;", 0x404, "Ljava.io.IOException;", NULL },
    { "doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:withBoolean:", "doOpenIfChanged", "Lorg.apache.lucene.index.DirectoryReader;", 0x404, "Ljava.io.IOException;", NULL },
    { "getVersion", NULL, "J", 0x401, NULL, NULL },
    { "isCurrent", NULL, "Z", 0x401, "Ljava.io.IOException;", NULL },
    { "getIndexCommit", NULL, "Lorg.apache.lucene.index.IndexCommit;", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "directory_", NULL, 0x14, "Lorg.apache.lucene.store.Directory;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.index.LeafReader;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexDirectoryReader = { 2, "DirectoryReader", "org.apache.lucene.index", NULL, 0x401, 16, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/index/BaseCompositeReader<Lorg/apache/lucene/index/LeafReader;>;" };
  return &_OrgApacheLuceneIndexDirectoryReader;
}

@end

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory) {
  OrgApacheLuceneIndexDirectoryReader_initialize();
  return OrgApacheLuceneIndexStandardDirectoryReader_openWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexCommit_(directory, nil);
}

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneIndexIndexWriter_withBoolean_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes) {
  OrgApacheLuceneIndexDirectoryReader_initialize();
  return [((OrgApacheLuceneIndexIndexWriter *) nil_chk(writer)) getReaderWithBoolean:applyAllDeletes];
}

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneIndexIndexCommit *commit) {
  OrgApacheLuceneIndexDirectoryReader_initialize();
  return OrgApacheLuceneIndexStandardDirectoryReader_openWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexCommit_([((OrgApacheLuceneIndexIndexCommit *) nil_chk(commit)) getDirectory], commit);
}

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexDirectoryReader *oldReader) {
  OrgApacheLuceneIndexDirectoryReader_initialize();
  OrgApacheLuceneIndexDirectoryReader *newReader = [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(oldReader)) doOpenIfChanged];
  JreAssert((newReader != oldReader), (@"org/apache/lucene/index/DirectoryReader.java:124 condition failed: assert newReader != oldReader;"));
  return newReader;
}

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneIndexDirectoryReader *oldReader, OrgApacheLuceneIndexIndexCommit *commit) {
  OrgApacheLuceneIndexDirectoryReader_initialize();
  OrgApacheLuceneIndexDirectoryReader *newReader = [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(oldReader)) doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:commit];
  JreAssert((newReader != oldReader), (@"org/apache/lucene/index/DirectoryReader.java:137 condition failed: assert newReader != oldReader;"));
  return newReader;
}

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexDirectoryReader_openIfChangedWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexIndexWriter_withBoolean_(OrgApacheLuceneIndexDirectoryReader *oldReader, OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes) {
  OrgApacheLuceneIndexDirectoryReader_initialize();
  OrgApacheLuceneIndexDirectoryReader *newReader = [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(oldReader)) doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:writer withBoolean:applyAllDeletes];
  JreAssert((newReader != oldReader), (@"org/apache/lucene/index/DirectoryReader.java:204 condition failed: assert newReader != oldReader;"));
  return newReader;
}

id<JavaUtilList> OrgApacheLuceneIndexDirectoryReader_listCommitsWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *dir) {
  OrgApacheLuceneIndexDirectoryReader_initialize();
  IOSObjectArray *files = [((OrgApacheLuceneStoreDirectory *) nil_chk(dir)) listAll];
  id<JavaUtilList> commits = [new_JavaUtilArrayList_init() autorelease];
  OrgApacheLuceneIndexSegmentInfos *latest = OrgApacheLuceneIndexSegmentInfos_readLatestCommitWithOrgApacheLuceneStoreDirectory_(dir);
  jlong currentGen = [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(latest)) getGeneration];
  [commits addWithId:[new_OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(nil, latest, dir) autorelease]];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(files))->size_; i++) {
    NSString *fileName = IOSObjectArray_Get(files, i);
    if ([((NSString *) nil_chk(fileName)) hasPrefix:OrgApacheLuceneIndexIndexFileNames_SEGMENTS_] && ![fileName isEqual:OrgApacheLuceneIndexIndexFileNames_OLD_SEGMENTS_GEN_] && OrgApacheLuceneIndexSegmentInfos_generationFromSegmentsFileNameWithNSString_(fileName) < currentGen) {
      OrgApacheLuceneIndexSegmentInfos *sis = nil;
      @try {
        sis = OrgApacheLuceneIndexSegmentInfos_readCommitWithOrgApacheLuceneStoreDirectory_withNSString_(dir, fileName);
      }
      @catch (JavaIoFileNotFoundException *fnfe) {
      }
      @catch (OrgLukhnosPortmobileFileNoSuchFileException *fnfe) {
      }
      @catch (JavaIoIOException *fnfe) {
      }
      if (sis != nil) {
        [commits addWithId:[new_OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(nil, sis, dir) autorelease]];
      }
    }
  }
  JavaUtilCollections_sortWithJavaUtilList_(commits);
  return commits;
}

jboolean OrgApacheLuceneIndexDirectoryReader_indexExistsWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory) {
  OrgApacheLuceneIndexDirectoryReader_initialize();
  IOSObjectArray *files = [((OrgApacheLuceneStoreDirectory *) nil_chk(directory)) listAll];
  NSString *prefix = JreStrcat("$C", OrgApacheLuceneIndexIndexFileNames_SEGMENTS_, '_');
  {
    IOSObjectArray *a__ = files;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *file = *b__++;
      if ([((NSString *) nil_chk(file)) hasPrefix:prefix]) {
        return true;
      }
    }
  }
  return false;
}

void OrgApacheLuceneIndexDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_(OrgApacheLuceneIndexDirectoryReader *self, OrgApacheLuceneStoreDirectory *directory, IOSObjectArray *segmentReaders) {
  OrgApacheLuceneIndexBaseCompositeReader_initWithOrgApacheLuceneIndexIndexReaderArray_(self, segmentReaders);
  JreStrongAssign(&self->directory_, directory);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexDirectoryReader)
