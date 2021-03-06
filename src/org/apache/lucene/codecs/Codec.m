//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/Codec.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/Codec.h"
#include "org/apache/lucene/codecs/CompoundFormat.h"
#include "org/apache/lucene/codecs/DocValuesFormat.h"
#include "org/apache/lucene/codecs/FieldInfosFormat.h"
#include "org/apache/lucene/codecs/LiveDocsFormat.h"
#include "org/apache/lucene/codecs/NormsFormat.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/codecs/SegmentInfoFormat.h"
#include "org/apache/lucene/codecs/StoredFieldsFormat.h"
#include "org/apache/lucene/codecs/TermVectorsFormat.h"
#include "org/apache/lucene/util/NamedSPILoader.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneCodecsCodec () {
 @public
  NSString *name_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCodec, name_, NSString *)

/*!
 @brief This static holder class prevents classloading deadlock by delaying
 init of default codecs and available codecs until needed.
 */
@interface OrgApacheLuceneCodecsCodec_Holder : NSObject

- (instancetype)init;

+ (OrgApacheLuceneUtilNamedSPILoader *)getLoader;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsCodec_Holder)

inline OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsCodec_Holder_get_LOADER();
static OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsCodec_Holder_LOADER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsCodec_Holder, LOADER, OrgApacheLuceneUtilNamedSPILoader *)

inline OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_Holder_get_defaultCodec();
inline OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_Holder_set_defaultCodec(OrgApacheLuceneCodecsCodec *value);
static OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_Holder_defaultCodec;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneCodecsCodec_Holder, defaultCodec, OrgApacheLuceneCodecsCodec *)

__attribute__((unused)) static void OrgApacheLuceneCodecsCodec_Holder_init(OrgApacheLuceneCodecsCodec_Holder *self);

__attribute__((unused)) static OrgApacheLuceneCodecsCodec_Holder *new_OrgApacheLuceneCodecsCodec_Holder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCodec_Holder *create_OrgApacheLuceneCodecsCodec_Holder_init();

__attribute__((unused)) static OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsCodec_Holder_getLoader();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCodec_Holder)

@implementation OrgApacheLuceneCodecsCodec

- (instancetype)initWithNSString:(NSString *)name {
  OrgApacheLuceneCodecsCodec_initWithNSString_(self, name);
  return self;
}

- (NSString *)getName {
  return name_;
}

- (OrgApacheLuceneCodecsPostingsFormat *)postingsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsDocValuesFormat *)docValuesFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsStoredFieldsFormat *)storedFieldsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsTermVectorsFormat *)termVectorsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsFieldInfosFormat *)fieldInfosFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsSegmentInfoFormat *)segmentInfoFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsNormsFormat *)normsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsLiveDocsFormat *)liveDocsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsCompoundFormat *)compoundFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgApacheLuceneCodecsCodec *)forNameWithNSString:(NSString *)name {
  return OrgApacheLuceneCodecsCodec_forNameWithNSString_(name);
}

+ (id<JavaUtilSet>)availableCodecs {
  return OrgApacheLuceneCodecsCodec_availableCodecs();
}

+ (void)reloadCodecsWithJavaLangClassLoader:(JavaLangClassLoader *)classloader {
  OrgApacheLuceneCodecsCodec_reloadCodecsWithJavaLangClassLoader_(classloader);
}

+ (OrgApacheLuceneCodecsCodec *)getDefault {
  return OrgApacheLuceneCodecsCodec_getDefault();
}

+ (void)setDefaultWithOrgApacheLuceneCodecsCodec:(OrgApacheLuceneCodecsCodec *)codec {
  OrgApacheLuceneCodecsCodec_setDefaultWithOrgApacheLuceneCodecsCodec_(codec);
}

- (NSString *)description {
  return name_;
}

- (void)dealloc {
  RELEASE_(name_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "Codec", NULL, 0x4, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x11, NULL, NULL },
    { "postingsFormat", NULL, "Lorg.apache.lucene.codecs.PostingsFormat;", 0x401, NULL, NULL },
    { "docValuesFormat", NULL, "Lorg.apache.lucene.codecs.DocValuesFormat;", 0x401, NULL, NULL },
    { "storedFieldsFormat", NULL, "Lorg.apache.lucene.codecs.StoredFieldsFormat;", 0x401, NULL, NULL },
    { "termVectorsFormat", NULL, "Lorg.apache.lucene.codecs.TermVectorsFormat;", 0x401, NULL, NULL },
    { "fieldInfosFormat", NULL, "Lorg.apache.lucene.codecs.FieldInfosFormat;", 0x401, NULL, NULL },
    { "segmentInfoFormat", NULL, "Lorg.apache.lucene.codecs.SegmentInfoFormat;", 0x401, NULL, NULL },
    { "normsFormat", NULL, "Lorg.apache.lucene.codecs.NormsFormat;", 0x401, NULL, NULL },
    { "liveDocsFormat", NULL, "Lorg.apache.lucene.codecs.LiveDocsFormat;", 0x401, NULL, NULL },
    { "compoundFormat", NULL, "Lorg.apache.lucene.codecs.CompoundFormat;", 0x401, NULL, NULL },
    { "forNameWithNSString:", "forName", "Lorg.apache.lucene.codecs.Codec;", 0x9, NULL, NULL },
    { "availableCodecs", NULL, "Ljava.util.Set;", 0x9, NULL, "()Ljava/util/Set<Ljava/lang/String;>;" },
    { "reloadCodecsWithJavaLangClassLoader:", "reloadCodecs", "V", 0x9, NULL, NULL },
    { "getDefault", NULL, "Lorg.apache.lucene.codecs.Codec;", 0x9, NULL, NULL },
    { "setDefaultWithOrgApacheLuceneCodecsCodec:", "setDefault", "V", 0x9, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.Codec$Holder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCodec = { 2, "Codec", "org.apache.lucene.codecs", NULL, 0x401, 17, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneCodecsCodec;
}

@end

void OrgApacheLuceneCodecsCodec_initWithNSString_(OrgApacheLuceneCodecsCodec *self, NSString *name) {
  NSObject_init(self);
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(name);
  JreStrongAssign(&self->name_, name);
}

OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_forNameWithNSString_(NSString *name) {
  OrgApacheLuceneCodecsCodec_initialize();
  return [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsCodec_Holder_getLoader())) lookupWithNSString:name];
}

id<JavaUtilSet> OrgApacheLuceneCodecsCodec_availableCodecs() {
  OrgApacheLuceneCodecsCodec_initialize();
  return [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsCodec_Holder_getLoader())) availableServices];
}

void OrgApacheLuceneCodecsCodec_reloadCodecsWithJavaLangClassLoader_(JavaLangClassLoader *classloader) {
  OrgApacheLuceneCodecsCodec_initialize();
  [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsCodec_Holder_getLoader())) reloadWithJavaLangClassLoader:classloader];
}

OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_getDefault() {
  OrgApacheLuceneCodecsCodec_initialize();
  if (JreLoadStatic(OrgApacheLuceneCodecsCodec_Holder, defaultCodec) == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup the default Codec before all Codecs could be initialized. This likely happens if you try to get it from a Codec's ctor.");
  }
  return JreLoadStatic(OrgApacheLuceneCodecsCodec_Holder, defaultCodec);
}

void OrgApacheLuceneCodecsCodec_setDefaultWithOrgApacheLuceneCodecsCodec_(OrgApacheLuceneCodecsCodec *codec) {
  OrgApacheLuceneCodecsCodec_initialize();
  JreStrongAssign(JreLoadStaticRef(OrgApacheLuceneCodecsCodec_Holder, defaultCodec), OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(codec));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCodec)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsCodec_Holder)

@implementation OrgApacheLuceneCodecsCodec_Holder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCodec_Holder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilNamedSPILoader *)getLoader {
  return OrgApacheLuceneCodecsCodec_Holder_getLoader();
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsCodec_Holder class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsCodec_Holder_LOADER, new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(OrgApacheLuceneCodecsCodec_class_()));
    JreStrongAssign(&OrgApacheLuceneCodecsCodec_Holder_defaultCodec, [OrgApacheLuceneCodecsCodec_Holder_LOADER lookupWithNSString:@"Lucene53"]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsCodec_Holder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Holder", NULL, 0x2, NULL, NULL },
    { "getLoader", NULL, "Lorg.apache.lucene.util.NamedSPILoader;", 0x8, NULL, "()Lorg/apache/lucene/util/NamedSPILoader<Lorg/apache/lucene/codecs/Codec;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LOADER", "LOADER", 0x1a, "Lorg.apache.lucene.util.NamedSPILoader;", &OrgApacheLuceneCodecsCodec_Holder_LOADER, "Lorg/apache/lucene/util/NamedSPILoader<Lorg/apache/lucene/codecs/Codec;>;", .constantValue.asLong = 0 },
    { "defaultCodec", "defaultCodec", 0x8, "Lorg.apache.lucene.codecs.Codec;", &OrgApacheLuceneCodecsCodec_Holder_defaultCodec, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCodec_Holder = { 2, "Holder", "org.apache.lucene.codecs", "Codec", 0x1a, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsCodec_Holder;
}

@end

void OrgApacheLuceneCodecsCodec_Holder_init(OrgApacheLuceneCodecsCodec_Holder *self) {
  NSObject_init(self);
}

OrgApacheLuceneCodecsCodec_Holder *new_OrgApacheLuceneCodecsCodec_Holder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCodec_Holder, init)
}

OrgApacheLuceneCodecsCodec_Holder *create_OrgApacheLuceneCodecsCodec_Holder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCodec_Holder, init)
}

OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsCodec_Holder_getLoader() {
  OrgApacheLuceneCodecsCodec_Holder_initialize();
  if (OrgApacheLuceneCodecsCodec_Holder_LOADER == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup a Codec by name before all Codecs could be initialized. This likely happens if you call Codec#forName from a Codec's ctor.");
  }
  return OrgApacheLuceneCodecsCodec_Holder_LOADER;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCodec_Holder)
