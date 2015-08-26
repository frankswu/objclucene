//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/NamedSPILoader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Thread.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/Map.h"
#include "java/util/ServiceConfigurationError.h"
#include "java/util/Set.h"
#include "org/apache/lucene/util/NamedSPILoader.h"
#include "org/apache/lucene/util/SPIClassIterator.h"

@interface OrgApacheLuceneUtilNamedSPILoader () {
 @public
  volatile_id services_;
  IOSClass *clazz_;
}

+ (jboolean)isLetterOrDigitWithChar:(jchar)c;

@end

J2OBJC_VOLATILE_FIELD_SETTER(OrgApacheLuceneUtilNamedSPILoader, services_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilNamedSPILoader, clazz_, IOSClass *)

__attribute__((unused)) static jboolean OrgApacheLuceneUtilNamedSPILoader_isLetterOrDigitWithChar_(jchar c);

@interface OrgApacheLuceneUtilNamedSPILoader_NamedSPI : NSObject

@end

@implementation OrgApacheLuceneUtilNamedSPILoader

- (instancetype)initWithIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(self, clazz);
  return self;
}

- (instancetype)initWithIOSClass:(IOSClass *)clazz
         withJavaLangClassLoader:(JavaLangClassLoader *)classloader {
  OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_withJavaLangClassLoader_(self, clazz, classloader);
  return self;
}

- (void)reloadWithJavaLangClassLoader:(JavaLangClassLoader *)classloader {
  JavaUtilLinkedHashMap *services = [new_JavaUtilLinkedHashMap_initWithJavaUtilMap_(JreLoadVolatileId(&self->services_)) autorelease];
  OrgApacheLuceneUtilSPIClassIterator *loader = OrgApacheLuceneUtilSPIClassIterator_getWithIOSClass_withJavaLangClassLoader_(clazz_, classloader);
  while ([((OrgApacheLuceneUtilSPIClassIterator *) nil_chk(loader)) hasNext]) {
    IOSClass *c = [loader next];
    @try {
      id<OrgApacheLuceneUtilNamedSPILoader_NamedSPI> service = [((IOSClass *) nil_chk(c)) newInstance];
      NSString *name = [((id<OrgApacheLuceneUtilNamedSPILoader_NamedSPI>) nil_chk(service)) getName];
      if (![services containsKeyWithId:name]) {
        OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(name);
        [services putWithId:name withId:service];
      }
    }
    @catch (JavaLangException *e) {
      @throw [new_JavaUtilServiceConfigurationError_initWithNSString_withJavaLangThrowable_(JreStrcat("$$", @"Cannot instantiate SPI class: ", [((IOSClass *) nil_chk(c)) getName]), e) autorelease];
    }
  }
  JreVolatileStrongAssign(&self->services_, JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(services));
}

+ (void)checkServiceNameWithNSString:(NSString *)name {
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(name);
}

+ (jboolean)isLetterOrDigitWithChar:(jchar)c {
  return OrgApacheLuceneUtilNamedSPILoader_isLetterOrDigitWithChar_(c);
}

- (id)lookupWithNSString:(NSString *)name {
  id<OrgApacheLuceneUtilNamedSPILoader_NamedSPI> service = [((id<JavaUtilMap>) nil_chk(JreLoadVolatileId(&services_))) getWithId:name];
  if (service != nil) return service;
  @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$$@", @"An SPI class of type ", [((IOSClass *) nil_chk(clazz_)) getName], @" with name '", name, @"' does not exist.  You need to add the corresponding JAR file supporting this SPI to your classpath.  The current classpath supports the following names: ", [self availableServices])) autorelease];
}

- (id<JavaUtilSet>)availableServices {
  return [((id<JavaUtilMap>) nil_chk(JreLoadVolatileId(&services_))) keySet];
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilCollection>) nil_chk([((id<JavaUtilMap>) nil_chk(JreLoadVolatileId(&services_))) values])) iterator];
}

- (void)dealloc {
  JreReleaseVolatile(&services_);
  RELEASE_(clazz_);
  [super dealloc];
}

