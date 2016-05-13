//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/DirectoryStream.java
//

#include "J2ObjC_source.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/lukhnos/portmobile/file/DirectoryStream.h"

@interface OrgLukhnosPortmobileFileDirectoryStream : NSObject

@end

@implementation OrgLukhnosPortmobileFileDirectoryStream

+ (const J2ObjcClassInfo *)__metadata {
  static const char *inner_classes[] = {"Lorg.lukhnos.portmobile.file.DirectoryStream$SimpleDirectoryStream;"};
  static const J2ObjcClassInfo _OrgLukhnosPortmobileFileDirectoryStream = { 2, "DirectoryStream", "org.lukhnos.portmobile.file", NULL, 0x609, 0, NULL, 0, NULL, 0, NULL, 1, inner_classes, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/AutoCloseable;Ljava/io/Closeable;Ljava/lang/Iterable<TT;>;" };
  return &_OrgLukhnosPortmobileFileDirectoryStream;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileFileDirectoryStream)

@implementation OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)paths {
  OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream_initWithJavaUtilList_(self, paths);
  return self;
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilList>) nil_chk(paths_)) iterator];
}

- (void)close {
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:", "SimpleDirectoryStream", NULL, 0x1, NULL, "(Ljava/util/List<TT;>;)V" },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, "()Ljava/util/Iterator<TT;>;" },
    { "close", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "paths_", NULL, 0x0, "Ljava.util.List;", NULL, "Ljava/util/List<TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream = { 2, "SimpleDirectoryStream", "org.lukhnos.portmobile.file", "DirectoryStream", 0x9, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Lorg/lukhnos/portmobile/file/DirectoryStream<TT;>;" };
  return &_OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream;
}

@end

void OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream_initWithJavaUtilList_(OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream *self, id<JavaUtilList> paths) {
  NSObject_init(self);
  self->paths_ = paths;
}

OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream *new_OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream_initWithJavaUtilList_(id<JavaUtilList> paths) {
  J2OBJC_NEW_IMPL(OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream, initWithJavaUtilList_, paths)
}

OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream *create_OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream_initWithJavaUtilList_(id<JavaUtilList> paths) {
  J2OBJC_CREATE_IMPL(OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream, initWithJavaUtilList_, paths)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream)
