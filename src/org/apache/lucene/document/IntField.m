//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/IntField.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/IntField.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/util/NumericUtils.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneDocumentIntField)

OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED;
OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentIntField_TYPE_STORED;

@implementation OrgApacheLuceneDocumentIntField

+ (OrgApacheLuceneDocumentFieldType *)TYPE_NOT_STORED {
  return OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED;
}

+ (OrgApacheLuceneDocumentFieldType *)TYPE_STORED {
  return OrgApacheLuceneDocumentIntField_TYPE_STORED;
}

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)stored {
  OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_(self, name, value, stored);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)value
withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)type {
  OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_(self, name, value, type);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneDocumentIntField class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setTokenizedWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setNumericTypeWithOrgApacheLuceneDocumentFieldType_NumericType:JreLoadEnum(OrgApacheLuceneDocumentFieldType_NumericType, INT)];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED setNumericPrecisionStepWithInt:OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT_32];
      [OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED freeze];
    }
    JreStrongAssignAndConsume(&OrgApacheLuceneDocumentIntField_TYPE_STORED, new_OrgApacheLuceneDocumentFieldType_init());
    {
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setTokenizedWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setOmitNormsWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setIndexOptionsWithOrgApacheLuceneIndexIndexOptions:JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS)];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setNumericTypeWithOrgApacheLuceneDocumentFieldType_NumericType:JreLoadEnum(OrgApacheLuceneDocumentFieldType_NumericType, INT)];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setNumericPrecisionStepWithInt:OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT_32];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED setStoredWithBoolean:true];
      [OrgApacheLuceneDocumentIntField_TYPE_STORED freeze];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneDocumentIntField)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withOrgApacheLuceneDocumentField_Store:", "IntField", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withInt:withOrgApacheLuceneDocumentFieldType:", "IntField", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_NOT_STORED", "TYPE_NOT_STORED", 0x19, "Lorg.apache.lucene.document.FieldType;", &OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED, NULL, .constantValue.asLong = 0 },
    { "TYPE_STORED", "TYPE_STORED", 0x19, "Lorg.apache.lucene.document.FieldType;", &OrgApacheLuceneDocumentIntField_TYPE_STORED, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentIntField = { 2, "IntField", "org.apache.lucene.document", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneDocumentIntField;
}

@end

void OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentIntField *self, NSString *name, jint value, OrgApacheLuceneDocumentField_Store *stored) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, stored == JreLoadEnum(OrgApacheLuceneDocumentField_Store, YES) ? OrgApacheLuceneDocumentIntField_TYPE_STORED : OrgApacheLuceneDocumentIntField_TYPE_NOT_STORED);
  JreStrongAssign(&self->fieldsData_, JavaLangInteger_valueOfWithInt_(value));
}

OrgApacheLuceneDocumentIntField *new_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_(NSString *name, jint value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentIntField, initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

OrgApacheLuceneDocumentIntField *create_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_(NSString *name, jint value, OrgApacheLuceneDocumentField_Store *stored) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentIntField, initWithNSString_withInt_withOrgApacheLuceneDocumentField_Store_, name, value, stored)
}

void OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentIntField *self, NSString *name, jint value, OrgApacheLuceneDocumentFieldType *type) {
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(self, name, type);
  if ([((OrgApacheLuceneDocumentFieldType *) nil_chk(type)) numericType] != JreLoadEnum(OrgApacheLuceneDocumentFieldType_NumericType, INT)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"type.numericType() must be INT but got ", [type numericType]));
  }
  JreStrongAssign(&self->fieldsData_, JavaLangInteger_valueOfWithInt_(value));
}

OrgApacheLuceneDocumentIntField *new_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_(NSString *name, jint value, OrgApacheLuceneDocumentFieldType *type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentIntField, initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_, name, value, type)
}

OrgApacheLuceneDocumentIntField *create_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_(NSString *name, jint value, OrgApacheLuceneDocumentFieldType *type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentIntField, initWithNSString_withInt_withOrgApacheLuceneDocumentFieldType_, name, value, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentIntField)
