//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/messages/NLS.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/SecurityManager.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/lang/Void.h"
#include "java/lang/reflect/Field.h"
#include "java/lang/reflect/Modifier.h"
#include "java/security/AccessController.h"
#include "java/security/PrivilegedAction.h"
#include "java/text/MessageFormat.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "java/util/MissingResourceException.h"
#include "java/util/ResourceBundle.h"
#include "java/util/Set.h"
#include "org/apache/lucene/queryparser/flexible/messages/NLS.h"

@interface OrgApacheLuceneQueryparserFlexibleMessagesNLS ()

+ (id)getResourceBundleObjectWithNSString:(NSString *)messageKey
                       withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (void)load__WithIOSClass:(IOSClass *)clazz;

+ (void)loadfieldValueWithJavaLangReflectField:(JavaLangReflectField *)field
                                   withBoolean:(jboolean)isFieldAccessible
                                  withIOSClass:(IOSClass *)clazz;

+ (void)validateMessageWithNSString:(NSString *)key
                       withIOSClass:(IOSClass *)clazz;

+ (void)makeAccessibleWithJavaLangReflectField:(JavaLangReflectField *)field;

@end

static id<JavaUtilMap> OrgApacheLuceneQueryparserFlexibleMessagesNLS_bundles_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserFlexibleMessagesNLS, bundles_, id<JavaUtilMap>)
J2OBJC_STATIC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleMessagesNLS, bundles_, id<JavaUtilMap>)

__attribute__((unused)) static id OrgApacheLuceneQueryparserFlexibleMessagesNLS_getResourceBundleObjectWithNSString_withJavaUtilLocale_(NSString *messageKey, JavaUtilLocale *locale);

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleMessagesNLS_load__WithIOSClass_(IOSClass *clazz);

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleMessagesNLS_loadfieldValueWithJavaLangReflectField_withBoolean_withIOSClass_(JavaLangReflectField *field, jboolean isFieldAccessible, IOSClass *clazz);

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleMessagesNLS_validateMessageWithNSString_withIOSClass_(NSString *key, IOSClass *clazz);

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleMessagesNLS_makeAccessibleWithJavaLangReflectField_(JavaLangReflectField *field);

@interface OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1 : NSObject < JavaSecurityPrivilegedAction > {
 @public
  JavaLangReflectField *val$field_;
}

- (id)run;

- (instancetype)initWithJavaLangReflectField:(JavaLangReflectField *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1, val$field_, JavaLangReflectField *)

__attribute__((unused)) static void OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1_initWithJavaLangReflectField_(OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1 *self, JavaLangReflectField *capture$0);

__attribute__((unused)) static OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1 *new_OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1_initWithJavaLangReflectField_(JavaLangReflectField *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneQueryparserFlexibleMessagesNLS)

@implementation OrgApacheLuceneQueryparserFlexibleMessagesNLS

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key {
  return OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_(key);
}

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key
                           withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_(key, locale);
}

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key
                           withJavaUtilLocale:(JavaUtilLocale *)locale
                            withNSObjectArray:(IOSObjectArray *)args {
  return OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_withNSObjectArray_(key, locale, args);
}

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key
                            withNSObjectArray:(IOSObjectArray *)args {
  return OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withNSObjectArray_(key, args);
}

+ (void)initializeMessagesWithNSString:(NSString *)bundleName
                          withIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initializeMessagesWithNSString_withIOSClass_(bundleName, clazz);
}

+ (id)getResourceBundleObjectWithNSString:(NSString *)messageKey
                       withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneQueryparserFlexibleMessagesNLS_getResourceBundleObjectWithNSString_withJavaUtilLocale_(messageKey, locale);
}

+ (void)load__WithIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_load__WithIOSClass_(clazz);
}

+ (void)loadfieldValueWithJavaLangReflectField:(JavaLangReflectField *)field
                                   withBoolean:(jboolean)isFieldAccessible
                                  withIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_loadfieldValueWithJavaLangReflectField_withBoolean_withIOSClass_(field, isFieldAccessible, clazz);
}

+ (void)validateMessageWithNSString:(NSString *)key
                       withIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_validateMessageWithNSString_withIOSClass_(key, clazz);
}

+ (void)makeAccessibleWithJavaLangReflectField:(JavaLangReflectField *)field {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_makeAccessibleWithJavaLangReflectField_(field);
}

