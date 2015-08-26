//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/RAMFile.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "org/apache/lucene/store/RAMDirectory.h"
#include "org/apache/lucene/store/RAMFile.h"

@implementation OrgApacheLuceneStoreRAMFile

- (instancetype)init {
  OrgApacheLuceneStoreRAMFile_init(self);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreRAMDirectory:(OrgApacheLuceneStoreRAMDirectory *)directory {
  OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(self, directory);
  return self;
}

- (jlong)getLength {
  @synchronized(self) {
    return length_;
  }
}

- (void)setLengthWithLong:(jlong)length {
  @synchronized(self) {
    self->length_ = length;
  }
}

- (IOSByteArray *)addBufferWithInt:(jint)size {
  IOSByteArray *buffer = [self newBufferWithInt:size];
  @synchronized(self) {
    [((JavaUtilArrayList *) nil_chk(buffers_)) addWithId:buffer];
    sizeInBytes_ += size;
  }
  if (directory_ != nil) {
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(directory_->sizeInBytes_)) getAndAddWithLong:size];
  }
  return buffer;
}

- (IOSByteArray *)getBufferWithInt:(jint)index {
  @synchronized(self) {
    return [((JavaUtilArrayList *) nil_chk(buffers_)) getWithInt:index];
  }
}

- (jint)numBuffers {
  @synchronized(self) {
    return [((JavaUtilArrayList *) nil_chk(buffers_)) size];
  }
}

- (IOSByteArray *)newBufferWithInt:(jint)size {
  return [IOSByteArray arrayWithLength:size];
}

- (jlong)ramBytesUsed {
  @synchronized(self) {
    return sizeInBytes_;
  }
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (NSString *)description {
  return JreStrcat("$$JC", [[self getClass] getSimpleName], @"(length=", length_, ')');
}

- (NSUInteger)hash {
  jint h = (jint) (length_ ^ (JreURShift64(length_, 32)));
  for (IOSByteArray * __strong block in nil_chk(buffers_)) {
    h = 31 * h + JavaUtilArrays_hashCodeWithByteArray_(block);
  }
  return h;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return YES;
  if (obj == nil) return NO;
  if ([self getClass] != [nil_chk(obj) getClass]) return NO;
  OrgApacheLuceneStoreRAMFile *other = (OrgApacheLuceneStoreRAMFile *) check_class_cast(obj, [OrgApacheLuceneStoreRAMFile class]);
  if (length_ != other->length_) return NO;
  if ([((JavaUtilArrayList *) nil_chk(buffers_)) size] != [other->buffers_ size]) {
    return NO;
  }
  for (jint i = 0; i < [buffers_ size]; i++) {
    if (!JavaUtilArrays_equalsWithByteArray_withByteArray_([buffers_ getWithInt:i], [other->buffers_ getWithInt:i])) {
      return NO;
    }
  }
  return YES;
}

- (void)dealloc {
  RELEASE_(buffers_);
  RELEASE_(directory_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RAMFile", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneStoreRAMDirectory:", "RAMFile", NULL, 0x0, NULL, NULL },
    { "getLength", NULL, "J", 0x21, NULL, NULL },
    { "setLengthWithLong:", "setLength", "V", 0x24, NULL, NULL },
    { "addBufferWithInt:", "addBuffer", "[B", 0x14, NULL, NULL },
    { "getBufferWithInt:", "getBuffer", "[B", 0x34, NULL, NULL },
    { "numBuffers", NULL, "I", 0x34, NULL, NULL },
    { "newBufferWithInt:", "newBuffer", "[B", 0x4, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x21, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "buffers_", NULL, 0x14, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<L[B;>;", .constantValue.asLong = 0 },
    { "length_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "directory_", NULL, 0x0, "Lorg.apache.lucene.store.RAMDirectory;", NULL, NULL, .constantValue.asLong = 0 },
    { "sizeInBytes_", NULL, 0x4, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreRAMFile = { 2, "RAMFile", "org.apache.lucene.store", NULL, 0x1, 13, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreRAMFile;
}

@end

void OrgApacheLuceneStoreRAMFile_init(OrgApacheLuceneStoreRAMFile *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffers_, new_JavaUtilArrayList_init());
}

OrgApacheLuceneStoreRAMFile *new_OrgApacheLuceneStoreRAMFile_init() {
  OrgApacheLuceneStoreRAMFile *self = [OrgApacheLuceneStoreRAMFile alloc];
  OrgApacheLuceneStoreRAMFile_init(self);
  return self;
}

void OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(OrgApacheLuceneStoreRAMFile *self, OrgApacheLuceneStoreRAMDirectory *directory) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffers_, new_JavaUtilArrayList_init());
  JreStrongAssign(&self->directory_, directory);
}

OrgApacheLuceneStoreRAMFile *new_OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(OrgApacheLuceneStoreRAMDirectory *directory) {
  OrgApacheLuceneStoreRAMFile *self = [OrgApacheLuceneStoreRAMFile alloc];
  OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(self, directory);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreRAMFile)