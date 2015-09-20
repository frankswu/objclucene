//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/ext/Extensions.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/queryparser/classic/QueryParserBase.h"
#include "org/apache/lucene/queryparser/ext/Extensions.h"
#include "org/apache/lucene/queryparser/ext/ParserExtension.h"

@interface OrgApacheLuceneQueryparserExtExtensions () {
 @public
  id<JavaUtilMap> extensions_;
  jchar extensionFieldDelimiter_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtensions, extensions_, id<JavaUtilMap>)

@implementation OrgApacheLuceneQueryparserExtExtensions

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserExtExtensions_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithChar:(jchar)extensionFieldDelimiter {
  OrgApacheLuceneQueryparserExtExtensions_initWithChar_(self, extensionFieldDelimiter);
  return self;
}

- (void)addWithNSString:(NSString *)key
withOrgApacheLuceneQueryparserExtParserExtension:(OrgApacheLuceneQueryparserExtParserExtension *)extension {
  [((id<JavaUtilMap>) nil_chk(self->extensions_)) putWithId:key withId:extension];
}

- (OrgApacheLuceneQueryparserExtParserExtension *)getExtensionWithNSString:(NSString *)key {
  return [((id<JavaUtilMap>) nil_chk(self->extensions_)) getWithId:key];
}

- (jchar)getExtensionFieldDelimiter {
  return extensionFieldDelimiter_;
}

- (OrgApacheLuceneQueryparserExtExtensions_Pair *)splitExtensionFieldWithNSString:(NSString *)defaultField
                                                                     withNSString:(NSString *)field {
  jint indexOf = [((NSString *) nil_chk(field)) indexOf:self->extensionFieldDelimiter_];
  if (indexOf < 0) return [new_OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(field, nil) autorelease];
  NSString *indexField = indexOf == 0 ? defaultField : [field substring:0 endIndex:indexOf];
  NSString *extensionKey = [field substring:indexOf + 1];
  return [new_OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(indexField, extensionKey) autorelease];
}

- (NSString *)escapeExtensionFieldWithNSString:(NSString *)extfield {
  return OrgApacheLuceneQueryparserClassicQueryParserBase_escapeWithNSString_(extfield);
}

- (NSString *)buildExtensionFieldWithNSString:(NSString *)extensionKey {
  return [self buildExtensionFieldWithNSString:extensionKey withNSString:@""];
}

- (NSString *)buildExtensionFieldWithNSString:(NSString *)extensionKey
                                 withNSString:(NSString *)field {
  JavaLangStringBuilder *builder = [new_JavaLangStringBuilder_initWithNSString_(field) autorelease];
  [builder appendWithChar:self->extensionFieldDelimiter_];
  [builder appendWithNSString:extensionKey];
  return [self escapeExtensionFieldWithNSString:[builder description]];
}

- (void)dealloc {
  RELEASE_(extensions_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Extensions", NULL, 0x1, NULL, NULL },
    { "initWithChar:", "Extensions", NULL, 0x1, NULL, NULL },
    { "addWithNSString:withOrgApacheLuceneQueryparserExtParserExtension:", "add", "V", 0x1, NULL, NULL },
    { "getExtensionWithNSString:", "getExtension", "Lorg.apache.lucene.queryparser.ext.ParserExtension;", 0x11, NULL, NULL },
    { "getExtensionFieldDelimiter", NULL, "C", 0x1, NULL, NULL },
    { "splitExtensionFieldWithNSString:withNSString:", "splitExtensionField", "Lorg.apache.lucene.queryparser.ext.Extensions$Pair;", 0x1, NULL, NULL },
    { "escapeExtensionFieldWithNSString:", "escapeExtensionField", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "buildExtensionFieldWithNSString:", "buildExtensionField", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "buildExtensionFieldWithNSString:withNSString:", "buildExtensionField", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "extensions_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/queryparser/ext/ParserExtension;>;", .constantValue.asLong = 0 },
    { "extensionFieldDelimiter_", NULL, 0x12, "C", NULL, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_EXTENSION_FIELD_DELIMITER", "DEFAULT_EXTENSION_FIELD_DELIMITER", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneQueryparserExtExtensions_DEFAULT_EXTENSION_FIELD_DELIMITER },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.queryparser.ext.Extensions$Pair;"};
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserExtExtensions = { 2, "Extensions", "org.apache.lucene.queryparser.ext", NULL, 0x1, 9, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneQueryparserExtExtensions;
}

@end

void OrgApacheLuceneQueryparserExtExtensions_init(OrgApacheLuceneQueryparserExtExtensions *self) {
  OrgApacheLuceneQueryparserExtExtensions_initWithChar_(self, OrgApacheLuceneQueryparserExtExtensions_DEFAULT_EXTENSION_FIELD_DELIMITER);
}

OrgApacheLuceneQueryparserExtExtensions *new_OrgApacheLuceneQueryparserExtExtensions_init() {
  OrgApacheLuceneQueryparserExtExtensions *self = [OrgApacheLuceneQueryparserExtExtensions alloc];
  OrgApacheLuceneQueryparserExtExtensions_init(self);
  return self;
}

void OrgApacheLuceneQueryparserExtExtensions_initWithChar_(OrgApacheLuceneQueryparserExtExtensions *self, jchar extensionFieldDelimiter) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->extensions_, new_JavaUtilHashMap_init());
  self->extensionFieldDelimiter_ = extensionFieldDelimiter;
}

OrgApacheLuceneQueryparserExtExtensions *new_OrgApacheLuceneQueryparserExtExtensions_initWithChar_(jchar extensionFieldDelimiter) {
  OrgApacheLuceneQueryparserExtExtensions *self = [OrgApacheLuceneQueryparserExtExtensions alloc];
  OrgApacheLuceneQueryparserExtExtensions_initWithChar_(self, extensionFieldDelimiter);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserExtExtensions)

@implementation OrgApacheLuceneQueryparserExtExtensions_Pair

- (instancetype)initWithId:(id)cur
                    withId:(id)cud {
  OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(self, cur, cud);
  return self;
}

- (void)dealloc {
  RELEASE_(cur_);
  RELEASE_(cud_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithId:withId:", "Pair", NULL, 0x1, NULL, "(TCur;TCud;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "cur_", NULL, 0x11, "TCur;", NULL, "TCur;", .constantValue.asLong = 0 },
    { "cud_", NULL, 0x11, "TCud;", NULL, "TCud;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserExtExtensions_Pair = { 2, "Pair", "org.apache.lucene.queryparser.ext", "Extensions", 0x9, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<Cur:Ljava/lang/Object;Cud:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_OrgApacheLuceneQueryparserExtExtensions_Pair;
}

@end

void OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(OrgApacheLuceneQueryparserExtExtensions_Pair *self, id cur, id cud) {
  NSObject_init(self);
  JreStrongAssign(&self->cur_, cur);
  JreStrongAssign(&self->cud_, cud);
}

OrgApacheLuceneQueryparserExtExtensions_Pair *new_OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(id cur, id cud) {
  OrgApacheLuceneQueryparserExtExtensions_Pair *self = [OrgApacheLuceneQueryparserExtExtensions_Pair alloc];
  OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(self, cur, cud);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserExtExtensions_Pair)