+ (void)initialize {
  if (self == [OrgApacheLuceneQueryparserFlexibleMessagesNLS class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneQueryparserFlexibleMessagesNLS_bundles_, new_JavaUtilHashMap_initWithInt_(0));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneQueryparserFlexibleMessagesNLS)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NLS", NULL, 0x4, NULL, NULL },
    { "getLocalizedMessageWithNSString:", "getLocalizedMessage", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "getLocalizedMessageWithNSString:withJavaUtilLocale:", "getLocalizedMessage", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "getLocalizedMessageWithNSString:withJavaUtilLocale:withNSObjectArray:", "getLocalizedMessage", "Ljava.lang.String;", 0x89, NULL, NULL },
    { "getLocalizedMessageWithNSString:withNSObjectArray:", "getLocalizedMessage", "Ljava.lang.String;", 0x89, NULL, NULL },
    { "initializeMessagesWithNSString:withIOSClass:", "initializeMessages", "V", 0xc, NULL, NULL },
    { "getResourceBundleObjectWithNSString:withJavaUtilLocale:", "getResourceBundleObject", "Ljava.lang.Object;", 0xa, NULL, NULL },
    { "load__WithIOSClass:", "load", "V", 0xa, NULL, NULL },
    { "loadfieldValueWithJavaLangReflectField:withBoolean:withIOSClass:", "loadfieldValue", "V", 0xa, NULL, NULL },
    { "validateMessageWithNSString:withIOSClass:", "validateMessage", "V", 0xa, NULL, NULL },
    { "makeAccessibleWithJavaLangReflectField:", "makeAccessible", "V", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bundles_", NULL, 0xa, "Ljava.util.Map;", &OrgApacheLuceneQueryparserFlexibleMessagesNLS_bundles_, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<+Lorg/apache/lucene/queryparser/flexible/messages/NLS;>;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleMessagesNLS = { 2, "NLS", "org.apache.lucene.queryparser.flexible.messages", NULL, 0x1, 11, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserFlexibleMessagesNLS;
}

@end

void OrgApacheLuceneQueryparserFlexibleMessagesNLS_init(OrgApacheLuceneQueryparserFlexibleMessagesNLS *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleMessagesNLS *new_OrgApacheLuceneQueryparserFlexibleMessagesNLS_init() {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS *self = [OrgApacheLuceneQueryparserFlexibleMessagesNLS alloc];
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_init(self);
  return self;
}

NSString *OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_(NSString *key) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  return OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_(key, JavaUtilLocale_getDefault());
}

NSString *OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_(NSString *key, JavaUtilLocale *locale) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  id message = OrgApacheLuceneQueryparserFlexibleMessagesNLS_getResourceBundleObjectWithNSString_withJavaUtilLocale_(key, locale);
  if (message == nil) {
    return JreStrcat("$$$@$", @"Message with key:", key, @" and locale: ", locale, @" not found.");
  }
  return [nil_chk(message) description];
}

NSString *OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_withNSObjectArray_(NSString *key, JavaUtilLocale *locale, IOSObjectArray *args) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  NSString *str = OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_(key, locale);
  if (((IOSObjectArray *) nil_chk(args))->size_ > 0) {
    str = [((JavaTextMessageFormat *) [new_JavaTextMessageFormat_initWithNSString_withJavaUtilLocale_(str, JreLoadStatic(JavaUtilLocale, ROOT_)) autorelease]) formatWithId:args];
  }
  return str;
}

NSString *OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withNSObjectArray_(NSString *key, IOSObjectArray *args) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  return OrgApacheLuceneQueryparserFlexibleMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_withNSObjectArray_(key, JavaUtilLocale_getDefault(), args);
}

void OrgApacheLuceneQueryparserFlexibleMessagesNLS_initializeMessagesWithNSString_withIOSClass_(NSString *bundleName, IOSClass *clazz) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  @try {
    OrgApacheLuceneQueryparserFlexibleMessagesNLS_load__WithIOSClass_(clazz);
    if (![((id<JavaUtilMap>) nil_chk(OrgApacheLuceneQueryparserFlexibleMessagesNLS_bundles_)) containsKeyWithId:bundleName]) [OrgApacheLuceneQueryparserFlexibleMessagesNLS_bundles_ putWithId:bundleName withId:clazz];
  }
  @catch (JavaLangThrowable *e) {
  }
}

id OrgApacheLuceneQueryparserFlexibleMessagesNLS_getResourceBundleObjectWithNSString_withJavaUtilLocale_(NSString *messageKey, JavaUtilLocale *locale) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  for (id<JavaUtilIterator> it = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(OrgApacheLuceneQueryparserFlexibleMessagesNLS_bundles_)) keySet])) iterator]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
    IOSClass *clazz = [OrgApacheLuceneQueryparserFlexibleMessagesNLS_bundles_ getWithId:[it next]];
    JavaUtilResourceBundle *resourceBundle = JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_([((IOSClass *) nil_chk(clazz)) getName], locale);
    if (resourceBundle != nil) {
      @try {
        id obj = [resourceBundle getObjectWithNSString:messageKey];
        if (obj != nil) return obj;
      }
      @catch (JavaUtilMissingResourceException *e) {
      }
    }
  }
  return nil;
}

