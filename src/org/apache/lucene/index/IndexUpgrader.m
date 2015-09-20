//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexUpgrader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Package.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/Collection.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/IndexNotFoundException.h"
#include "org/apache/lucene/index/IndexUpgrader.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/IndexWriterConfig.h"
#include "org/apache/lucene/index/KeepOnlyLastCommitDeletionPolicy.h"
#include "org/apache/lucene/index/MergePolicy.h"
#include "org/apache/lucene/index/UpgradeIndexMergePolicy.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/util/CommandLineUtil.h"
#include "org/apache/lucene/util/InfoStream.h"
#include "org/apache/lucene/util/PrintStreamInfoStream.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/file/Path.h"
#include "org/lukhnos/portmobile/file/Paths.h"

@interface OrgApacheLuceneIndexIndexUpgrader () {
 @public
  OrgApacheLuceneStoreDirectory *dir_;
  OrgApacheLuceneIndexIndexWriterConfig *iwc_;
  jboolean deletePriorCommits_;
}

+ (void)printUsage;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexUpgrader, dir_, OrgApacheLuceneStoreDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexUpgrader, iwc_, OrgApacheLuceneIndexIndexWriterConfig *)

static NSString *OrgApacheLuceneIndexIndexUpgrader_LOG_PREFIX_ = @"IndexUpgrader";
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexUpgrader, LOG_PREFIX_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneIndexIndexUpgrader_printUsage();

@implementation OrgApacheLuceneIndexIndexUpgrader

+ (void)printUsage {
  OrgApacheLuceneIndexIndexUpgrader_printUsage();
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgApacheLuceneIndexIndexUpgrader_mainWithNSStringArray_(args);
}

+ (OrgApacheLuceneIndexIndexUpgrader *)parseArgsWithNSStringArray:(IOSObjectArray *)args {
  return OrgApacheLuceneIndexIndexUpgrader_parseArgsWithNSStringArray_(args);
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir {
  OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_(self, dir);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                    withOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream
                                          withBoolean:(jboolean)deletePriorCommits {
  OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilInfoStream_withBoolean_(self, dir, infoStream, deletePriorCommits);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
            withOrgApacheLuceneIndexIndexWriterConfig:(OrgApacheLuceneIndexIndexWriterConfig *)iwc
                                          withBoolean:(jboolean)deletePriorCommits {
  OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_withBoolean_(self, dir, iwc, deletePriorCommits);
  return self;
}

- (void)upgrade {
  if (!OrgApacheLuceneIndexDirectoryReader_indexExistsWithOrgApacheLuceneStoreDirectory_(dir_)) {
    @throw [new_OrgApacheLuceneIndexIndexNotFoundException_initWithNSString_([((OrgApacheLuceneStoreDirectory *) nil_chk(dir_)) description]) autorelease];
  }
  if (!deletePriorCommits_) {
    id<JavaUtilCollection> commits = OrgApacheLuceneIndexDirectoryReader_listCommitsWithOrgApacheLuceneStoreDirectory_(dir_);
    if ([((id<JavaUtilCollection>) nil_chk(commits)) size] > 1) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"This tool was invoked to not delete prior commit points, but the following commits were found: ", commits)) autorelease];
    }
  }
  [iwc_ setMergePolicyWithOrgApacheLuceneIndexMergePolicy:[new_OrgApacheLuceneIndexUpgradeIndexMergePolicy_initWithOrgApacheLuceneIndexMergePolicy_([((OrgApacheLuceneIndexIndexWriterConfig *) nil_chk(iwc_)) getMergePolicy]) autorelease]];
  [iwc_ setIndexDeletionPolicyWithOrgApacheLuceneIndexIndexDeletionPolicy:[new_OrgApacheLuceneIndexKeepOnlyLastCommitDeletionPolicy_init() autorelease]];
  {
    OrgApacheLuceneIndexIndexWriter *w = [new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_(dir_, iwc_) autorelease];
    JavaLangThrowable *__primaryException1 = nil;
    @try {
      OrgApacheLuceneUtilInfoStream *infoStream = [iwc_ getInfoStream];
      if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(infoStream)) isEnabledWithNSString:OrgApacheLuceneIndexIndexUpgrader_LOG_PREFIX_]) {
        [infoStream messageWithNSString:OrgApacheLuceneIndexIndexUpgrader_LOG_PREFIX_ withNSString:JreStrcat("$@$@$@$", @"Upgrading all pre-", JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST_), @" segments of index directory '", dir_, @"' to version ", JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST_), @"...")];
      }
      [w forceMergeWithInt:1];
      if ([infoStream isEnabledWithNSString:OrgApacheLuceneIndexIndexUpgrader_LOG_PREFIX_]) {
        [infoStream messageWithNSString:OrgApacheLuceneIndexIndexUpgrader_LOG_PREFIX_ withNSString:JreStrcat("$@", @"All segments upgraded to version ", JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST_))];
        [infoStream messageWithNSString:OrgApacheLuceneIndexIndexUpgrader_LOG_PREFIX_ withNSString:@"Enforcing commit to rewrite all index metadata..."];
      }
      [w setCommitDataWithJavaUtilMap:[w getCommitData]];
      JreAssert(([w hasUncommittedChanges]), (@"org/apache/lucene/index/IndexUpgrader.java:178 condition failed: assert w.hasUncommittedChanges();"));
      [w commit];
      if ([infoStream isEnabledWithNSString:OrgApacheLuceneIndexIndexUpgrader_LOG_PREFIX_]) {
        [infoStream messageWithNSString:OrgApacheLuceneIndexIndexUpgrader_LOG_PREFIX_ withNSString:@"Committed upgraded metadata to index."];
      }
    }
    @catch (JavaLangThrowable *e) {
      __primaryException1 = e;
      @throw e;
    }
    @finally {
      if (w != nil) {
        if (__primaryException1 != nil) {
          @try {
            [w close];
          } @catch (JavaLangThrowable *e) {
            [__primaryException1 addSuppressedWithJavaLangThrowable:e];
          }
        } else {
          [w close];
        }
      }
    }
  }
}

