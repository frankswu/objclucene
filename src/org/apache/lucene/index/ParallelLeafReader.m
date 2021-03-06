//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ParallelLeafReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Collections.h"
#include "java/util/IdentityHashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/SortedMap.h"
#include "java/util/TreeMap.h"
#include "org/apache/lucene/index/BinaryDocValues.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/ParallelLeafReader.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/index/StoredFieldVisitor.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/util/Bits.h"

@class OrgApacheLuceneIndexParallelLeafReader_ParallelFields;

@interface OrgApacheLuceneIndexParallelLeafReader () {
 @public
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
  OrgApacheLuceneIndexParallelLeafReader_ParallelFields *fields_;
  IOSObjectArray *parallelReaders_, *storedFieldsReaders_;
  id<JavaUtilSet> completeReaderSet_;
  jboolean closeSubReaders_;
  jint maxDoc_, numDocs_;
  jboolean hasDeletions_;
  id<JavaUtilSortedMap> fieldToReader_;
  id<JavaUtilSortedMap> tvFieldToReader_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelLeafReader, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelLeafReader, fields_, OrgApacheLuceneIndexParallelLeafReader_ParallelFields *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelLeafReader, parallelReaders_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelLeafReader, storedFieldsReaders_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelLeafReader, completeReaderSet_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelLeafReader, fieldToReader_, id<JavaUtilSortedMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelLeafReader, tvFieldToReader_, id<JavaUtilSortedMap>)

@interface OrgApacheLuceneIndexParallelLeafReader_ParallelFields : OrgApacheLuceneIndexFields {
 @public
  id<JavaUtilMap> fields_;
}

- (instancetype)initWithOrgApacheLuceneIndexParallelLeafReader:(OrgApacheLuceneIndexParallelLeafReader *)outer$;

- (void)addFieldWithNSString:(NSString *)fieldName
withOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms;

- (id<JavaUtilIterator>)iterator;

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field;

- (jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexParallelLeafReader_ParallelFields)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelLeafReader_ParallelFields, fields_, id<JavaUtilMap>)

__attribute__((unused)) static void OrgApacheLuceneIndexParallelLeafReader_ParallelFields_initWithOrgApacheLuceneIndexParallelLeafReader_(OrgApacheLuceneIndexParallelLeafReader_ParallelFields *self, OrgApacheLuceneIndexParallelLeafReader *outer$);

__attribute__((unused)) static OrgApacheLuceneIndexParallelLeafReader_ParallelFields *new_OrgApacheLuceneIndexParallelLeafReader_ParallelFields_initWithOrgApacheLuceneIndexParallelLeafReader_(OrgApacheLuceneIndexParallelLeafReader *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexParallelLeafReader_ParallelFields *create_OrgApacheLuceneIndexParallelLeafReader_ParallelFields_initWithOrgApacheLuceneIndexParallelLeafReader_(OrgApacheLuceneIndexParallelLeafReader *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexParallelLeafReader_ParallelFields)

@implementation OrgApacheLuceneIndexParallelLeafReader

- (instancetype)initWithOrgApacheLuceneIndexLeafReaderArray:(IOSObjectArray *)readers {
  OrgApacheLuceneIndexParallelLeafReader_initWithOrgApacheLuceneIndexLeafReaderArray_(self, readers);
  return self;
}

- (instancetype)initWithBoolean:(jboolean)closeSubReaders
withOrgApacheLuceneIndexLeafReaderArray:(IOSObjectArray *)readers {
  OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_(self, closeSubReaders, readers);
  return self;
}

- (instancetype)initWithBoolean:(jboolean)closeSubReaders
withOrgApacheLuceneIndexLeafReaderArray:(IOSObjectArray *)readers
withOrgApacheLuceneIndexLeafReaderArray:(IOSObjectArray *)storedFieldsReaders {
  OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexLeafReaderArray_(self, closeSubReaders, readers, storedFieldsReaders);
  return self;
}

- (NSString *)description {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_initWithNSString_(@"ParallelLeafReader(");
  for (id<JavaUtilIterator> iter = [((id<JavaUtilSet>) nil_chk(completeReaderSet_)) iterator]; [((id<JavaUtilIterator>) nil_chk(iter)) hasNext]; ) {
    [buffer appendWithId:[iter next]];
    if ([iter hasNext]) [buffer appendWithNSString:@", "];
  }
  return [((JavaLangStringBuilder *) nil_chk([buffer appendWithChar:')'])) description];
}

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener {
  OrgApacheLuceneIndexLeafReader_addCoreClosedListenerAsReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexLeafReader_CoreClosedListener_(self, listener);
}

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener {
  OrgApacheLuceneIndexLeafReader_removeCoreClosedListenerAsReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexLeafReader_CoreClosedListener_(self, listener);
}

- (OrgApacheLuceneIndexFieldInfos *)getFieldInfos {
  return fieldInfos_;
}

- (id<OrgApacheLuceneUtilBits>)getLiveDocs {
  [self ensureOpen];
  return hasDeletions_ ? [((OrgApacheLuceneIndexLeafReader *) nil_chk(IOSObjectArray_Get(nil_chk(parallelReaders_), 0))) getLiveDocs] : nil;
}

- (OrgApacheLuceneIndexFields *)fields {
  [self ensureOpen];
  return fields_;
}

- (jint)numDocs {
  return numDocs_;
}

- (jint)maxDoc {
  return maxDoc_;
}

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor {
  [self ensureOpen];
  {
    IOSObjectArray *a__ = storedFieldsReaders_;
    OrgApacheLuceneIndexLeafReader * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneIndexLeafReader * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneIndexLeafReader *reader = *b__++;
      [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) documentWithInt:docID withOrgApacheLuceneIndexStoredFieldVisitor:visitor];
    }
  }
}

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID {
  [self ensureOpen];
  OrgApacheLuceneIndexParallelLeafReader_ParallelFields *fields = nil;
  for (id<JavaUtilMap_Entry> __strong ent in nil_chk([((id<JavaUtilSortedMap>) nil_chk(tvFieldToReader_)) entrySet])) {
    NSString *fieldName = [((id<JavaUtilMap_Entry>) nil_chk(ent)) getKey];
    OrgApacheLuceneIndexTerms *vector = [((OrgApacheLuceneIndexLeafReader *) nil_chk([ent getValue])) getTermVectorWithInt:docID withNSString:fieldName];
    if (vector != nil) {
      if (fields == nil) {
        fields = create_OrgApacheLuceneIndexParallelLeafReader_ParallelFields_initWithOrgApacheLuceneIndexParallelLeafReader_(self);
      }
      [fields addFieldWithNSString:fieldName withOrgApacheLuceneIndexTerms:vector];
    }
  }
  return fields;
}

- (void)doClose {
  @synchronized(self) {
    JavaIoIOException *ioe = nil;
    for (OrgApacheLuceneIndexLeafReader * __strong reader in nil_chk(completeReaderSet_)) {
      @try {
        if (closeSubReaders_) {
          [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) close];
        }
        else {
          [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) decRef];
        }
      }
      @catch (JavaIoIOException *e) {
        if (ioe == nil) ioe = e;
      }
    }
    if (ioe != nil) @throw ioe;
  }
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexLeafReader *reader = [((id<JavaUtilSortedMap>) nil_chk(fieldToReader_)) getWithId:field];
  return reader == nil ? nil : [reader getNumericDocValuesWithNSString:field];
}

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexLeafReader *reader = [((id<JavaUtilSortedMap>) nil_chk(fieldToReader_)) getWithId:field];
  return reader == nil ? nil : [reader getBinaryDocValuesWithNSString:field];
}

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexLeafReader *reader = [((id<JavaUtilSortedMap>) nil_chk(fieldToReader_)) getWithId:field];
  return reader == nil ? nil : [reader getSortedDocValuesWithNSString:field];
}

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexLeafReader *reader = [((id<JavaUtilSortedMap>) nil_chk(fieldToReader_)) getWithId:field];
  return reader == nil ? nil : [reader getSortedNumericDocValuesWithNSString:field];
}

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexLeafReader *reader = [((id<JavaUtilSortedMap>) nil_chk(fieldToReader_)) getWithId:field];
  return reader == nil ? nil : [reader getSortedSetDocValuesWithNSString:field];
}

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexLeafReader *reader = [((id<JavaUtilSortedMap>) nil_chk(fieldToReader_)) getWithId:field];
  return reader == nil ? nil : [reader getDocsWithFieldWithNSString:field];
}