void OrgApacheLuceneQueryparserFlexibleMessagesNLS_load__WithIOSClass_(IOSClass *clazz) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  IOSObjectArray *fieldArray = [((IOSClass *) nil_chk(clazz)) getDeclaredFields];
  jboolean isFieldAccessible = ([clazz getModifiers] & JavaLangReflectModifier_PUBLIC) != 0;
  jint len = ((IOSObjectArray *) nil_chk(fieldArray))->size_;
  id<JavaUtilMap> fields = [new_JavaUtilHashMap_initWithInt_(len * 2) autorelease];
  for (jint i = 0; i < len; i++) {
    [fields putWithId:[((JavaLangReflectField *) nil_chk(IOSObjectArray_Get(fieldArray, i))) getName] withId:IOSObjectArray_Get(fieldArray, i)];
    OrgApacheLuceneQueryparserFlexibleMessagesNLS_loadfieldValueWithJavaLangReflectField_withBoolean_withIOSClass_(IOSObjectArray_Get(fieldArray, i), isFieldAccessible, clazz);
  }
}

void OrgApacheLuceneQueryparserFlexibleMessagesNLS_loadfieldValueWithJavaLangReflectField_withBoolean_withIOSClass_(JavaLangReflectField *field, jboolean isFieldAccessible, IOSClass *clazz) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  jint MOD_EXPECTED = JavaLangReflectModifier_PUBLIC | JavaLangReflectModifier_STATIC;
  jint MOD_MASK = MOD_EXPECTED | JavaLangReflectModifier_FINAL;
  if (([((JavaLangReflectField *) nil_chk(field)) getModifiers] & MOD_MASK) != MOD_EXPECTED) return;
  if (!isFieldAccessible) OrgApacheLuceneQueryparserFlexibleMessagesNLS_makeAccessibleWithJavaLangReflectField_(field);
  @try {
    [field setWithId:nil withId:[field getName]];
    OrgApacheLuceneQueryparserFlexibleMessagesNLS_validateMessageWithNSString_withIOSClass_([field getName], clazz);
  }
  @catch (JavaLangIllegalArgumentException *e) {
  }
  @catch (JavaLangIllegalAccessException *e) {
  }
  @catch (JavaLangException *e) {
  }
}

void OrgApacheLuceneQueryparserFlexibleMessagesNLS_validateMessageWithNSString_withIOSClass_(NSString *key, IOSClass *clazz) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  @try {
    JavaUtilResourceBundle *resourceBundle = JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_([((IOSClass *) nil_chk(clazz)) getName], JavaUtilLocale_getDefault());
    if (resourceBundle != nil) {
      id obj = [resourceBundle getObjectWithNSString:key];
    }
  }
  @catch (JavaUtilMissingResourceException *e) {
  }
  @catch (JavaLangThrowable *e) {
  }
}

void OrgApacheLuceneQueryparserFlexibleMessagesNLS_makeAccessibleWithJavaLangReflectField_(JavaLangReflectField *field) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_initialize();
  if (JavaLangSystem_getSecurityManager() == nil) {
    [((JavaLangReflectField *) nil_chk(field)) setAccessibleWithBoolean:true];
  }
  else {
    JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_([new_OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1_initWithJavaLangReflectField_(field) autorelease]);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleMessagesNLS)

@implementation OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1

- (id)run {
  [((JavaLangReflectField *) nil_chk(val$field_)) setAccessibleWithBoolean:true];
  return nil;
}

- (instancetype)initWithJavaLangReflectField:(JavaLangReflectField *)capture$0 {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1_initWithJavaLangReflectField_(self, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val$field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "Ljava.lang.Void;", 0x1, NULL, NULL },
    { "initWithJavaLangReflectField:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$field_", NULL, 0x1012, "Ljava.lang.reflect.Field;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneQueryparserFlexibleMessagesNLS", "makeAccessibleWithJavaLangReflectField:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1 = { 2, "", "org.apache.lucene.queryparser.flexible.messages", "NLS", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Ljava/security/PrivilegedAction<Ljava/lang/Void;>;" };
  return &_OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1;
}

@end

void OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1_initWithJavaLangReflectField_(OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1 *self, JavaLangReflectField *capture$0) {
  JreStrongAssign(&self->val$field_, capture$0);
  NSObject_init(self);
}

OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1 *new_OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1_initWithJavaLangReflectField_(JavaLangReflectField *capture$0) {
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1 *self = [OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1 alloc];
  OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1_initWithJavaLangReflectField_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleMessagesNLS_$1)