- (void)dealloc {
  RELEASE_(dir_);
  RELEASE_(iwc_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "printUsage", NULL, "V", 0xa, NULL, NULL },
    { "mainWithNSStringArray:", "main", "V", 0x9, "Ljava.io.IOException;", NULL },
    { "parseArgsWithNSStringArray:", "parseArgs", "Lorg.apache.lucene.index.IndexUpgrader;", 0x8, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneStoreDirectory:", "IndexUpgrader", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneUtilInfoStream:withBoolean:", "IndexUpgrader", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexIndexWriterConfig:withBoolean:", "IndexUpgrader", NULL, 0x1, NULL, NULL },
    { "upgrade", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LOG_PREFIX_", NULL, 0x1a, "Ljava.lang.String;", &OrgApacheLuceneIndexIndexUpgrader_LOG_PREFIX_, NULL, .constantValue.asLong = 0 },
    { "dir_", NULL, 0x12, "Lorg.apache.lucene.store.Directory;", NULL, NULL, .constantValue.asLong = 0 },
    { "iwc_", NULL, 0x12, "Lorg.apache.lucene.index.IndexWriterConfig;", NULL, NULL, .constantValue.asLong = 0 },
    { "deletePriorCommits_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexUpgrader = { 2, "IndexUpgrader", "org.apache.lucene.index", NULL, 0x11, 7, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexIndexUpgrader;
}

@end

void OrgApacheLuceneIndexIndexUpgrader_printUsage() {
  OrgApacheLuceneIndexIndexUpgrader_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err_))) printlnWithNSString:@"Upgrades an index so all segments created with a previous Lucene version are rewritten."];
  [JreLoadStatic(JavaLangSystem, err_) printlnWithNSString:@"Usage:"];
  [JreLoadStatic(JavaLangSystem, err_) printlnWithNSString:JreStrcat("$$$", @"  java ", [OrgApacheLuceneIndexIndexUpgrader_class_() getName], @" [-delete-prior-commits] [-verbose] [-dir-impl X] indexDir")];
  [JreLoadStatic(JavaLangSystem, err_) printlnWithNSString:@"This tool keeps only the last commit in an index; for this"];
  [JreLoadStatic(JavaLangSystem, err_) printlnWithNSString:@"reason, if the incoming index has more than one commit, the tool"];
  [JreLoadStatic(JavaLangSystem, err_) printlnWithNSString:@"refuses to run by default. Specify -delete-prior-commits to override"];
  [JreLoadStatic(JavaLangSystem, err_) printlnWithNSString:@"this, allowing the tool to delete all but the last commit."];
  [JreLoadStatic(JavaLangSystem, err_) printlnWithNSString:JreStrcat("$$$$$", @"Specify a ", [OrgApacheLuceneStoreFSDirectory_class_() getSimpleName], @" implementation through the -dir-impl option to force its use. If no package is specified the ", [((JavaLangPackage *) nil_chk([OrgApacheLuceneStoreFSDirectory_class_() getPackage])) getName], @" package will be used.")];
  [JreLoadStatic(JavaLangSystem, err_) printlnWithNSString:@"WARNING: This tool may reorder document IDs!"];
  JavaLangSystem_exitWithInt_(1);
}