- (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexLeafReader *reader = [((id<JavaUtilSortedMap>) nil_chk(fieldToReader_)) getWithId:field];
  OrgApacheLuceneIndexNumericDocValues *values = reader == nil ? nil : [reader getNormValuesWithNSString:field];
  return values;
}

- (void)checkIntegrity {
  [self ensureOpen];
  for (OrgApacheLuceneIndexLeafReader * __strong reader in nil_chk(completeReaderSet_)) {
    [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) checkIntegrity];
  }
}

- (IOSObjectArray *)getParallelReaders {
  [self ensureOpen];
  return parallelReaders_;
}

- (void)dealloc {
  RELEASE_(fieldInfos_);
  RELEASE_(fields_);
  RELEASE_(parallelReaders_);
  RELEASE_(storedFieldsReaders_);
  RELEASE_(completeReaderSet_);
  RELEASE_(fieldToReader_);
  RELEASE_(tvFieldToReader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexLeafReaderArray:", "ParallelLeafReader", NULL, 0x81, "Ljava.io.IOException;", NULL },
    { "initWithBoolean:withOrgApacheLuceneIndexLeafReaderArray:", "ParallelLeafReader", NULL, 0x81, "Ljava.io.IOException;", NULL },
    { "initWithBoolean:withOrgApacheLuceneIndexLeafReaderArray:withOrgApacheLuceneIndexLeafReaderArray:", "ParallelLeafReader", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:", "addCoreClosedListener", "V", 0x1, NULL, NULL },
    { "removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:", "removeCoreClosedListener", "V", 0x1, NULL, NULL },
    { "getFieldInfos", NULL, "Lorg.apache.lucene.index.FieldInfos;", 0x1, NULL, NULL },
    { "getLiveDocs", NULL, "Lorg.apache.lucene.util.Bits;", 0x1, NULL, NULL },
    { "fields", NULL, "Lorg.apache.lucene.index.Fields;", 0x1, NULL, NULL },
    { "numDocs", NULL, "I", 0x1, NULL, NULL },
    { "maxDoc", NULL, "I", 0x1, NULL, NULL },
    { "documentWithInt:withOrgApacheLuceneIndexStoredFieldVisitor:", "document", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getTermVectorsWithInt:", "getTermVectors", "Lorg.apache.lucene.index.Fields;", 0x1, "Ljava.io.IOException;", NULL },
    { "doClose", NULL, "V", 0x24, "Ljava.io.IOException;", NULL },
    { "getNumericDocValuesWithNSString:", "getNumericDocValues", "Lorg.apache.lucene.index.NumericDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getBinaryDocValuesWithNSString:", "getBinaryDocValues", "Lorg.apache.lucene.index.BinaryDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getSortedDocValuesWithNSString:", "getSortedDocValues", "Lorg.apache.lucene.index.SortedDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getSortedNumericDocValuesWithNSString:", "getSortedNumericDocValues", "Lorg.apache.lucene.index.SortedNumericDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getSortedSetDocValuesWithNSString:", "getSortedSetDocValues", "Lorg.apache.lucene.index.SortedSetDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getDocsWithFieldWithNSString:", "getDocsWithField", "Lorg.apache.lucene.util.Bits;", 0x1, "Ljava.io.IOException;", NULL },
    { "getNormValuesWithNSString:", "getNormValues", "Lorg.apache.lucene.index.NumericDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "checkIntegrity", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getParallelReaders", NULL, "[Lorg.apache.lucene.index.LeafReader;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fieldInfos_", NULL, 0x12, "Lorg.apache.lucene.index.FieldInfos;", NULL, NULL, .constantValue.asLong = 0 },
    { "fields_", NULL, 0x12, "Lorg.apache.lucene.index.ParallelLeafReader$ParallelFields;", NULL, NULL, .constantValue.asLong = 0 },
    { "parallelReaders_", NULL, 0x12, "[Lorg.apache.lucene.index.LeafReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "storedFieldsReaders_", NULL, 0x12, "[Lorg.apache.lucene.index.LeafReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "completeReaderSet_", NULL, 0x12, "Ljava.util.Set;", NULL, "Ljava/util/Set<Lorg/apache/lucene/index/LeafReader;>;", .constantValue.asLong = 0 },
    { "closeSubReaders_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDoc_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "numDocs_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "hasDeletions_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldToReader_", NULL, 0x12, "Ljava.util.SortedMap;", NULL, "Ljava/util/SortedMap<Ljava/lang/String;Lorg/apache/lucene/index/LeafReader;>;", .constantValue.asLong = 0 },
    { "tvFieldToReader_", NULL, 0x12, "Ljava.util.SortedMap;", NULL, "Ljava/util/SortedMap<Ljava/lang/String;Lorg/apache/lucene/index/LeafReader;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.ParallelLeafReader$ParallelFields;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexParallelLeafReader = { 2, "ParallelLeafReader", "org.apache.lucene.index", NULL, 0x1, 23, methods, 11, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexParallelLeafReader;
}

@end

void OrgApacheLuceneIndexParallelLeafReader_initWithOrgApacheLuceneIndexLeafReaderArray_(OrgApacheLuceneIndexParallelLeafReader *self, IOSObjectArray *readers) {
  OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_(self, true, readers);
}

OrgApacheLuceneIndexParallelLeafReader *new_OrgApacheLuceneIndexParallelLeafReader_initWithOrgApacheLuceneIndexLeafReaderArray_(IOSObjectArray *readers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexParallelLeafReader, initWithOrgApacheLuceneIndexLeafReaderArray_, readers)
}

OrgApacheLuceneIndexParallelLeafReader *create_OrgApacheLuceneIndexParallelLeafReader_initWithOrgApacheLuceneIndexLeafReaderArray_(IOSObjectArray *readers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexParallelLeafReader, initWithOrgApacheLuceneIndexLeafReaderArray_, readers)
}

void OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_(OrgApacheLuceneIndexParallelLeafReader *self, jboolean closeSubReaders, IOSObjectArray *readers) {
  OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexLeafReaderArray_(self, closeSubReaders, readers, readers);
}

OrgApacheLuceneIndexParallelLeafReader *new_OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_(jboolean closeSubReaders, IOSObjectArray *readers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexParallelLeafReader, initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_, closeSubReaders, readers)
}

OrgApacheLuceneIndexParallelLeafReader *create_OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_(jboolean closeSubReaders, IOSObjectArray *readers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexParallelLeafReader, initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_, closeSubReaders, readers)
}

void OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexLeafReaderArray_(OrgApacheLuceneIndexParallelLeafReader *self, jboolean closeSubReaders, IOSObjectArray *readers, IOSObjectArray *storedFieldsReaders) {
  OrgApacheLuceneIndexLeafReader_init(self);
  JreStrongAssignAndConsume(&self->fields_, new_OrgApacheLuceneIndexParallelLeafReader_ParallelFields_initWithOrgApacheLuceneIndexParallelLeafReader_(self));
  JreStrongAssign(&self->completeReaderSet_, JavaUtilCollections_newSetFromMapWithJavaUtilMap_(create_JavaUtilIdentityHashMap_init()));
  JreStrongAssignAndConsume(&self->fieldToReader_, new_JavaUtilTreeMap_init());
  JreStrongAssignAndConsume(&self->tvFieldToReader_, new_JavaUtilTreeMap_init());
  self->closeSubReaders_ = closeSubReaders;
  if (((IOSObjectArray *) nil_chk(readers))->size_ == 0 && ((IOSObjectArray *) nil_chk(storedFieldsReaders))->size_ > 0) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"There must be at least one main reader if storedFieldsReaders are used.");
  JreStrongAssign(&self->parallelReaders_, [readers clone]);
  JreStrongAssign(&self->storedFieldsReaders_, [((IOSObjectArray *) nil_chk(storedFieldsReaders)) clone]);
  if (((IOSObjectArray *) nil_chk(self->parallelReaders_))->size_ > 0) {
    OrgApacheLuceneIndexLeafReader *first = IOSObjectArray_Get(self->parallelReaders_, 0);
    self->maxDoc_ = [((OrgApacheLuceneIndexLeafReader *) nil_chk(first)) maxDoc];
    self->numDocs_ = [first numDocs];
    self->hasDeletions_ = [first hasDeletions];
  }
  else {
    self->maxDoc_ = self->numDocs_ = 0;
    self->hasDeletions_ = false;
  }
  JavaUtilCollections_addAllWithJavaUtilCollection_withNSObjectArray_(self->completeReaderSet_, self->parallelReaders_);
  JavaUtilCollections_addAllWithJavaUtilCollection_withNSObjectArray_(self->completeReaderSet_, self->storedFieldsReaders_);
  for (OrgApacheLuceneIndexLeafReader * __strong reader in nil_chk(self->completeReaderSet_)) {
    if ([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc] != self->maxDoc_) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I", @"All readers must have same maxDoc: ", self->maxDoc_, @"!=", [reader maxDoc]));
    }
  }
  OrgApacheLuceneIndexFieldInfos_Builder *builder = create_OrgApacheLuceneIndexFieldInfos_Builder_init();
  {
    IOSObjectArray *a__ = self->parallelReaders_;
    OrgApacheLuceneIndexLeafReader * const *b__ = a__->buffer_;
    OrgApacheLuceneIndexLeafReader * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneIndexLeafReader *reader = *b__++;
      OrgApacheLuceneIndexFieldInfos *readerFieldInfos = [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) getFieldInfos];
      for (OrgApacheLuceneIndexFieldInfo * __strong fieldInfo in nil_chk(readerFieldInfos)) {
        if (![self->fieldToReader_ containsKeyWithId:((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_]) {
          [builder addWithOrgApacheLuceneIndexFieldInfo:fieldInfo];
          [self->fieldToReader_ putWithId:fieldInfo->name_ withId:reader];
          if ([fieldInfo hasVectors]) {
            [self->tvFieldToReader_ putWithId:fieldInfo->name_ withId:reader];
          }
        }
      }
    }
  }
  JreStrongAssign(&self->fieldInfos_, [builder finish]);
  {
    IOSObjectArray *a__ = self->parallelReaders_;
    OrgApacheLuceneIndexLeafReader * const *b__ = a__->buffer_;
    OrgApacheLuceneIndexLeafReader * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneIndexLeafReader *reader = *b__++;
      OrgApacheLuceneIndexFields *readerFields = [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) fields];
      for (NSString * __strong field in nil_chk(readerFields)) {
        if ([self->fieldToReader_ getWithId:field] == reader) {
          [self->fields_ addFieldWithNSString:field withOrgApacheLuceneIndexTerms:[readerFields termsWithNSString:field]];
        }
      }
    }
  }
  for (OrgApacheLuceneIndexLeafReader * __strong reader in self->completeReaderSet_) {
    if (!closeSubReaders) {
      [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) incRef];
    }
    [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) registerParentReaderWithOrgApacheLuceneIndexIndexReader:self];
  }
}

OrgApacheLuceneIndexParallelLeafReader *new_OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexLeafReaderArray_(jboolean closeSubReaders, IOSObjectArray *readers, IOSObjectArray *storedFieldsReaders) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexParallelLeafReader, initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexLeafReaderArray_, closeSubReaders, readers, storedFieldsReaders)
}

OrgApacheLuceneIndexParallelLeafReader *create_OrgApacheLuceneIndexParallelLeafReader_initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexLeafReaderArray_(jboolean closeSubReaders, IOSObjectArray *readers, IOSObjectArray *storedFieldsReaders) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexParallelLeafReader, initWithBoolean_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexLeafReaderArray_, closeSubReaders, readers, storedFieldsReaders)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexParallelLeafReader)

@implementation OrgApacheLuceneIndexParallelLeafReader_ParallelFields

- (instancetype)initWithOrgApacheLuceneIndexParallelLeafReader:(OrgApacheLuceneIndexParallelLeafReader *)outer$ {
  OrgApacheLuceneIndexParallelLeafReader_ParallelFields_initWithOrgApacheLuceneIndexParallelLeafReader_(self, outer$);
  return self;
}

- (void)addFieldWithNSString:(NSString *)fieldName
withOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms {
  [((id<JavaUtilMap>) nil_chk(fields_)) putWithId:fieldName withId:terms];
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilSet>) nil_chk(JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([((id<JavaUtilMap>) nil_chk(fields_)) keySet]))) iterator];
}

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field {
  return [((id<JavaUtilMap>) nil_chk(fields_)) getWithId:field];
}

