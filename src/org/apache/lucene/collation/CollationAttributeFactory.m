//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/collation/CollationAttributeFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/text/Collator.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/collation/CollationAttributeFactory.h"
#include "org/apache/lucene/collation/tokenattributes/CollatedTermAttributeImpl.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@interface OrgApacheLuceneCollationCollationAttributeFactory () {
 @public
  JavaTextCollator *collator_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCollationCollationAttributeFactory, collator_, JavaTextCollator *)

@implementation OrgApacheLuceneCollationCollationAttributeFactory

- (instancetype)initWithJavaTextCollator:(JavaTextCollator *)collator {
  OrgApacheLuceneCollationCollationAttributeFactory_initWithJavaTextCollator_(self, collator);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)delegate
                                       withJavaTextCollator:(JavaTextCollator *)collator {
  OrgApacheLuceneCollationCollationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withJavaTextCollator_(self, delegate, collator);
  return self;
}

- (OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl *)createInstance {
  return create_OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl_initWithJavaTextCollator_(collator_);
}

- (void)dealloc {
  RELEASE_(collator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaTextCollator:", "CollationAttributeFactory", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:withJavaTextCollator:", "CollationAttributeFactory", NULL, 0x1, NULL, NULL },
    { "createInstance", NULL, "Lorg.apache.lucene.collation.tokenattributes.CollatedTermAttributeImpl;", 0x1, NULL, "()Lorg/apache/lucene/collation/tokenattributes/CollatedTermAttributeImpl;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "collator_", NULL, 0x12, "Ljava.text.Collator;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.collation.tokenattributes.CollatedTermAttributeImpl;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCollationCollationAttributeFactory = { 2, "CollationAttributeFactory", "org.apache.lucene.collation", NULL, 0x1, 3, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/AttributeFactory$StaticImplementationAttributeFactory<Lorg/apache/lucene/collation/tokenattributes/CollatedTermAttributeImpl;>;" };
  return &_OrgApacheLuceneCollationCollationAttributeFactory;
}

@end

void OrgApacheLuceneCollationCollationAttributeFactory_initWithJavaTextCollator_(OrgApacheLuceneCollationCollationAttributeFactory *self, JavaTextCollator *collator) {
  OrgApacheLuceneCollationCollationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withJavaTextCollator_(self, JreLoadStatic(OrgApacheLuceneAnalysisTokenStream, DEFAULT_TOKEN_ATTRIBUTE_FACTORY), collator);
}

OrgApacheLuceneCollationCollationAttributeFactory *new_OrgApacheLuceneCollationCollationAttributeFactory_initWithJavaTextCollator_(JavaTextCollator *collator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCollationCollationAttributeFactory, initWithJavaTextCollator_, collator)
}

OrgApacheLuceneCollationCollationAttributeFactory *create_OrgApacheLuceneCollationCollationAttributeFactory_initWithJavaTextCollator_(JavaTextCollator *collator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCollationCollationAttributeFactory, initWithJavaTextCollator_, collator)
}

void OrgApacheLuceneCollationCollationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withJavaTextCollator_(OrgApacheLuceneCollationCollationAttributeFactory *self, OrgApacheLuceneUtilAttributeFactory *delegate, JavaTextCollator *collator) {
  OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(self, delegate, OrgApacheLuceneCollationTokenattributesCollatedTermAttributeImpl_class_());
  JreStrongAssign(&self->collator_, collator);
}

OrgApacheLuceneCollationCollationAttributeFactory *new_OrgApacheLuceneCollationCollationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withJavaTextCollator_(OrgApacheLuceneUtilAttributeFactory *delegate, JavaTextCollator *collator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCollationCollationAttributeFactory, initWithOrgApacheLuceneUtilAttributeFactory_withJavaTextCollator_, delegate, collator)
}

OrgApacheLuceneCollationCollationAttributeFactory *create_OrgApacheLuceneCollationCollationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withJavaTextCollator_(OrgApacheLuceneUtilAttributeFactory *delegate, JavaTextCollator *collator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCollationCollationAttributeFactory, initWithOrgApacheLuceneUtilAttributeFactory_withJavaTextCollator_, delegate, collator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCollationCollationAttributeFactory)
