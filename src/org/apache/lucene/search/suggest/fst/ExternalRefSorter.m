//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/fst/ExternalRefSorter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/Comparator.h"
#include "org/apache/lucene/search/suggest/fst/ExternalRefSorter.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefIterator.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/OfflineSorter.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

@interface OrgApacheLuceneSearchSuggestFstExternalRefSorter () {
 @public
  OrgApacheLuceneUtilOfflineSorter *sort_;
  OrgApacheLuceneUtilOfflineSorter_ByteSequencesWriter *writer_;
  OrgLukhnosPortmobileFilePath *input_;
  OrgLukhnosPortmobileFilePath *sorted_;
}

- (void)closeWriter;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstExternalRefSorter, sort_, OrgApacheLuceneUtilOfflineSorter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstExternalRefSorter, writer_, OrgApacheLuceneUtilOfflineSorter_ByteSequencesWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstExternalRefSorter, input_, OrgLukhnosPortmobileFilePath *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstExternalRefSorter, sorted_, OrgLukhnosPortmobileFilePath *)

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestFstExternalRefSorter_closeWriter(OrgApacheLuceneSearchSuggestFstExternalRefSorter *self);

@interface OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator () {
 @public
  OrgApacheLuceneUtilOfflineSorter_ByteSequencesReader *reader_;
  OrgApacheLuceneUtilBytesRef *scratch_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator, reader_, OrgApacheLuceneUtilOfflineSorter_ByteSequencesReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator, scratch_, OrgApacheLuceneUtilBytesRef *)

@implementation OrgApacheLuceneSearchSuggestFstExternalRefSorter

- (instancetype)initWithOrgApacheLuceneUtilOfflineSorter:(OrgApacheLuceneUtilOfflineSorter *)sort {
  OrgApacheLuceneSearchSuggestFstExternalRefSorter_initWithOrgApacheLuceneUtilOfflineSorter_(self, sort);
  return self;
}

- (void)addWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)utf8 {
  if (writer_ == nil) @throw [new_JavaLangIllegalStateException_init() autorelease];
  [((OrgApacheLuceneUtilOfflineSorter_ByteSequencesWriter *) nil_chk(writer_)) writeWithOrgApacheLuceneUtilBytesRef:utf8];
}

- (id<OrgApacheLuceneUtilBytesRefIterator>)iterator {
  if (sorted_ == nil) {
    OrgApacheLuceneSearchSuggestFstExternalRefSorter_closeWriter(self);
    JreStrongAssign(&sorted_, OrgLukhnosPortmobileFileFiles_createTempFileWithOrgLukhnosPortmobileFilePath_withNSString_withNSString_(OrgApacheLuceneUtilOfflineSorter_defaultTempDir(), @"RefSorter-", @".sorted"));
    jboolean success = false;
    @try {
      [((OrgApacheLuceneUtilOfflineSorter *) nil_chk(sort_)) sortWithOrgLukhnosPortmobileFilePath:input_ withOrgLukhnosPortmobileFilePath:sorted_];
      success = true;
    }
    @finally {
      if (success) {
        OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(input_);
      }
      else {
        OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray_([IOSObjectArray arrayWithObjects:(id[]){ input_ } count:1 type:OrgLukhnosPortmobileFilePath_class_()]);
      }
    }
    JreStrongAssign(&input_, nil);
  }
  return [new_OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator_initWithOrgApacheLuceneSearchSuggestFstExternalRefSorter_withOrgApacheLuceneUtilOfflineSorter_ByteSequencesReader_(self, [new_OrgApacheLuceneUtilOfflineSorter_ByteSequencesReader_initWithOrgLukhnosPortmobileFilePath_(sorted_) autorelease]) autorelease];
}

- (void)closeWriter {
  OrgApacheLuceneSearchSuggestFstExternalRefSorter_closeWriter(self);
}

- (void)close {
  jboolean success = false;
  @try {
    OrgApacheLuceneSearchSuggestFstExternalRefSorter_closeWriter(self);
    success = true;
  }
  @finally {
    if (success) {
      OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithOrgLukhnosPortmobileFilePathArray_([IOSObjectArray arrayWithObjects:(id[]){ input_, sorted_ } count:2 type:OrgLukhnosPortmobileFilePath_class_()]);
    }
    else {
      OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray_([IOSObjectArray arrayWithObjects:(id[]){ input_, sorted_ } count:2 type:OrgLukhnosPortmobileFilePath_class_()]);
    }
  }
}

- (id<JavaUtilComparator>)getComparator {
  return [((OrgApacheLuceneUtilOfflineSorter *) nil_chk(sort_)) getComparator];
}

