//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FieldInfos.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Comparable.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/SortedMap.h"
#include "java/util/TreeMap.h"
#include "org/apache/lucene/index/DocValuesType.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/util/ArrayUtil.h"

@interface OrgApacheLuceneIndexFieldInfos () {
 @public
  jboolean hasFreq_;
  jboolean hasProx_;
  jboolean hasPayloads_;
  jboolean hasOffsets_;
  jboolean hasVectors_;
  jboolean hasNorms_;
  jboolean hasDocValues_;
  IOSObjectArray *byNumberTable_;
  id<JavaUtilSortedMap> byNumberMap_;
  JavaUtilHashMap *byName_;
  id<JavaUtilCollection> values_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfos, byNumberTable_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfos, byNumberMap_, id<JavaUtilSortedMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfos, byName_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfos, values_, id<JavaUtilCollection>)

@interface OrgApacheLuceneIndexFieldInfos_FieldNumbers () {
 @public
  id<JavaUtilMap> numberToName_;
  id<JavaUtilMap> nameToNumber_;
  id<JavaUtilMap> docValuesType_;
  jint lowestUnassignedFieldNumber_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfos_FieldNumbers, numberToName_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfos_FieldNumbers, nameToNumber_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfos_FieldNumbers, docValuesType_, id<JavaUtilMap>)

@interface OrgApacheLuceneIndexFieldInfos_Builder () {
 @public
  JavaUtilHashMap *byName_;
}

- (OrgApacheLuceneIndexFieldInfo *)addOrUpdateInternalWithNSString:(NSString *)name
                                                           withInt:(jint)preferredFieldNumber
                                                       withBoolean:(jboolean)storeTermVector
                                                       withBoolean:(jboolean)omitNorms
                                                       withBoolean:(jboolean)storePayloads
                          withOrgApacheLuceneIndexIndexOptionsEnum:(OrgApacheLuceneIndexIndexOptionsEnum *)indexOptions
                         withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)docValues;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInfos_Builder, byName_, JavaUtilHashMap *)

__attribute__((unused)) static OrgApacheLuceneIndexFieldInfo *OrgApacheLuceneIndexFieldInfos_Builder_addOrUpdateInternalWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_(OrgApacheLuceneIndexFieldInfos_Builder *self, NSString *name, jint preferredFieldNumber, jboolean storeTermVector, jboolean omitNorms, jboolean storePayloads, OrgApacheLuceneIndexIndexOptionsEnum *indexOptions, OrgApacheLuceneIndexDocValuesTypeEnum *docValues);

@implementation OrgApacheLuceneIndexFieldInfos

- (instancetype)initWithOrgApacheLuceneIndexFieldInfoArray:(IOSObjectArray *)infos {
  OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(self, infos);
  return self;
}

- (jboolean)hasFreq {
  return hasFreq_;
}

- (jboolean)hasProx {
  return hasProx_;
}

- (jboolean)hasPayloads {
  return hasPayloads_;
}

- (jboolean)hasOffsets {
  return hasOffsets_;
}

- (jboolean)hasVectors {
  return hasVectors_;
}

- (jboolean)hasNorms {
  return hasNorms_;
}

- (jboolean)hasDocValues {
  return hasDocValues_;
}

- (jint)size {
  return [((JavaUtilHashMap *) nil_chk(byName_)) size];
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilCollection>) nil_chk(values_)) iterator];
}

- (OrgApacheLuceneIndexFieldInfo *)fieldInfoWithNSString:(NSString *)fieldName {
  return [((JavaUtilHashMap *) nil_chk(byName_)) getWithId:fieldName];
}

- (OrgApacheLuceneIndexFieldInfo *)fieldInfoWithInt:(jint)fieldNumber {
  if (fieldNumber < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Illegal field number: ", fieldNumber)) autorelease];
  }
  if (byNumberTable_ != nil) {
    if (fieldNumber >= byNumberTable_->size_) {
      return nil;
    }
    return IOSObjectArray_Get(byNumberTable_, fieldNumber);
  }
  else {
    return [((id<JavaUtilSortedMap>) nil_chk(byNumberMap_)) getWithId:JavaLangInteger_valueOfWithInt_(fieldNumber)];
  }
}

- (void)dealloc {
  RELEASE_(byNumberTable_);
  RELEASE_(byNumberMap_);
  RELEASE_(byName_);
  RELEASE_(values_);
  [super dealloc];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexFieldInfoArray:", "FieldInfos", NULL, 0x1, NULL, NULL },
    { "hasFreq", NULL, "Z", 0x1, NULL, NULL },
    { "hasProx", NULL, "Z", 0x1, NULL, NULL },
    { "hasPayloads", NULL, "Z", 0x1, NULL, NULL },
    { "hasOffsets", NULL, "Z", 0x1, NULL, NULL },
    { "hasVectors", NULL, "Z", 0x1, NULL, NULL },
    { "hasNorms", NULL, "Z", 0x1, NULL, NULL },
    { "hasDocValues", NULL, "Z", 0x1, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, NULL },
    { "fieldInfoWithNSString:", "fieldInfo", "Lorg.apache.lucene.index.FieldInfo;", 0x1, NULL, NULL },
    { "fieldInfoWithInt:", "fieldInfo", "Lorg.apache.lucene.index.FieldInfo;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "hasFreq_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "hasProx_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "hasPayloads_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "hasOffsets_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "hasVectors_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "hasNorms_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "hasDocValues_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "byNumberTable_", NULL, 0x12, "[Lorg.apache.lucene.index.FieldInfo;", NULL, NULL, .constantValue.asLong = 0 },
    { "byNumberMap_", NULL, 0x12, "Ljava.util.SortedMap;", NULL, "Ljava/util/SortedMap<Ljava/lang/Integer;Lorg/apache/lucene/index/FieldInfo;>;", .constantValue.asLong = 0 },
    { "byName_", NULL, 0x12, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/lucene/index/FieldInfo;>;", .constantValue.asLong = 0 },
    { "values_", NULL, 0x12, "Ljava.util.Collection;", NULL, "Ljava/util/Collection<Lorg/apache/lucene/index/FieldInfo;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.FieldInfos$FieldNumbers;", "Lorg.apache.lucene.index.FieldInfos$Builder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFieldInfos = { 2, "FieldInfos", "org.apache.lucene.index", NULL, 0x1, 12, methods, 11, fields, 0, NULL, 2, inner_classes, NULL, "Ljava/lang/Object;Ljava/lang/Iterable<Lorg/apache/lucene/index/FieldInfo;>;" };
  return &_OrgApacheLuceneIndexFieldInfos;
}

@end

void OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(OrgApacheLuceneIndexFieldInfos *self, IOSObjectArray *infos) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->byName_, new_JavaUtilHashMap_init());
  jboolean hasVectors = false;
  jboolean hasProx = false;
  jboolean hasPayloads = false;
  jboolean hasOffsets = false;
  jboolean hasFreq = false;
  jboolean hasNorms = false;
  jboolean hasDocValues = false;
  JavaUtilTreeMap *byNumber = [new_JavaUtilTreeMap_init() autorelease];
  {
    IOSObjectArray *a__ = infos;
    OrgApacheLuceneIndexFieldInfo * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneIndexFieldInfo * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneIndexFieldInfo *info = *b__++;
      if (((OrgApacheLuceneIndexFieldInfo *) nil_chk(info))->number_ < 0) {
        @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$$", @"illegal field number: ", info->number_, @" for field ", info->name_)) autorelease];
      }
      OrgApacheLuceneIndexFieldInfo *previous = [byNumber putWithId:JavaLangInteger_valueOfWithInt_(info->number_) withId:info];
      if (previous != nil) {
        @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$$I", @"duplicate field numbers: ", previous->name_, @" and ", info->name_, @" have: ", info->number_)) autorelease];
      }
      previous = [self->byName_ putWithId:info->name_ withId:info];
      if (previous != nil) {
        @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I$$", @"duplicate field names: ", previous->number_, @" and ", info->number_, @" have: ", info->name_)) autorelease];
      }
      hasVectors |= [info hasVectors];
      hasProx |= ([((OrgApacheLuceneIndexIndexOptionsEnum *) nil_chk([info getIndexOptions])) compareToWithId:JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS_AND_FREQS_AND_POSITIONS)] >= 0);
      hasFreq |= ([info getIndexOptions] != JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS));
      hasOffsets |= ([((OrgApacheLuceneIndexIndexOptionsEnum *) nil_chk([info getIndexOptions])) compareToWithId:JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS_AND_FREQS_AND_POSITIONS_AND_OFFSETS)] >= 0);
      hasNorms |= [info hasNorms];
      hasDocValues |= ([info getDocValuesType] != JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE));
      hasPayloads |= [info hasPayloads];
    }
  }
  self->hasVectors_ = hasVectors;
  self->hasProx_ = hasProx;
  self->hasPayloads_ = hasPayloads;
  self->hasOffsets_ = hasOffsets;
  self->hasFreq_ = hasFreq;
  self->hasNorms_ = hasNorms;
  self->hasDocValues_ = hasDocValues;
  JreStrongAssign(&self->values_, JavaUtilCollections_unmodifiableCollectionWithJavaUtilCollection_([byNumber values]));
  JavaLangInteger *max = [byNumber isEmpty] ? nil : JavaUtilCollections_maxWithJavaUtilCollection_([byNumber keySet]);
  if (max != nil && [max intValue] < JreLoadStatic(OrgApacheLuceneUtilArrayUtil, MAX_ARRAY_LENGTH_) && [max intValue] < 16LL * [byNumber size]) {
    JreStrongAssign(&self->byNumberMap_, nil);
    JreStrongAssignAndConsume(&self->byNumberTable_, [IOSObjectArray newArrayWithLength:[max intValue] + 1 type:OrgApacheLuceneIndexFieldInfo_class_()]);
    for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([byNumber entrySet])) {
      IOSObjectArray_Set(self->byNumberTable_, [((JavaLangInteger *) nil_chk([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey])) intValue], [entry_ getValue]);
    }
  }
  else {
    JreStrongAssign(&self->byNumberMap_, byNumber);
    JreStrongAssign(&self->byNumberTable_, nil);
  }
}

OrgApacheLuceneIndexFieldInfos *new_OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(IOSObjectArray *infos) {
  OrgApacheLuceneIndexFieldInfos *self = [OrgApacheLuceneIndexFieldInfos alloc];
  OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(self, infos);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFieldInfos)

@implementation OrgApacheLuceneIndexFieldInfos_FieldNumbers

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexFieldInfos_FieldNumbers_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)addOrGetWithNSString:(NSString *)fieldName
                     withInt:(jint)preferredFieldNumber
withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)dvType {
  @synchronized(self) {
    if (dvType != JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE)) {
      OrgApacheLuceneIndexDocValuesTypeEnum *currentDVType = [((id<JavaUtilMap>) nil_chk(docValuesType_)) getWithId:fieldName];
      if (currentDVType == nil) {
        [docValuesType_ putWithId:fieldName withId:dvType];
      }
      else if (currentDVType != JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE) && currentDVType != dvType) {
        @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$@$$C", @"cannot change DocValues type from ", currentDVType, @" to ", dvType, @" for field \"", fieldName, '"')) autorelease];
      }
    }
    JavaLangInteger *fieldNumber = [((id<JavaUtilMap>) nil_chk(nameToNumber_)) getWithId:fieldName];
    if (fieldNumber == nil) {
      JavaLangInteger *preferredBoxed = JavaLangInteger_valueOfWithInt_(preferredFieldNumber);
      if (preferredFieldNumber != -1 && ![((id<JavaUtilMap>) nil_chk(numberToName_)) containsKeyWithId:preferredBoxed]) {
        fieldNumber = preferredBoxed;
      }
      else {
        while ([((id<JavaUtilMap>) nil_chk(numberToName_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(++lowestUnassignedFieldNumber_)]) {
        }
        fieldNumber = JavaLangInteger_valueOfWithInt_(lowestUnassignedFieldNumber_);
      }
      JreAssert(([((JavaLangInteger *) nil_chk(fieldNumber)) intValue] >= 0), (@"org/apache/lucene/index/FieldInfos.java:239 condition failed: assert fieldNumber >= 0;"));
      [((id<JavaUtilMap>) nil_chk(numberToName_)) putWithId:fieldNumber withId:fieldName];
      [nameToNumber_ putWithId:fieldName withId:fieldNumber];
    }
    return [((JavaLangInteger *) nil_chk(fieldNumber)) intValue];
  }
}

