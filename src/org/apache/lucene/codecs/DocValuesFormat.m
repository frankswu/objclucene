//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/DocValuesFormat.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/DocValuesConsumer.h"
#include "org/apache/lucene/codecs/DocValuesFormat.h"
#include "org/apache/lucene/codecs/DocValuesProducer.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/util/NamedSPILoader.h"

@interface OrgApacheLuceneCodecsDocValuesFormat () {
 @public
  NSString *name_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsDocValuesFormat, name_, NSString *)

@interface OrgApacheLuceneCodecsDocValuesFormat_Holder : NSObject

- (instancetype)init;

+ (OrgApacheLuceneUtilNamedSPILoader *)getLoader;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsDocValuesFormat_Holder)

static OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsDocValuesFormat_Holder, LOADER_, OrgApacheLuceneUtilNamedSPILoader *)

__attribute__((unused)) static void OrgApacheLuceneCodecsDocValuesFormat_Holder_init(OrgApacheLuceneCodecsDocValuesFormat_Holder *self);

__attribute__((unused)) static OrgApacheLuceneCodecsDocValuesFormat_Holder *new_OrgApacheLuceneCodecsDocValuesFormat_Holder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsDocValuesFormat_Holder)

@implementation OrgApacheLuceneCodecsDocValuesFormat

- (instancetype)initWithNSString:(NSString *)name {
  OrgApacheLuceneCodecsDocValuesFormat_initWithNSString_(self, name);
  return self;
}

- (OrgApacheLuceneCodecsDocValuesConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsDocValuesProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)getName {
  return name_;
}

- (NSString *)description {
  return JreStrcat("$$C", @"DocValuesFormat(name=", name_, ')');
}

+ (OrgApacheLuceneCodecsDocValuesFormat *)forNameWithNSString:(NSString *)name {
  return OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(name);
}

+ (id<JavaUtilSet>)availableDocValuesFormats {
  return OrgApacheLuceneCodecsDocValuesFormat_availableDocValuesFormats();
}

+ (void)reloadDocValuesFormatsWithJavaLangClassLoader:(JavaLangClassLoader *)classloader {
  OrgApacheLuceneCodecsDocValuesFormat_reloadDocValuesFormatsWithJavaLangClassLoader_(classloader);
}

- (void)dealloc {
  RELEASE_(name_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "DocValuesFormat", NULL, 0x4, NULL, NULL },
    { "fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:", "fieldsConsumer", "Lorg.apache.lucene.codecs.DocValuesConsumer;", 0x401, "Ljava.io.IOException;", NULL },
    { "fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:", "fieldsProducer", "Lorg.apache.lucene.codecs.DocValuesProducer;", 0x401, "Ljava.io.IOException;", NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x11, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "forNameWithNSString:", "forName", "Lorg.apache.lucene.codecs.DocValuesFormat;", 0x9, NULL, NULL },
    { "availableDocValuesFormats", NULL, "Ljava.util.Set;", 0x9, NULL, NULL },
    { "reloadDocValuesFormatsWithJavaLangClassLoader:", "reloadDocValuesFormats", "V", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.DocValuesFormat$Holder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsDocValuesFormat = { 2, "DocValuesFormat", "org.apache.lucene.codecs", NULL, 0x401, 8, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneCodecsDocValuesFormat;
}

@end

void OrgApacheLuceneCodecsDocValuesFormat_initWithNSString_(OrgApacheLuceneCodecsDocValuesFormat *self, NSString *name) {
  NSObject_init(self);
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(name);
  JreStrongAssign(&self->name_, name);
}

OrgApacheLuceneCodecsDocValuesFormat *OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(NSString *name) {
  OrgApacheLuceneCodecsDocValuesFormat_initialize();
  return [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader())) lookupWithNSString:name];
}

id<JavaUtilSet> OrgApacheLuceneCodecsDocValuesFormat_availableDocValuesFormats() {
  OrgApacheLuceneCodecsDocValuesFormat_initialize();
  return [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader())) availableServices];
}

void OrgApacheLuceneCodecsDocValuesFormat_reloadDocValuesFormatsWithJavaLangClassLoader_(JavaLangClassLoader *classloader) {
  OrgApacheLuceneCodecsDocValuesFormat_initialize();
  [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader())) reloadWithJavaLangClassLoader:classloader];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsDocValuesFormat)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsDocValuesFormat_Holder)

@implementation OrgApacheLuceneCodecsDocValuesFormat_Holder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsDocValuesFormat_Holder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilNamedSPILoader *)getLoader {
  return OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader();
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsDocValuesFormat_Holder class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER_, new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(OrgApacheLuceneCodecsDocValuesFormat_class_()));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsDocValuesFormat_Holder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Holder", NULL, 0x2, NULL, NULL },
    { "getLoader", NULL, "Lorg.apache.lucene.util.NamedSPILoader;", 0x8, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LOADER_", NULL, 0x1a, "Lorg.apache.lucene.util.NamedSPILoader;", &OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER_, "Lorg/apache/lucene/util/NamedSPILoader<Lorg/apache/lucene/codecs/DocValuesFormat;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsDocValuesFormat_Holder = { 2, "Holder", "org.apache.lucene.codecs", "DocValuesFormat", 0x1a, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsDocValuesFormat_Holder;
}

@end

void OrgApacheLuceneCodecsDocValuesFormat_Holder_init(OrgApacheLuceneCodecsDocValuesFormat_Holder *self) {
  NSObject_init(self);
}

OrgApacheLuceneCodecsDocValuesFormat_Holder *new_OrgApacheLuceneCodecsDocValuesFormat_Holder_init() {
  OrgApacheLuceneCodecsDocValuesFormat_Holder *self = [OrgApacheLuceneCodecsDocValuesFormat_Holder alloc];
  OrgApacheLuceneCodecsDocValuesFormat_Holder_init(self);
  return self;
}

OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsDocValuesFormat_Holder_getLoader() {
  OrgApacheLuceneCodecsDocValuesFormat_Holder_initialize();
  if (OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER_ == nil) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup a DocValuesFormat by name before all formats could be initialized. This likely happens if you call DocValuesFormat#forName from a DocValuesFormat's ctor.") autorelease];
  }
  return OrgApacheLuceneCodecsDocValuesFormat_Holder_LOADER_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsDocValuesFormat_Holder)