- (void)dealloc {
  RELEASE_(sort_);
  RELEASE_(writer_);
  RELEASE_(input_);
  RELEASE_(sorted_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilOfflineSorter:", "ExternalRefSorter", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "addWithOrgApacheLuceneUtilBytesRef:", "add", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "iterator", NULL, "Lorg.apache.lucene.util.BytesRefIterator;", 0x1, "Ljava.io.IOException;", NULL },
    { "closeWriter", NULL, "V", 0x2, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getComparator", NULL, "Ljava.util.Comparator;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sort_", NULL, 0x12, "Lorg.apache.lucene.util.OfflineSorter;", NULL, NULL, .constantValue.asLong = 0 },
    { "writer_", NULL, 0x2, "Lorg.apache.lucene.util.OfflineSorter$ByteSequencesWriter;", NULL, NULL, .constantValue.asLong = 0 },
    { "input_", NULL, 0x2, "Lorg.lukhnos.portmobile.file.Path;", NULL, NULL, .constantValue.asLong = 0 },
    { "sorted_", NULL, 0x2, "Lorg.lukhnos.portmobile.file.Path;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.suggest.fst.ExternalRefSorter$ByteSequenceIterator;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestFstExternalRefSorter = { 2, "ExternalRefSorter", "org.apache.lucene.search.suggest.fst", NULL, 0x1, 6, methods, 4, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestFstExternalRefSorter;
}

@end

void OrgApacheLuceneSearchSuggestFstExternalRefSorter_initWithOrgApacheLuceneUtilOfflineSorter_(OrgApacheLuceneSearchSuggestFstExternalRefSorter *self, OrgApacheLuceneUtilOfflineSorter *sort) {
  NSObject_init(self);
  JreStrongAssign(&self->sort_, sort);
  JreStrongAssign(&self->input_, OrgLukhnosPortmobileFileFiles_createTempFileWithOrgLukhnosPortmobileFilePath_withNSString_withNSString_(OrgApacheLuceneUtilOfflineSorter_defaultTempDir(), @"RefSorter-", @".raw"));
  JreStrongAssignAndConsume(&self->writer_, new_OrgApacheLuceneUtilOfflineSorter_ByteSequencesWriter_initWithOrgLukhnosPortmobileFilePath_(self->input_));
}

OrgApacheLuceneSearchSuggestFstExternalRefSorter *new_OrgApacheLuceneSearchSuggestFstExternalRefSorter_initWithOrgApacheLuceneUtilOfflineSorter_(OrgApacheLuceneUtilOfflineSorter *sort) {
  OrgApacheLuceneSearchSuggestFstExternalRefSorter *self = [OrgApacheLuceneSearchSuggestFstExternalRefSorter alloc];
  OrgApacheLuceneSearchSuggestFstExternalRefSorter_initWithOrgApacheLuceneUtilOfflineSorter_(self, sort);
  return self;
}

void OrgApacheLuceneSearchSuggestFstExternalRefSorter_closeWriter(OrgApacheLuceneSearchSuggestFstExternalRefSorter *self) {
  if (self->writer_ != nil) {
    [self->writer_ close];
    JreStrongAssign(&self->writer_, nil);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestFstExternalRefSorter)

@implementation OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator

- (instancetype)initWithOrgApacheLuceneSearchSuggestFstExternalRefSorter:(OrgApacheLuceneSearchSuggestFstExternalRefSorter *)outer$
                withOrgApacheLuceneUtilOfflineSorter_ByteSequencesReader:(OrgApacheLuceneUtilOfflineSorter_ByteSequencesReader *)reader {
  OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator_initWithOrgApacheLuceneSearchSuggestFstExternalRefSorter_withOrgApacheLuceneUtilOfflineSorter_ByteSequencesReader_(self, outer$, reader);
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)next {
  if (scratch_ == nil) {
    return nil;
  }
  jboolean success = false;
  @try {
    IOSByteArray *next = [((OrgApacheLuceneUtilOfflineSorter_ByteSequencesReader *) nil_chk(reader_)) read];
    if (next != nil) {
      JreStrongAssign(&((OrgApacheLuceneUtilBytesRef *) nil_chk(scratch_))->bytes_, next);
      scratch_->length_ = next->size_;
      scratch_->offset_ = 0;
    }
    else {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ reader_ } count:1 type:JavaIoCloseable_class_()]);
      JreStrongAssign(&scratch_, nil);
    }
    success = true;
    return scratch_;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ reader_ } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

- (void)dealloc {
  RELEASE_(reader_);
  RELEASE_(scratch_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSuggestFstExternalRefSorter:withOrgApacheLuceneUtilOfflineSorter_ByteSequencesReader:", "ByteSequenceIterator", NULL, 0x1, NULL, NULL },
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", NULL, 0x12, "Lorg.apache.lucene.util.OfflineSorter$ByteSequencesReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "scratch_", NULL, 0x2, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator = { 2, "ByteSequenceIterator", "org.apache.lucene.search.suggest.fst", "ExternalRefSorter", 0x0, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator;
}

@end

void OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator_initWithOrgApacheLuceneSearchSuggestFstExternalRefSorter_withOrgApacheLuceneUtilOfflineSorter_ByteSequencesReader_(OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator *self, OrgApacheLuceneSearchSuggestFstExternalRefSorter *outer$, OrgApacheLuceneUtilOfflineSorter_ByteSequencesReader *reader) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->scratch_, new_OrgApacheLuceneUtilBytesRef_init());
  JreStrongAssign(&self->reader_, reader);
}

OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator *new_OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator_initWithOrgApacheLuceneSearchSuggestFstExternalRefSorter_withOrgApacheLuceneUtilOfflineSorter_ByteSequencesReader_(OrgApacheLuceneSearchSuggestFstExternalRefSorter *outer$, OrgApacheLuceneUtilOfflineSorter_ByteSequencesReader *reader) {
  OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator *self = [OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator alloc];
  OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator_initWithOrgApacheLuceneSearchSuggestFstExternalRefSorter_withOrgApacheLuceneUtilOfflineSorter_ByteSequencesReader_(self, outer$, reader);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestFstExternalRefSorter_ByteSequenceIterator)
