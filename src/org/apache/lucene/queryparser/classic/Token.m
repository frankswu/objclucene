//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/classic/Token.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/classic/Token.h"

/*!
 @brief The version identifier for this Serializable class.
 Increment only if the <i>serialized</i> form of the
 class changes.
 */
inline jlong OrgApacheLuceneQueryparserClassicToken_get_serialVersionUID();
#define OrgApacheLuceneQueryparserClassicToken_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserClassicToken, serialVersionUID, jlong)

@implementation OrgApacheLuceneQueryparserClassicToken

- (id)getValue {
  return nil;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserClassicToken_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)kind {
  OrgApacheLuceneQueryparserClassicToken_initWithInt_(self, kind);
  return self;
}

- (instancetype)initWithInt:(jint)kind
               withNSString:(NSString *)image {
  OrgApacheLuceneQueryparserClassicToken_initWithInt_withNSString_(self, kind, image);
  return self;
}

- (NSString *)description {
  return image_;
}

+ (OrgApacheLuceneQueryparserClassicToken *)newTokenWithInt:(jint)ofKind
                                               withNSString:(NSString *)image {
  return OrgApacheLuceneQueryparserClassicToken_newTokenWithInt_withNSString_(ofKind, image);
}

+ (OrgApacheLuceneQueryparserClassicToken *)newTokenWithInt:(jint)ofKind {
  return OrgApacheLuceneQueryparserClassicToken_newTokenWithInt_(ofKind);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "init", "Token", NULL, 0x1, NULL, NULL },
    { "initWithInt:", "Token", NULL, 0x1, NULL, NULL },
    { "initWithInt:withNSString:", "Token", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "newTokenWithInt:withNSString:", "newToken", "Lorg.apache.lucene.queryparser.classic.Token;", 0x9, NULL, NULL },
    { "newTokenWithInt:", "newToken", "Lorg.apache.lucene.queryparser.classic.Token;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneQueryparserClassicToken_serialVersionUID },
    { "kind_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "beginLine_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "beginColumn_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endLine_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endColumn_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "image_", NULL, 0x1, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "next_", NULL, 0x1, "Lorg.apache.lucene.queryparser.classic.Token;", NULL, NULL, .constantValue.asLong = 0 },
    { "specialToken_", NULL, 0x1, "Lorg.apache.lucene.queryparser.classic.Token;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserClassicToken = { 2, "Token", "org.apache.lucene.queryparser.classic", NULL, 0x1, 7, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserClassicToken;
}

@end

void OrgApacheLuceneQueryparserClassicToken_init(OrgApacheLuceneQueryparserClassicToken *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserClassicToken *new_OrgApacheLuceneQueryparserClassicToken_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserClassicToken, init)
}

OrgApacheLuceneQueryparserClassicToken *create_OrgApacheLuceneQueryparserClassicToken_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserClassicToken, init)
}

void OrgApacheLuceneQueryparserClassicToken_initWithInt_(OrgApacheLuceneQueryparserClassicToken *self, jint kind) {
  OrgApacheLuceneQueryparserClassicToken_initWithInt_withNSString_(self, kind, nil);
}

OrgApacheLuceneQueryparserClassicToken *new_OrgApacheLuceneQueryparserClassicToken_initWithInt_(jint kind) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserClassicToken, initWithInt_, kind)
}

OrgApacheLuceneQueryparserClassicToken *create_OrgApacheLuceneQueryparserClassicToken_initWithInt_(jint kind) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserClassicToken, initWithInt_, kind)
}

void OrgApacheLuceneQueryparserClassicToken_initWithInt_withNSString_(OrgApacheLuceneQueryparserClassicToken *self, jint kind, NSString *image) {
  NSObject_init(self);
  self->kind_ = kind;
  self->image_ = image;
}

OrgApacheLuceneQueryparserClassicToken *new_OrgApacheLuceneQueryparserClassicToken_initWithInt_withNSString_(jint kind, NSString *image) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserClassicToken, initWithInt_withNSString_, kind, image)
}

OrgApacheLuceneQueryparserClassicToken *create_OrgApacheLuceneQueryparserClassicToken_initWithInt_withNSString_(jint kind, NSString *image) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserClassicToken, initWithInt_withNSString_, kind, image)
}

OrgApacheLuceneQueryparserClassicToken *OrgApacheLuceneQueryparserClassicToken_newTokenWithInt_withNSString_(jint ofKind, NSString *image) {
  OrgApacheLuceneQueryparserClassicToken_initialize();
  switch (ofKind) {
    default:
    return new_OrgApacheLuceneQueryparserClassicToken_initWithInt_withNSString_(ofKind, image);
  }
}

OrgApacheLuceneQueryparserClassicToken *OrgApacheLuceneQueryparserClassicToken_newTokenWithInt_(jint ofKind) {
  OrgApacheLuceneQueryparserClassicToken_initialize();
  return OrgApacheLuceneQueryparserClassicToken_newTokenWithInt_withNSString_(ofKind, nil);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserClassicToken)