- (void)verifyConsistentWithJavaLangInteger:(JavaLangInteger *)number
                               withNSString:(NSString *)name
  withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)dvType {
  @synchronized(self) {
    if ([((NSString *) nil_chk(name)) isEqual:[((id<JavaUtilMap>) nil_chk(numberToName_)) getWithId:number]] == false) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$$$$C", @"field number ", number, @" is already mapped to field name \"", [numberToName_ getWithId:number], @"\", not \"", name, '"')) autorelease];
    }
    if ([((JavaLangInteger *) nil_chk(number)) isEqual:[((id<JavaUtilMap>) nil_chk(nameToNumber_)) getWithId:name]] == false) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@$@C", @"field name \"", name, @"\" is already mapped to field number \"", [nameToNumber_ getWithId:name], @"\", not \"", number, '"')) autorelease];
    }
    OrgApacheLuceneIndexDocValuesTypeEnum *currentDVType = [((id<JavaUtilMap>) nil_chk(docValuesType_)) getWithId:name];
    if (dvType != JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE) && currentDVType != nil && currentDVType != JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE) && dvType != currentDVType) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$@$$C", @"cannot change DocValues type from ", currentDVType, @" to ", dvType, @" for field \"", name, '"')) autorelease];
    }
  }
}

- (jboolean)containsWithNSString:(NSString *)fieldName
withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)dvType {
  @synchronized(self) {
    if (![((id<JavaUtilMap>) nil_chk(nameToNumber_)) containsKeyWithId:fieldName]) {
      return false;
    }
    else {
      return dvType == [((id<JavaUtilMap>) nil_chk(docValuesType_)) getWithId:fieldName];
    }
  }
}

- (void)clear {
  @synchronized(self) {
    [((id<JavaUtilMap>) nil_chk(numberToName_)) clear];
    [((id<JavaUtilMap>) nil_chk(nameToNumber_)) clear];
    [((id<JavaUtilMap>) nil_chk(docValuesType_)) clear];
  }
}

- (void)setDocValuesTypeWithInt:(jint)number
                   withNSString:(NSString *)name
withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)dvType {
  @synchronized(self) {
    [self verifyConsistentWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(number) withNSString:name withOrgApacheLuceneIndexDocValuesTypeEnum:dvType];
    [((id<JavaUtilMap>) nil_chk(docValuesType_)) putWithId:name withId:dvType];
  }
}