- (jint)size {
  return [((id<JavaUtilMap>) nil_chk(fields_)) size];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (void)dealloc {
  RELEASE_(fields_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexParallelLeafReader:", "ParallelFields", NULL, 0x0, NULL, NULL },
    { "addFieldWithNSString:withOrgApacheLuceneIndexTerms:", "addField", "V", 0x0, NULL, NULL },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, "()Ljava/util/Iterator<Ljava/lang/String;>;" },
    { "termsWithNSString:", "terms", "Lorg.apache.lucene.index.Terms;", 0x1, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fields_", NULL, 0x10, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/index/Terms;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexParallelLeafReader_ParallelFields = { 2, "ParallelFields", "org.apache.lucene.index", "ParallelLeafReader", 0x12, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexParallelLeafReader_ParallelFields;
}

@end

void OrgApacheLuceneIndexParallelLeafReader_ParallelFields_initWithOrgApacheLuceneIndexParallelLeafReader_(OrgApacheLuceneIndexParallelLeafReader_ParallelFields *self, OrgApacheLuceneIndexParallelLeafReader *outer$) {
  OrgApacheLuceneIndexFields_init(self);
  JreStrongAssignAndConsume(&self->fields_, new_JavaUtilTreeMap_init());
}

OrgApacheLuceneIndexParallelLeafReader_ParallelFields *new_OrgApacheLuceneIndexParallelLeafReader_ParallelFields_initWithOrgApacheLuceneIndexParallelLeafReader_(OrgApacheLuceneIndexParallelLeafReader *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexParallelLeafReader_ParallelFields, initWithOrgApacheLuceneIndexParallelLeafReader_, outer$)
}

OrgApacheLuceneIndexParallelLeafReader_ParallelFields *create_OrgApacheLuceneIndexParallelLeafReader_ParallelFields_initWithOrgApacheLuceneIndexParallelLeafReader_(OrgApacheLuceneIndexParallelLeafReader *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexParallelLeafReader_ParallelFields, initWithOrgApacheLuceneIndexParallelLeafReader_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexParallelLeafReader_ParallelFields)
