//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/IOUtils.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedReader.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/Reader.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Error.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Iterable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/Thread.h"
#include "java/lang/Throwable.h"
#include "java/nio/channels/FileChannel.h"
#include "java/nio/charset/Charset.h"
#include "java/nio/charset/CharsetDecoder.h"
#include "java/nio/charset/CodingErrorAction.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/store/FileSwitchDirectory.h"
#include "org/apache/lucene/store/FilterDirectory.h"
#include "org/apache/lucene/store/RAMDirectory.h"
#include "org/apache/lucene/util/Constants.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"
#include "org/lukhnos/portmobile/channels/utils/FileChannelUtils.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"
#include "org/lukhnos/portmobile/file/FileVisitResult.h"
#include "org/lukhnos/portmobile/file/FileVisitor.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"
#include "org/lukhnos/portmobile/file/StandardOpenOption.h"
#include "org/lukhnos/portmobile/file/attribute/BasicFileAttributes.h"

@interface OrgApacheLuceneUtilIOUtils ()

- (instancetype)init;

+ (void)addSuppressedWithJavaLangThrowable:(JavaLangThrowable *)exception
                     withJavaLangThrowable:(JavaLangThrowable *)suppressed;

+ (JavaUtilLinkedHashMap *)rmWithJavaUtilLinkedHashMap:(JavaUtilLinkedHashMap *)unremoved
                 withOrgLukhnosPortmobileFilePathArray:(IOSObjectArray *)locations;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilIOUtils_init(OrgApacheLuceneUtilIOUtils *self);

__attribute__((unused)) static OrgApacheLuceneUtilIOUtils *new_OrgApacheLuceneUtilIOUtils_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static void OrgApacheLuceneUtilIOUtils_addSuppressedWithJavaLangThrowable_withJavaLangThrowable_(JavaLangThrowable *exception, JavaLangThrowable *suppressed);

__attribute__((unused)) static JavaUtilLinkedHashMap *OrgApacheLuceneUtilIOUtils_rmWithJavaUtilLinkedHashMap_withOrgLukhnosPortmobileFilePathArray_(JavaUtilLinkedHashMap *unremoved, IOSObjectArray *locations);

@interface OrgApacheLuceneUtilIOUtils_$1 : NSObject < OrgLukhnosPortmobileFileFileVisitor > {
 @public
  JavaUtilLinkedHashMap *val$unremoved_;
}

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)preVisitDirectoryWithId:(OrgLukhnosPortmobileFilePath *)dir
                withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)postVisitDirectoryWithId:(OrgLukhnosPortmobileFilePath *)dir
                                                    withJavaIoIOException:(JavaIoIOException *)impossible;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)visitFileWithId:(OrgLukhnosPortmobileFilePath *)file
        withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs;

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)visitFileFailedWithId:(OrgLukhnosPortmobileFilePath *)file
                                                 withJavaIoIOException:(JavaIoIOException *)exc;

- (instancetype)initWithJavaUtilLinkedHashMap:(JavaUtilLinkedHashMap *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilIOUtils_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilIOUtils_$1, val$unremoved_, JavaUtilLinkedHashMap *)

__attribute__((unused)) static void OrgApacheLuceneUtilIOUtils_$1_initWithJavaUtilLinkedHashMap_(OrgApacheLuceneUtilIOUtils_$1 *self, JavaUtilLinkedHashMap *capture$0);

__attribute__((unused)) static OrgApacheLuceneUtilIOUtils_$1 *new_OrgApacheLuceneUtilIOUtils_$1_initWithJavaUtilLinkedHashMap_(JavaUtilLinkedHashMap *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilIOUtils_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilIOUtils)

JavaNioCharsetCharset *OrgApacheLuceneUtilIOUtils_CHARSET_UTF_8_;
NSString *OrgApacheLuceneUtilIOUtils_UTF_8_;

@implementation OrgApacheLuceneUtilIOUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilIOUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)closeWithJavaIoCloseableArray:(IOSObjectArray *)objects {
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(objects);
}

+ (void)closeWithJavaLangIterable:(id<JavaLangIterable>)objects {
  OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(objects);
}

+ (void)closeWhileHandlingExceptionWithJavaIoCloseableArray:(IOSObjectArray *)objects {
  OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(objects);
}

+ (void)closeWhileHandlingExceptionWithJavaLangIterable:(id<JavaLangIterable>)objects {
  OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_(objects);
}

+ (void)addSuppressedWithJavaLangThrowable:(JavaLangThrowable *)exception
                     withJavaLangThrowable:(JavaLangThrowable *)suppressed {
  OrgApacheLuceneUtilIOUtils_addSuppressedWithJavaLangThrowable_withJavaLangThrowable_(exception, suppressed);
}

+ (JavaIoReader *)getDecodingReaderWithJavaIoInputStream:(JavaIoInputStream *)stream
                               withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charSet {
  return OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_(stream, charSet);
}

+ (JavaIoReader *)getDecodingReaderWithIOSClass:(IOSClass *)clazz
                                   withNSString:(NSString *)resource
                      withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charSet {
  return OrgApacheLuceneUtilIOUtils_getDecodingReaderWithIOSClass_withNSString_withJavaNioCharsetCharset_(clazz, resource, charSet);
}

+ (void)deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                     withNSStringArray:(IOSObjectArray *)files {
  OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(dir, files);
}

+ (void)deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray:(IOSObjectArray *)files {
  OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray_(files);
}

+ (void)deleteFilesIgnoringExceptionsWithJavaUtilCollection:(id<JavaUtilCollection>)files {
  OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithJavaUtilCollection_(files);
}

+ (void)deleteFilesIfExistWithOrgLukhnosPortmobileFilePathArray:(IOSObjectArray *)files {
  OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithOrgLukhnosPortmobileFilePathArray_(files);
}

+ (void)deleteFilesIfExistWithJavaUtilCollection:(id<JavaUtilCollection>)files {
  OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithJavaUtilCollection_(files);
}

+ (void)rmWithOrgLukhnosPortmobileFilePathArray:(IOSObjectArray *)locations {
  OrgApacheLuceneUtilIOUtils_rmWithOrgLukhnosPortmobileFilePathArray_(locations);
}

+ (JavaUtilLinkedHashMap *)rmWithJavaUtilLinkedHashMap:(JavaUtilLinkedHashMap *)unremoved
                 withOrgLukhnosPortmobileFilePathArray:(IOSObjectArray *)locations {
  return OrgApacheLuceneUtilIOUtils_rmWithJavaUtilLinkedHashMap_withOrgLukhnosPortmobileFilePathArray_(unremoved, locations);
}

+ (void)reThrowWithJavaLangThrowable:(JavaLangThrowable *)th {
  OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(th);
}

+ (void)reThrowUncheckedWithJavaLangThrowable:(JavaLangThrowable *)th {
  OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(th);
}

+ (void)fsyncWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)fileToSync
                                  withBoolean:(jboolean)isDir {
  OrgApacheLuceneUtilIOUtils_fsyncWithOrgLukhnosPortmobileFilePath_withBoolean_(fileToSync, isDir);
}

+ (jboolean)spinsWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir {
  return OrgApacheLuceneUtilIOUtils_spinsWithOrgApacheLuceneStoreDirectory_(dir);
}

+ (jboolean)spinsWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path {
  return OrgApacheLuceneUtilIOUtils_spinsWithOrgLukhnosPortmobileFilePath_(path);
}

+ (jboolean)spinsLinuxWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path {
  return OrgApacheLuceneUtilIOUtils_spinsLinuxWithOrgLukhnosPortmobileFilePath_(path);
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilIOUtils class]) {
    JreStrongAssign(&OrgApacheLuceneUtilIOUtils_CHARSET_UTF_8_, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8_));
    JreStrongAssign(&OrgApacheLuceneUtilIOUtils_UTF_8_, [((JavaNioCharsetCharset *) nil_chk(JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8_))) name]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilIOUtils)
  }
}

+ (IOSObjectArray *)__annotations_CHARSET_UTF_8_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "IOUtils", NULL, 0x2, NULL, NULL },
    { "closeWithJavaIoCloseableArray:", "close", "V", 0x89, "Ljava.io.IOException;", NULL },
    { "closeWithJavaLangIterable:", "close", "V", 0x9, "Ljava.io.IOException;", NULL },
    { "closeWhileHandlingExceptionWithJavaIoCloseableArray:", "closeWhileHandlingException", "V", 0x89, NULL, NULL },
    { "closeWhileHandlingExceptionWithJavaLangIterable:", "closeWhileHandlingException", "V", 0x9, NULL, NULL },
    { "addSuppressedWithJavaLangThrowable:withJavaLangThrowable:", "addSuppressed", "V", 0xa, NULL, NULL },
    { "getDecodingReaderWithJavaIoInputStream:withJavaNioCharsetCharset:", "getDecodingReader", "Ljava.io.Reader;", 0x9, NULL, NULL },
    { "getDecodingReaderWithIOSClass:withNSString:withJavaNioCharsetCharset:", "getDecodingReader", "Ljava.io.Reader;", 0x9, "Ljava.io.IOException;", NULL },
    { "deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory:withNSStringArray:", "deleteFilesIgnoringExceptions", "V", 0x89, NULL, NULL },
    { "deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray:", "deleteFilesIgnoringExceptions", "V", 0x89, NULL, NULL },
    { "deleteFilesIgnoringExceptionsWithJavaUtilCollection:", "deleteFilesIgnoringExceptions", "V", 0x9, NULL, NULL },
    { "deleteFilesIfExistWithOrgLukhnosPortmobileFilePathArray:", "deleteFilesIfExist", "V", 0x89, "Ljava.io.IOException;", NULL },
    { "deleteFilesIfExistWithJavaUtilCollection:", "deleteFilesIfExist", "V", 0x9, "Ljava.io.IOException;", NULL },
    { "rmWithOrgLukhnosPortmobileFilePathArray:", "rm", "V", 0x89, "Ljava.io.IOException;", NULL },
    { "rmWithJavaUtilLinkedHashMap:withOrgLukhnosPortmobileFilePathArray:", "rm", "Ljava.util.LinkedHashMap;", 0x8a, NULL, NULL },
    { "reThrowWithJavaLangThrowable:", "reThrow", "V", 0x9, "Ljava.io.IOException;", NULL },
    { "reThrowUncheckedWithJavaLangThrowable:", "reThrowUnchecked", "V", 0x9, NULL, NULL },
    { "fsyncWithOrgLukhnosPortmobileFilePath:withBoolean:", "fsync", "V", 0x9, "Ljava.io.IOException;", NULL },
    { "spinsWithOrgApacheLuceneStoreDirectory:", "spins", "Z", 0x9, "Ljava.io.IOException;", NULL },
    { "spinsWithOrgLukhnosPortmobileFilePath:", "spins", "Z", 0x9, "Ljava.io.IOException;", NULL },
    { "spinsLinuxWithOrgLukhnosPortmobileFilePath:", "spinsLinux", "Z", 0x8, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CHARSET_UTF_8_", NULL, 0x19, "Ljava.nio.charset.Charset;", &OrgApacheLuceneUtilIOUtils_CHARSET_UTF_8_, NULL, .constantValue.asLong = 0 },
    { "UTF_8_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneUtilIOUtils_UTF_8_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIOUtils = { 2, "IOUtils", "org.apache.lucene.util", NULL, 0x11, 21, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilIOUtils;
}

@end

void OrgApacheLuceneUtilIOUtils_init(OrgApacheLuceneUtilIOUtils *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilIOUtils *new_OrgApacheLuceneUtilIOUtils_init() {
  OrgApacheLuceneUtilIOUtils *self = [OrgApacheLuceneUtilIOUtils alloc];
  OrgApacheLuceneUtilIOUtils_init(self);
  return self;
}

void OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(IOSObjectArray *objects) {
  OrgApacheLuceneUtilIOUtils_initialize();
  OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(JavaUtilArrays_asListWithNSObjectArray_(objects));
}

void OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(id<JavaLangIterable> objects) {
  OrgApacheLuceneUtilIOUtils_initialize();
  JavaLangThrowable *th = nil;
  for (id<JavaIoCloseable> __strong object in nil_chk(objects)) {
    @try {
      if (object != nil) {
        [object close];
      }
    }
    @catch (JavaLangThrowable *t) {
      OrgApacheLuceneUtilIOUtils_addSuppressedWithJavaLangThrowable_withJavaLangThrowable_(th, t);
      if (th == nil) {
        th = t;
      }
    }
  }
  OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(th);
}

void OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(IOSObjectArray *objects) {
  OrgApacheLuceneUtilIOUtils_initialize();
  OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_(JavaUtilArrays_asListWithNSObjectArray_(objects));
}

void OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_(id<JavaLangIterable> objects) {
  OrgApacheLuceneUtilIOUtils_initialize();
  for (id<JavaIoCloseable> __strong object in nil_chk(objects)) {
    @try {
      if (object != nil) {
        [object close];
      }
    }
    @catch (JavaLangThrowable *t) {
    }
  }
}

void OrgApacheLuceneUtilIOUtils_addSuppressedWithJavaLangThrowable_withJavaLangThrowable_(JavaLangThrowable *exception, JavaLangThrowable *suppressed) {
  OrgApacheLuceneUtilIOUtils_initialize();
  if (exception != nil && suppressed != nil) {
    [exception addSuppressedWithJavaLangThrowable:suppressed];
  }
}

JavaIoReader *OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_(JavaIoInputStream *stream, JavaNioCharsetCharset *charSet) {
  OrgApacheLuceneUtilIOUtils_initialize();
  JavaNioCharsetCharsetDecoder *charSetDecoder = [((JavaNioCharsetCharsetDecoder *) nil_chk([((JavaNioCharsetCharsetDecoder *) nil_chk([((JavaNioCharsetCharset *) nil_chk(charSet)) newDecoder])) onMalformedInputWithJavaNioCharsetCodingErrorAction:JreLoadStatic(JavaNioCharsetCodingErrorAction, REPORT_)])) onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JreLoadStatic(JavaNioCharsetCodingErrorAction, REPORT_)];
  return [new_JavaIoBufferedReader_initWithJavaIoReader_([new_JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharsetDecoder_(stream, charSetDecoder) autorelease]) autorelease];
}

JavaIoReader *OrgApacheLuceneUtilIOUtils_getDecodingReaderWithIOSClass_withNSString_withJavaNioCharsetCharset_(IOSClass *clazz, NSString *resource, JavaNioCharsetCharset *charSet) {
  OrgApacheLuceneUtilIOUtils_initialize();
  JavaIoInputStream *stream = nil;
  jboolean success = false;
  @try {
    stream = [((IOSClass *) nil_chk(clazz)) getResourceAsStream:resource];
    JavaIoReader *reader = OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_(stream, charSet);
    success = true;
    return reader;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ stream } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

void OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(OrgApacheLuceneStoreDirectory *dir, IOSObjectArray *files) {
  OrgApacheLuceneUtilIOUtils_initialize();
  {
    IOSObjectArray *a__ = files;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *name = *b__++;
      @try {
        [((OrgApacheLuceneStoreDirectory *) nil_chk(dir)) deleteFileWithNSString:name];
      }
      @catch (JavaLangThrowable *ignored) {
      }
    }
  }
}

void OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray_(IOSObjectArray *files) {
  OrgApacheLuceneUtilIOUtils_initialize();
  OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_(files));
}

void OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithJavaUtilCollection_(id<JavaUtilCollection> files) {
  OrgApacheLuceneUtilIOUtils_initialize();
  for (OrgLukhnosPortmobileFilePath * __strong name in nil_chk(files)) {
    if (name != nil) {
      @try {
        OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(name);
      }
      @catch (JavaLangThrowable *ignored) {
      }
    }
  }
}

void OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithOrgLukhnosPortmobileFilePathArray_(IOSObjectArray *files) {
  OrgApacheLuceneUtilIOUtils_initialize();
  OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_(files));
}

void OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithJavaUtilCollection_(id<JavaUtilCollection> files) {
  OrgApacheLuceneUtilIOUtils_initialize();
  JavaLangThrowable *th = nil;
  for (OrgLukhnosPortmobileFilePath * __strong file in nil_chk(files)) {
    @try {
      if (file != nil) {
        OrgLukhnosPortmobileFileFiles_deleteIfExistsWithOrgLukhnosPortmobileFilePath_(file);
      }
    }
    @catch (JavaLangThrowable *t) {
      OrgApacheLuceneUtilIOUtils_addSuppressedWithJavaLangThrowable_withJavaLangThrowable_(th, t);
      if (th == nil) {
        th = t;
      }
    }
  }
  OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(th);
}

void OrgApacheLuceneUtilIOUtils_rmWithOrgLukhnosPortmobileFilePathArray_(IOSObjectArray *locations) {
  OrgApacheLuceneUtilIOUtils_initialize();
  JavaUtilLinkedHashMap *unremoved = OrgApacheLuceneUtilIOUtils_rmWithJavaUtilLinkedHashMap_withOrgLukhnosPortmobileFilePathArray_([new_JavaUtilLinkedHashMap_init() autorelease], locations);
  if (![((JavaUtilLinkedHashMap *) nil_chk(unremoved)) isEmpty]) {
    JavaLangStringBuilder *b = [new_JavaLangStringBuilder_initWithNSString_(@"Could not remove the following files (in the order of attempts):\n") autorelease];
    for (id<JavaUtilMap_Entry> __strong kv in nil_chk([unremoved entrySet])) {
      [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([b appendWithNSString:@"   "])) appendWithId:[((OrgLukhnosPortmobileFilePath *) nil_chk([((id<JavaUtilMap_Entry>) nil_chk(kv)) getKey])) toAbsolutePath]])) appendWithNSString:@": "])) appendWithId:[kv getValue]])) appendWithNSString:@"\n"];
    }
    @throw [new_JavaIoIOException_initWithNSString_([b description]) autorelease];
  }
}

JavaUtilLinkedHashMap *OrgApacheLuceneUtilIOUtils_rmWithJavaUtilLinkedHashMap_withOrgLukhnosPortmobileFilePathArray_(JavaUtilLinkedHashMap *unremoved, IOSObjectArray *locations) {
  OrgApacheLuceneUtilIOUtils_initialize();
  if (locations != nil) {
    {
      IOSObjectArray *a__ = locations;
      OrgLukhnosPortmobileFilePath * const *b__ = a__->buffer_;
      OrgLukhnosPortmobileFilePath * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        OrgLukhnosPortmobileFilePath *location = *b__++;
        if (location != nil && OrgLukhnosPortmobileFileFiles_existsWithOrgLukhnosPortmobileFilePath_(location)) {
          @try {
            OrgLukhnosPortmobileFileFiles_walkFileTreeWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileFileVisitor_(location, [new_OrgApacheLuceneUtilIOUtils_$1_initWithJavaUtilLinkedHashMap_(unremoved) autorelease]);
          }
          @catch (JavaIoIOException *impossible) {
            @throw [new_JavaLangAssertionError_initWithNSString_withJavaLangThrowable_(@"visitor threw exception", impossible) autorelease];
          }
        }
      }
    }
  }
  return unremoved;
}

void OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(JavaLangThrowable *th) {
  OrgApacheLuceneUtilIOUtils_initialize();
  if (th != nil) {
    if ([th isKindOfClass:[JavaIoIOException class]]) {
      @throw (JavaIoIOException *) check_class_cast(th, [JavaIoIOException class]);
    }
    OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(th);
  }
}

void OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(JavaLangThrowable *th) {
  OrgApacheLuceneUtilIOUtils_initialize();
  if (th != nil) {
    if ([th isKindOfClass:[JavaLangRuntimeException class]]) {
      @throw (JavaLangRuntimeException *) check_class_cast(th, [JavaLangRuntimeException class]);
    }
    if ([th isKindOfClass:[JavaLangError class]]) {
      @throw (JavaLangError *) check_class_cast(th, [JavaLangError class]);
    }
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(th) autorelease];
  }
}

void OrgApacheLuceneUtilIOUtils_fsyncWithOrgLukhnosPortmobileFilePath_withBoolean_(OrgLukhnosPortmobileFilePath *fileToSync, jboolean isDir) {
  OrgApacheLuceneUtilIOUtils_initialize();
  JavaIoIOException *exc = nil;
  if (isDir) {
    return;
  }
  @try {
    JavaNioChannelsFileChannel *file = OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(fileToSync, [IOSObjectArray arrayWithObjects:(id[]){ isDir ? JreLoadStatic(OrgLukhnosPortmobileFileStandardOpenOptionEnum, READ) : JreLoadStatic(OrgLukhnosPortmobileFileStandardOpenOptionEnum, WRITE) } count:1 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()]);
    JavaLangThrowable *__primaryException1 = nil;
    @try {
      for (jint retry = 0; retry < 5; retry++) {
        @try {
          [((JavaNioChannelsFileChannel *) nil_chk(file)) forceWithBoolean:true];
          return;
        }
        @catch (JavaIoIOException *ioe) {
          if (exc == nil) {
            exc = ioe;
          }
          @try {
            JavaLangThread_sleepWithLong_(5LL);
          }
          @catch (JavaLangInterruptedException *ie) {
            OrgApacheLuceneUtilThreadInterruptedException *ex = [new_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(ie) autorelease];
            [ex addSuppressedWithJavaLangThrowable:exc];
            @throw ex;
          }
        }
      }
    }
    @catch (JavaLangThrowable *e) {
      __primaryException1 = e;
      @throw e;
    }
    @finally {
      if (file != nil) {
        if (__primaryException1 != nil) {
          @try {
            [file close];
          } @catch (JavaLangThrowable *e) {
            [__primaryException1 addSuppressedWithJavaLangThrowable:e];
          }
        } else {
          [file close];
        }
      }
    }
  }
  @catch (JavaIoIOException *ioe) {
    if (exc == nil) {
      exc = ioe;
    }
  }
  if (isDir) {
    JreAssert(((JreLoadStatic(OrgApacheLuceneUtilConstants, LINUX_) || JreLoadStatic(OrgApacheLuceneUtilConstants, MAC_OS_X_)) == false || JreLoadStatic(OrgApacheLuceneUtilConstants, JRE_IS_MINIMUM_JAVA9_)), (JreStrcat("$@", @"On Linux and MacOSX fsyncing a directory should not throw IOException, we just don't want to rely on that in production (undocumented). Got: ", exc)));
    return;
  }
  @throw exc;
}

jboolean OrgApacheLuceneUtilIOUtils_spinsWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *dir) {
  OrgApacheLuceneUtilIOUtils_initialize();
  dir = OrgApacheLuceneStoreFilterDirectory_unwrapWithOrgApacheLuceneStoreDirectory_(dir);
  if ([dir isKindOfClass:[OrgApacheLuceneStoreFileSwitchDirectory class]]) {
    OrgApacheLuceneStoreFileSwitchDirectory *fsd = (OrgApacheLuceneStoreFileSwitchDirectory *) check_class_cast(dir, [OrgApacheLuceneStoreFileSwitchDirectory class]);
    return OrgApacheLuceneUtilIOUtils_spinsWithOrgApacheLuceneStoreDirectory_([((OrgApacheLuceneStoreFileSwitchDirectory *) nil_chk(fsd)) getPrimaryDir]) || OrgApacheLuceneUtilIOUtils_spinsWithOrgApacheLuceneStoreDirectory_([fsd getSecondaryDir]);
  }
  else if ([dir isKindOfClass:[OrgApacheLuceneStoreRAMDirectory class]]) {
    return false;
  }
  else if ([dir isKindOfClass:[OrgApacheLuceneStoreFSDirectory class]]) {
    return OrgApacheLuceneUtilIOUtils_spinsWithOrgLukhnosPortmobileFilePath_([((OrgApacheLuceneStoreFSDirectory *) nil_chk(((OrgApacheLuceneStoreFSDirectory *) check_class_cast(dir, [OrgApacheLuceneStoreFSDirectory class])))) getDirectory]);
  }
  else {
    return true;
  }
}

jboolean OrgApacheLuceneUtilIOUtils_spinsWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path) {
  OrgApacheLuceneUtilIOUtils_initialize();
  path = [((OrgLukhnosPortmobileFilePath *) nil_chk(path)) toRealPath];
  if (!JreLoadStatic(OrgApacheLuceneUtilConstants, LINUX_)) {
    return true;
  }
  @try {
    return OrgApacheLuceneUtilIOUtils_spinsLinuxWithOrgLukhnosPortmobileFilePath_(path);
  }
  @catch (JavaLangException *exc) {
    return true;
  }
}

jboolean OrgApacheLuceneUtilIOUtils_spinsLinuxWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path) {
  OrgApacheLuceneUtilIOUtils_initialize();
  return false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIOUtils)

@implementation OrgApacheLuceneUtilIOUtils_$1

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)preVisitDirectoryWithId:(OrgLukhnosPortmobileFilePath *)dir
                withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs {
  return JreLoadStatic(OrgLukhnosPortmobileFileFileVisitResultEnum, CONTINUE);
}

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)postVisitDirectoryWithId:(OrgLukhnosPortmobileFilePath *)dir
                                                    withJavaIoIOException:(JavaIoIOException *)impossible {
  JreAssert((impossible == nil), (@"org/apache/lucene/util/IOUtils.java:316 condition failed: assert impossible == null;"));
  @try {
    OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(dir);
  }
  @catch (JavaIoIOException *e) {
    [((JavaUtilLinkedHashMap *) nil_chk(val$unremoved_)) putWithId:dir withId:e];
  }
  return JreLoadStatic(OrgLukhnosPortmobileFileFileVisitResultEnum, CONTINUE);
}

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)visitFileWithId:(OrgLukhnosPortmobileFilePath *)file
        withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)attrs {
  @try {
    OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(file);
  }
  @catch (JavaIoIOException *exc) {
    [((JavaUtilLinkedHashMap *) nil_chk(val$unremoved_)) putWithId:file withId:exc];
  }
  return JreLoadStatic(OrgLukhnosPortmobileFileFileVisitResultEnum, CONTINUE);
}

- (OrgLukhnosPortmobileFileFileVisitResultEnum *)visitFileFailedWithId:(OrgLukhnosPortmobileFilePath *)file
                                                 withJavaIoIOException:(JavaIoIOException *)exc {
  if (exc != nil) {
    [((JavaUtilLinkedHashMap *) nil_chk(val$unremoved_)) putWithId:file withId:exc];
  }
  return JreLoadStatic(OrgLukhnosPortmobileFileFileVisitResultEnum, CONTINUE);
}

- (instancetype)initWithJavaUtilLinkedHashMap:(JavaUtilLinkedHashMap *)capture$0 {
  OrgApacheLuceneUtilIOUtils_$1_initWithJavaUtilLinkedHashMap_(self, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val$unremoved_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "preVisitDirectoryWithId:withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:", "preVisitDirectory", "Lorg.lukhnos.portmobile.file.FileVisitResult;", 0x1, "Ljava.io.IOException;", NULL },
    { "postVisitDirectoryWithId:withJavaIoIOException:", "postVisitDirectory", "Lorg.lukhnos.portmobile.file.FileVisitResult;", 0x1, "Ljava.io.IOException;", NULL },
    { "visitFileWithId:withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:", "visitFile", "Lorg.lukhnos.portmobile.file.FileVisitResult;", 0x1, "Ljava.io.IOException;", NULL },
    { "visitFileFailedWithId:withJavaIoIOException:", "visitFileFailed", "Lorg.lukhnos.portmobile.file.FileVisitResult;", 0x1, "Ljava.io.IOException;", NULL },
    { "initWithJavaUtilLinkedHashMap:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$unremoved_", NULL, 0x1012, "Ljava.util.LinkedHashMap;", NULL, "Ljava/util/LinkedHashMap<Lorg/lukhnos/portmobile/file/Path;Ljava/lang/Throwable;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilIOUtils", "rmWithJavaUtilLinkedHashMap:withOrgLukhnosPortmobileFilePathArray:" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilIOUtils_$1 = { 2, "", "org.apache.lucene.util", "IOUtils", 0x8008, 5, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lorg/lukhnos/portmobile/file/FileVisitor<Lorg/lukhnos/portmobile/file/Path;>;" };
  return &_OrgApacheLuceneUtilIOUtils_$1;
}

@end

void OrgApacheLuceneUtilIOUtils_$1_initWithJavaUtilLinkedHashMap_(OrgApacheLuceneUtilIOUtils_$1 *self, JavaUtilLinkedHashMap *capture$0) {
  JreStrongAssign(&self->val$unremoved_, capture$0);
  NSObject_init(self);
}

OrgApacheLuceneUtilIOUtils_$1 *new_OrgApacheLuceneUtilIOUtils_$1_initWithJavaUtilLinkedHashMap_(JavaUtilLinkedHashMap *capture$0) {
  OrgApacheLuceneUtilIOUtils_$1 *self = [OrgApacheLuceneUtilIOUtils_$1 alloc];
  OrgApacheLuceneUtilIOUtils_$1_initWithJavaUtilLinkedHashMap_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilIOUtils_$1)