- (void)dealloc {
  RELEASE_(numberToName_);
  RELEASE_(nameToNumber_);
  RELEASE_(docValuesType_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FieldNumbers", NULL, 0x0, NULL, NULL },
    { "addOrGetWithNSString:withInt:withOrgApacheLuceneIndexDocValuesTypeEnum:", "addOrGet", "I", 0x20, NULL, NULL },
    { "verifyConsistentWithJavaLangInteger:withNSString:withOrgApacheLuceneIndexDocValuesTypeEnum:", "verifyConsistent", "V", 0x20, NULL, NULL },
    { "containsWithNSString:withOrgApacheLuceneIndexDocValuesTypeEnum:", "contains", "Z", 0x20, NULL, NULL },
    { "clear", NULL, "V", 0x20, NULL, NULL },
    { "setDocValuesTypeWithInt:withNSString:withOrgApacheLuceneIndexDocValuesTypeEnum:", "setDocValuesType", "V", 0x20, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "numberToName_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;", .constantValue.asLong = 0 },
    { "nameToNumber_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "docValuesType_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/index/DocValuesType;>;", .constantValue.asLong = 0 },
    { "lowestUnassignedFieldNumber_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFieldInfos_FieldNumbers = { 2, "FieldNumbers", "org.apache.lucene.index", "FieldInfos", 0x18, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFieldInfos_FieldNumbers;
}

@end

void OrgApacheLuceneIndexFieldInfos_FieldNumbers_init(OrgApacheLuceneIndexFieldInfos_FieldNumbers *self) {
  NSObject_init(self);
  self->lowestUnassignedFieldNumber_ = -1;
  JreStrongAssignAndConsume(&self->nameToNumber_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->numberToName_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->docValuesType_, new_JavaUtilHashMap_init());
}

OrgApacheLuceneIndexFieldInfos_FieldNumbers *new_OrgApacheLuceneIndexFieldInfos_FieldNumbers_init() {
  OrgApacheLuceneIndexFieldInfos_FieldNumbers *self = [OrgApacheLuceneIndexFieldInfos_FieldNumbers alloc];
  OrgApacheLuceneIndexFieldInfos_FieldNumbers_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFieldInfos_FieldNumbers)

@implementation OrgApacheLuceneIndexFieldInfos_Builder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexFieldInfos_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneIndexFieldInfos_FieldNumbers:(OrgApacheLuceneIndexFieldInfos_FieldNumbers *)globalFieldNumbers {
  OrgApacheLuceneIndexFieldInfos_Builder_initWithOrgApacheLuceneIndexFieldInfos_FieldNumbers_(self, globalFieldNumbers);
  return self;
}

- (void)addWithOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)other {
  for (OrgApacheLuceneIndexFieldInfo * __strong fieldInfo in nil_chk(other)) {
    [self addWithOrgApacheLuceneIndexFieldInfo:fieldInfo];
  }
}

- (OrgApacheLuceneIndexFieldInfo *)getOrAddWithNSString:(NSString *)name {
  OrgApacheLuceneIndexFieldInfo *fi = [self fieldInfoWithNSString:name];
  if (fi == nil) {
    jint fieldNumber = [((OrgApacheLuceneIndexFieldInfos_FieldNumbers *) nil_chk(globalFieldNumbers_)) addOrGetWithNSString:name withInt:-1 withOrgApacheLuceneIndexDocValuesTypeEnum:JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE)];
    fi = [new_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(name, fieldNumber, false, false, false, JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, NONE), JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE), -1, [new_JavaUtilHashMap_init() autorelease]) autorelease];
    JreAssert((![((JavaUtilHashMap *) nil_chk(byName_)) containsKeyWithId:fi->name_]), (@"org/apache/lucene/index/FieldInfos.java:319 condition failed: assert !byName.containsKey(fi.name);"));
    [globalFieldNumbers_ verifyConsistentWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(fi->number_) withNSString:fi->name_ withOrgApacheLuceneIndexDocValuesTypeEnum:JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE)];
    [byName_ putWithId:fi->name_ withId:fi];
  }
  return fi;
}