- (void)__javaClone {
  [super __javaClone];
  JreRetainVolatile(&services_);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithIOSClass:", "NamedSPILoader", NULL, 0x1, NULL, NULL },
    { "initWithIOSClass:withJavaLangClassLoader:", "NamedSPILoader", NULL, 0x1, NULL, NULL },
    { "reloadWithJavaLangClassLoader:", "reload", "V", 0x1, NULL, NULL },
    { "checkServiceNameWithNSString:", "checkServiceName", "V", 0x9, NULL, NULL },
    { "isLetterOrDigitWithChar:", "isLetterOrDigit", "Z", 0xa, NULL, NULL },
    { "lookupWithNSString:", "lookup", "TS;", 0x1, NULL, "(Ljava/lang/String;)TS;" },
    { "availableServices", NULL, "Ljava.util.Set;", 0x1, NULL, NULL },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "services_", NULL, 0x42, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;TS;>;", .constantValue.asLong = 0 },
    { "clazz_", NULL, 0x12, "Ljava.lang.Class;", NULL, "Ljava/lang/Class<TS;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.NamedSPILoader$NamedSPI;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilNamedSPILoader = { 2, "NamedSPILoader", "org.apache.lucene.util", NULL, 0x11, 8, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, "<S::Lorg/apache/lucene/util/NamedSPILoader$NamedSPI;>Ljava/lang/Object;Ljava/lang/Iterable<TS;>;" };
  return &_OrgApacheLuceneUtilNamedSPILoader;
}

@end

void OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(OrgApacheLuceneUtilNamedSPILoader *self, IOSClass *clazz) {
  OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_withJavaLangClassLoader_(self, clazz, [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) getContextClassLoader]);
}

OrgApacheLuceneUtilNamedSPILoader *new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(IOSClass *clazz) {
  OrgApacheLuceneUtilNamedSPILoader *self = [OrgApacheLuceneUtilNamedSPILoader alloc];
  OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(self, clazz);
  return self;
}

void OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_withJavaLangClassLoader_(OrgApacheLuceneUtilNamedSPILoader *self, IOSClass *clazz, JavaLangClassLoader *classloader) {
  NSObject_init(self);
  JreVolatileStrongAssign(&self->services_, JavaUtilCollections_emptyMap());
  JreStrongAssign(&self->clazz_, clazz);
  JavaLangClassLoader *clazzClassloader = [((IOSClass *) nil_chk(clazz)) getClassLoader];
  if (clazzClassloader != nil && !OrgApacheLuceneUtilSPIClassIterator_isParentClassLoaderWithJavaLangClassLoader_withJavaLangClassLoader_(clazzClassloader, classloader)) {
    [self reloadWithJavaLangClassLoader:clazzClassloader];
  }
  [self reloadWithJavaLangClassLoader:classloader];
}

OrgApacheLuceneUtilNamedSPILoader *new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_withJavaLangClassLoader_(IOSClass *clazz, JavaLangClassLoader *classloader) {
  OrgApacheLuceneUtilNamedSPILoader *self = [OrgApacheLuceneUtilNamedSPILoader alloc];
  OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_withJavaLangClassLoader_(self, clazz, classloader);
  return self;
}

void OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(NSString *name) {
  OrgApacheLuceneUtilNamedSPILoader_initialize();
  if (((jint) [((NSString *) nil_chk(name)) length]) >= 128) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"Illegal service name: '", name, @"' is too long (must be < 128 chars).")) autorelease];
  }
  for (jint i = 0, len = ((jint) [name length]); i < len; i++) {
    jchar c = [name charAtWithInt:i];
    if (!OrgApacheLuceneUtilNamedSPILoader_isLetterOrDigitWithChar_(c)) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"Illegal service name: '", name, @"' must be simple ascii alphanumeric.")) autorelease];
    }
  }
}

jboolean OrgApacheLuceneUtilNamedSPILoader_isLetterOrDigitWithChar_(jchar c) {
  OrgApacheLuceneUtilNamedSPILoader_initialize();
  return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || ('0' <= c && c <= '9');
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilNamedSPILoader)

@implementation OrgApacheLuceneUtilNamedSPILoader_NamedSPI

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getName", NULL, "Ljava.lang.String;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilNamedSPILoader_NamedSPI = { 2, "NamedSPI", "org.apache.lucene.util", "NamedSPILoader", 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilNamedSPILoader_NamedSPI;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilNamedSPILoader_NamedSPI)