void OrgApacheLuceneIndexIndexUpgrader_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgApacheLuceneIndexIndexUpgrader_initialize();
  [((OrgApacheLuceneIndexIndexUpgrader *) nil_chk(OrgApacheLuceneIndexIndexUpgrader_parseArgsWithNSStringArray_(args))) upgrade];
}

OrgApacheLuceneIndexIndexUpgrader *OrgApacheLuceneIndexIndexUpgrader_parseArgsWithNSStringArray_(IOSObjectArray *args) {
  OrgApacheLuceneIndexIndexUpgrader_initialize();
  NSString *path = nil;
  jboolean deletePriorCommits = false;
  OrgApacheLuceneUtilInfoStream *out = nil;
  NSString *dirImpl = nil;
  jint i = 0;
  while (i < ((IOSObjectArray *) nil_chk(args))->size_) {
    NSString *arg = IOSObjectArray_Get(args, i);
    if ([@"-delete-prior-commits" isEqual:arg]) {
      deletePriorCommits = true;
    }
    else if ([@"-verbose" isEqual:arg]) {
      out = [new_OrgApacheLuceneUtilPrintStreamInfoStream_initWithJavaIoPrintStream_(JreLoadStatic(JavaLangSystem, out_)) autorelease];
    }
    else if ([@"-dir-impl" isEqual:arg]) {
      if (i == args->size_ - 1) {
        [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:@"ERROR: missing value for -dir-impl option"];
        JavaLangSystem_exitWithInt_(1);
      }
      i++;
      dirImpl = IOSObjectArray_Get(args, i);
    }
    else if (path == nil) {
      path = arg;
    }
    else {
      OrgApacheLuceneIndexIndexUpgrader_printUsage();
    }
    i++;
  }
  if (path == nil) {
    OrgApacheLuceneIndexIndexUpgrader_printUsage();
  }
  OrgLukhnosPortmobileFilePath *p = OrgLukhnosPortmobileFilePaths_getWithNSString_(path);
  OrgApacheLuceneStoreDirectory *dir = nil;
  if (dirImpl == nil) {
    dir = OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_(p);
  }
  else {
    dir = OrgApacheLuceneUtilCommandLineUtil_newFSDirectoryWithNSString_withOrgLukhnosPortmobileFilePath_(dirImpl, p);
  }
  return [new_OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilInfoStream_withBoolean_(dir, out, deletePriorCommits) autorelease];
}

void OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneIndexIndexUpgrader *self, OrgApacheLuceneStoreDirectory *dir) {
  OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_withBoolean_(self, dir, [new_OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(nil) autorelease], false);
}

OrgApacheLuceneIndexIndexUpgrader *new_OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *dir) {
  OrgApacheLuceneIndexIndexUpgrader *self = [OrgApacheLuceneIndexIndexUpgrader alloc];
  OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_(self, dir);
  return self;
}

void OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilInfoStream_withBoolean_(OrgApacheLuceneIndexIndexUpgrader *self, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneUtilInfoStream *infoStream, jboolean deletePriorCommits) {
  OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_withBoolean_(self, dir, [new_OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(nil) autorelease], deletePriorCommits);
  if (nil != infoStream) {
    [((OrgApacheLuceneIndexIndexWriterConfig *) nil_chk(self->iwc_)) setInfoStreamWithOrgApacheLuceneUtilInfoStream:infoStream];
  }
}

OrgApacheLuceneIndexIndexUpgrader *new_OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilInfoStream_withBoolean_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneUtilInfoStream *infoStream, jboolean deletePriorCommits) {
  OrgApacheLuceneIndexIndexUpgrader *self = [OrgApacheLuceneIndexIndexUpgrader alloc];
  OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilInfoStream_withBoolean_(self, dir, infoStream, deletePriorCommits);
  return self;
}

void OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_withBoolean_(OrgApacheLuceneIndexIndexUpgrader *self, OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexIndexWriterConfig *iwc, jboolean deletePriorCommits) {
  NSObject_init(self);
  JreStrongAssign(&self->dir_, dir);
  JreStrongAssign(&self->iwc_, iwc);
  self->deletePriorCommits_ = deletePriorCommits;
}

OrgApacheLuceneIndexIndexUpgrader *new_OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_withBoolean_(OrgApacheLuceneStoreDirectory *dir, OrgApacheLuceneIndexIndexWriterConfig *iwc, jboolean deletePriorCommits) {
  OrgApacheLuceneIndexIndexUpgrader *self = [OrgApacheLuceneIndexIndexUpgrader alloc];
  OrgApacheLuceneIndexIndexUpgrader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_withBoolean_(self, dir, iwc, deletePriorCommits);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexUpgrader)