- (OrgApacheLuceneIndexFieldInfo *)addOrUpdateInternalWithNSString:(NSString *)name
                                                           withInt:(jint)preferredFieldNumber
                                                       withBoolean:(jboolean)storeTermVector
                                                       withBoolean:(jboolean)omitNorms
                                                       withBoolean:(jboolean)storePayloads
                          withOrgApacheLuceneIndexIndexOptionsEnum:(OrgApacheLuceneIndexIndexOptionsEnum *)indexOptions
                         withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)docValues {
  return OrgApacheLuceneIndexFieldInfos_Builder_addOrUpdateInternalWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_(self, name, preferredFieldNumber, storeTermVector, omitNorms, storePayloads, indexOptions, docValues);
}

- (OrgApacheLuceneIndexFieldInfo *)addWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fi {
  return OrgApacheLuceneIndexFieldInfos_Builder_addOrUpdateInternalWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_(self, ((OrgApacheLuceneIndexFieldInfo *) nil_chk(fi))->name_, fi->number_, [fi hasVectors], [fi omitsNorms], [fi hasPayloads], [fi getIndexOptions], [fi getDocValuesType]);
}

- (OrgApacheLuceneIndexFieldInfo *)fieldInfoWithNSString:(NSString *)fieldName {
  return [((JavaUtilHashMap *) nil_chk(byName_)) getWithId:fieldName];
}

- (OrgApacheLuceneIndexFieldInfos *)finish {
  return [new_OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_([((id<JavaUtilCollection>) nil_chk([((JavaUtilHashMap *) nil_chk(byName_)) values])) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[byName_ size] type:OrgApacheLuceneIndexFieldInfo_class_()]]) autorelease];
}

- (void)dealloc {
  RELEASE_(byName_);
  RELEASE_(globalFieldNumbers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Builder", NULL, 0x0, NULL, NULL },
    { "initWithOrgApacheLuceneIndexFieldInfos_FieldNumbers:", "Builder", NULL, 0x0, NULL, NULL },
    { "addWithOrgApacheLuceneIndexFieldInfos:", "add", "V", 0x1, NULL, NULL },
    { "getOrAddWithNSString:", "getOrAdd", "Lorg.apache.lucene.index.FieldInfo;", 0x1, NULL, NULL },
    { "addOrUpdateInternalWithNSString:withInt:withBoolean:withBoolean:withBoolean:withOrgApacheLuceneIndexIndexOptionsEnum:withOrgApacheLuceneIndexDocValuesTypeEnum:", "addOrUpdateInternal", "Lorg.apache.lucene.index.FieldInfo;", 0x2, NULL, NULL },
    { "addWithOrgApacheLuceneIndexFieldInfo:", "add", "Lorg.apache.lucene.index.FieldInfo;", 0x1, NULL, NULL },
    { "fieldInfoWithNSString:", "fieldInfo", "Lorg.apache.lucene.index.FieldInfo;", 0x1, NULL, NULL },
    { "finish", NULL, "Lorg.apache.lucene.index.FieldInfos;", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "byName_", NULL, 0x12, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/lucene/index/FieldInfo;>;", .constantValue.asLong = 0 },
    { "globalFieldNumbers_", NULL, 0x10, "Lorg.apache.lucene.index.FieldInfos$FieldNumbers;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFieldInfos_Builder = { 2, "Builder", "org.apache.lucene.index", "FieldInfos", 0x18, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFieldInfos_Builder;
}

@end

void OrgApacheLuceneIndexFieldInfos_Builder_init(OrgApacheLuceneIndexFieldInfos_Builder *self) {
  OrgApacheLuceneIndexFieldInfos_Builder_initWithOrgApacheLuceneIndexFieldInfos_FieldNumbers_(self, [new_OrgApacheLuceneIndexFieldInfos_FieldNumbers_init() autorelease]);
}

OrgApacheLuceneIndexFieldInfos_Builder *new_OrgApacheLuceneIndexFieldInfos_Builder_init() {
  OrgApacheLuceneIndexFieldInfos_Builder *self = [OrgApacheLuceneIndexFieldInfos_Builder alloc];
  OrgApacheLuceneIndexFieldInfos_Builder_init(self);
  return self;
}

void OrgApacheLuceneIndexFieldInfos_Builder_initWithOrgApacheLuceneIndexFieldInfos_FieldNumbers_(OrgApacheLuceneIndexFieldInfos_Builder *self, OrgApacheLuceneIndexFieldInfos_FieldNumbers *globalFieldNumbers) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->byName_, new_JavaUtilHashMap_init());
  JreAssert((globalFieldNumbers != nil), (@"org/apache/lucene/index/FieldInfos.java:298 condition failed: assert globalFieldNumbers != null;"));
  JreStrongAssign(&self->globalFieldNumbers_, globalFieldNumbers);
}

OrgApacheLuceneIndexFieldInfos_Builder *new_OrgApacheLuceneIndexFieldInfos_Builder_initWithOrgApacheLuceneIndexFieldInfos_FieldNumbers_(OrgApacheLuceneIndexFieldInfos_FieldNumbers *globalFieldNumbers) {
  OrgApacheLuceneIndexFieldInfos_Builder *self = [OrgApacheLuceneIndexFieldInfos_Builder alloc];
  OrgApacheLuceneIndexFieldInfos_Builder_initWithOrgApacheLuceneIndexFieldInfos_FieldNumbers_(self, globalFieldNumbers);
  return self;
}

OrgApacheLuceneIndexFieldInfo *OrgApacheLuceneIndexFieldInfos_Builder_addOrUpdateInternalWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_(OrgApacheLuceneIndexFieldInfos_Builder *self, NSString *name, jint preferredFieldNumber, jboolean storeTermVector, jboolean omitNorms, jboolean storePayloads, OrgApacheLuceneIndexIndexOptionsEnum *indexOptions, OrgApacheLuceneIndexDocValuesTypeEnum *docValues) {
  if (docValues == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"DocValuesType cannot be null") autorelease];
  }
  OrgApacheLuceneIndexFieldInfo *fi = [self fieldInfoWithNSString:name];
  if (fi == nil) {
    jint fieldNumber = [((OrgApacheLuceneIndexFieldInfos_FieldNumbers *) nil_chk(self->globalFieldNumbers_)) addOrGetWithNSString:name withInt:preferredFieldNumber withOrgApacheLuceneIndexDocValuesTypeEnum:docValues];
    fi = [new_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(name, fieldNumber, storeTermVector, omitNorms, storePayloads, indexOptions, docValues, -1, [new_JavaUtilHashMap_init() autorelease]) autorelease];
    JreAssert((![((JavaUtilHashMap *) nil_chk(self->byName_)) containsKeyWithId:fi->name_]), (@"org/apache/lucene/index/FieldInfos.java:342 condition failed: assert !byName.containsKey(fi.name);"));
    [self->globalFieldNumbers_ verifyConsistentWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(fi->number_) withNSString:fi->name_ withOrgApacheLuceneIndexDocValuesTypeEnum:[fi getDocValuesType]];
    [self->byName_ putWithId:fi->name_ withId:fi];
  }
  else {
    [fi updateWithBoolean:storeTermVector withBoolean:omitNorms withBoolean:storePayloads withOrgApacheLuceneIndexIndexOptionsEnum:indexOptions];
    if (docValues != JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE)) {
      jboolean updateGlobal = [fi getDocValuesType] == JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE);
      if (updateGlobal) {
        [((OrgApacheLuceneIndexFieldInfos_FieldNumbers *) nil_chk(self->globalFieldNumbers_)) setDocValuesTypeWithInt:fi->number_ withNSString:name withOrgApacheLuceneIndexDocValuesTypeEnum:docValues];
      }
      [fi setDocValuesTypeWithOrgApacheLuceneIndexDocValuesTypeEnum:docValues];
    }
  }
  return fi;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFieldInfos_Builder)
