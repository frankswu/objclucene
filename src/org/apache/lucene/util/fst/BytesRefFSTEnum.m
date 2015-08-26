//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/BytesRefFSTEnum.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/fst/BytesRefFSTEnum.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/FSTEnum.h"

@interface OrgApacheLuceneUtilFstBytesRefFSTEnum () {
 @public
  OrgApacheLuceneUtilBytesRef *current_;
  OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *result_;
  OrgApacheLuceneUtilBytesRef *target_;
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)setResult;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesRefFSTEnum, current_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesRefFSTEnum, result_, OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesRefFSTEnum, target_, OrgApacheLuceneUtilBytesRef *)

__attribute__((unused)) static OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(OrgApacheLuceneUtilFstBytesRefFSTEnum *self);

@implementation OrgApacheLuceneUtilFstBytesRefFSTEnum

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst {
  OrgApacheLuceneUtilFstBytesRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(self, fst);
  return self;
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)current {
  return result_;
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)next {
  [self doNext];
  return OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(self);
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target {
  JreStrongAssign(&self->target_, target);
  targetLength_ = ((OrgApacheLuceneUtilBytesRef *) nil_chk(target))->length_;
  [super doSeekCeil];
  return OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(self);
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)seekFloorWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target {
  JreStrongAssign(&self->target_, target);
  targetLength_ = ((OrgApacheLuceneUtilBytesRef *) nil_chk(target))->length_;
  [super doSeekFloor];
  return OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(self);
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target {
  JreStrongAssign(&self->target_, target);
  targetLength_ = ((OrgApacheLuceneUtilBytesRef *) nil_chk(target))->length_;
  if ([super doSeekExact]) {
    JreAssert((upto_ == 1 + target->length_), (@"org/apache/lucene/util/fst/BytesRefFSTEnum.java:85 condition failed: assert upto == 1+target.length;"));
    return OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(self);
  }
  else {
    return nil;
  }
}

- (jint)getTargetLabel {
  if (upto_ - 1 == ((OrgApacheLuceneUtilBytesRef *) nil_chk(target_))->length_) {
    return OrgApacheLuceneUtilFstFST_END_LABEL;
  }
  else {
    return IOSByteArray_Get(nil_chk(target_->bytes_), target_->offset_ + upto_ - 1) & (jint) 0xFF;
  }
}

- (jint)getCurrentLabel {
  return IOSByteArray_Get(nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(current_))->bytes_), upto_) & (jint) 0xFF;
}

- (void)setCurrentLabelWithInt:(jint)label {
  *IOSByteArray_GetRef(nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(current_))->bytes_), upto_) = (jbyte) label;
}

- (void)grow {
  JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(current_))->bytes_, OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(current_->bytes_, upto_ + 1));
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)setResult {
  return OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(self);
}

- (void)dealloc {
  RELEASE_(current_);
  RELEASE_(result_);
  RELEASE_(target_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilFstFST:", "BytesRefFSTEnum", NULL, 0x1, NULL, NULL },
    { "current", NULL, "Lorg.apache.lucene.util.fst.BytesRefFSTEnum$InputOutput;", 0x1, NULL, NULL },
    { "next", NULL, "Lorg.apache.lucene.util.fst.BytesRefFSTEnum$InputOutput;", 0x1, "Ljava.io.IOException;", NULL },
    { "seekCeilWithOrgApacheLuceneUtilBytesRef:", "seekCeil", "Lorg.apache.lucene.util.fst.BytesRefFSTEnum$InputOutput;", 0x1, "Ljava.io.IOException;", NULL },
    { "seekFloorWithOrgApacheLuceneUtilBytesRef:", "seekFloor", "Lorg.apache.lucene.util.fst.BytesRefFSTEnum$InputOutput;", 0x1, "Ljava.io.IOException;", NULL },
    { "seekExactWithOrgApacheLuceneUtilBytesRef:", "seekExact", "Lorg.apache.lucene.util.fst.BytesRefFSTEnum$InputOutput;", 0x1, "Ljava.io.IOException;", NULL },
    { "getTargetLabel", NULL, "I", 0x4, NULL, NULL },
    { "getCurrentLabel", NULL, "I", 0x4, NULL, NULL },
    { "setCurrentLabelWithInt:", "setCurrentLabel", "V", 0x4, NULL, NULL },
    { "grow", NULL, "V", 0x4, NULL, NULL },
    { "setResult", NULL, "Lorg.apache.lucene.util.fst.BytesRefFSTEnum$InputOutput;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "current_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "result_", NULL, 0x12, "Lorg.apache.lucene.util.fst.BytesRefFSTEnum$InputOutput;", NULL, "Lorg/apache/lucene/util/fst/BytesRefFSTEnum$InputOutput<TT;>;", .constantValue.asLong = 0 },
    { "target_", NULL, 0x2, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.fst.BytesRefFSTEnum$InputOutput;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstBytesRefFSTEnum = { 2, "BytesRefFSTEnum", "org.apache.lucene.util.fst", NULL, 0x11, 11, methods, 3, fields, 1, superclass_type_args, 1, inner_classes, NULL, "<T:Ljava/lang/Object;>Lorg/apache/lucene/util/fst/FSTEnum<TT;>;" };
  return &_OrgApacheLuceneUtilFstBytesRefFSTEnum;
}

@end

void OrgApacheLuceneUtilFstBytesRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstBytesRefFSTEnum *self, OrgApacheLuceneUtilFstFST *fst) {
  OrgApacheLuceneUtilFstFSTEnum_initWithOrgApacheLuceneUtilFstFST_(self, fst);
  JreStrongAssignAndConsume(&self->current_, new_OrgApacheLuceneUtilBytesRef_initWithInt_(10));
  JreStrongAssignAndConsume(&self->result_, new_OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init());
  JreStrongAssign(&((OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *) nil_chk(self->result_))->input_, self->current_);
  ((OrgApacheLuceneUtilBytesRef *) nil_chk(self->current_))->offset_ = 1;
}

OrgApacheLuceneUtilFstBytesRefFSTEnum *new_OrgApacheLuceneUtilFstBytesRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *fst) {
  OrgApacheLuceneUtilFstBytesRefFSTEnum *self = [OrgApacheLuceneUtilFstBytesRefFSTEnum alloc];
  OrgApacheLuceneUtilFstBytesRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(self, fst);
  return self;
}

OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(OrgApacheLuceneUtilFstBytesRefFSTEnum *self) {
  if (self->upto_ == 0) {
    return nil;
  }
  else {
    ((OrgApacheLuceneUtilBytesRef *) nil_chk(self->current_))->length_ = self->upto_ - 1;
    JreStrongAssign(&((OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *) nil_chk(self->result_))->output_, IOSObjectArray_Get(nil_chk(self->output_), self->upto_));
    return self->result_;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstBytesRefFSTEnum)

@implementation OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput

- (instancetype)init {
  OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init(self);
  return self;
}

- (void)dealloc {
  RELEASE_(input_);
  RELEASE_(output_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "input_", NULL, 0x1, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "output_", NULL, 0x1, "TT;", NULL, "TT;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput = { 2, "InputOutput", "org.apache.lucene.util.fst", "BytesRefFSTEnum", 0x9, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput;
}

@end

void OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init(OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *new_OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init() {
  OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *self = [OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput alloc];
  OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput)