//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/tst/TSTLookup.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/Comparator.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/search/suggest/Lookup.h"
#include "org/apache/lucene/search/suggest/SortedInputIterator.h"
#include "org/apache/lucene/search/suggest/tst/TSTAutocomplete.h"
#include "org/apache/lucene/search/suggest/tst/TSTLookup.h"
#include "org/apache/lucene/search/suggest/tst/TernaryTreeNode.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/CharsRefBuilder.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

#define OrgApacheLuceneSearchSuggestTstTSTLookup_LO_KID 1
#define OrgApacheLuceneSearchSuggestTstTSTLookup_EQ_KID 2
#define OrgApacheLuceneSearchSuggestTstTSTLookup_HI_KID 4
#define OrgApacheLuceneSearchSuggestTstTSTLookup_HAS_TOKEN 8
#define OrgApacheLuceneSearchSuggestTstTSTLookup_HAS_VALUE 16

@interface OrgApacheLuceneSearchSuggestTstTSTLookup () {
 @public
  jlong count_;
}

+ (jboolean)charSeqEqualsWithJavaLangCharSequence:(id<JavaLangCharSequence>)left
                         withJavaLangCharSequence:(id<JavaLangCharSequence>)right;

- (void)readRecursivelyWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
      withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)node;

- (void)writeRecursivelyWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
        withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)node;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSuggestTstTSTLookup, LO_KID, jbyte)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSuggestTstTSTLookup, EQ_KID, jbyte)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSuggestTstTSTLookup, HI_KID, jbyte)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSuggestTstTSTLookup, HAS_TOKEN, jbyte)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSuggestTstTSTLookup, HAS_VALUE, jbyte)

__attribute__((unused)) static jboolean OrgApacheLuceneSearchSuggestTstTSTLookup_charSeqEqualsWithJavaLangCharSequence_withJavaLangCharSequence_(id<JavaLangCharSequence> left, id<JavaLangCharSequence> right);

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestTstTSTLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(OrgApacheLuceneSearchSuggestTstTSTLookup *self, OrgApacheLuceneStoreDataInput *inArg, OrgApacheLuceneSearchSuggestTstTernaryTreeNode *node);

__attribute__((unused)) static void OrgApacheLuceneSearchSuggestTstTSTLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(OrgApacheLuceneSearchSuggestTstTSTLookup *self, OrgApacheLuceneStoreDataOutput *outArg, OrgApacheLuceneSearchSuggestTstTernaryTreeNode *node);

@implementation OrgApacheLuceneSearchSuggestTstTSTLookup

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSuggestTstTSTLookup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)buildWithOrgApacheLuceneSearchSuggestInputIterator:(id<OrgApacheLuceneSearchSuggestInputIterator>)iterator {
  if ([((id<OrgApacheLuceneSearchSuggestInputIterator>) nil_chk(iterator)) hasPayloads]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"this suggester doesn't support payloads") autorelease];
  }
  if ([iterator hasContexts]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"this suggester doesn't support contexts") autorelease];
  }
  JreStrongAssignAndConsume(&root_, new_OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init());
  iterator = [new_OrgApacheLuceneSearchSuggestSortedInputIterator_initWithOrgApacheLuceneSearchSuggestInputIterator_withJavaUtilComparator_(iterator, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUTF16Comparator()) autorelease];
  count_ = 0;
  JavaUtilArrayList *tokens = [new_JavaUtilArrayList_init() autorelease];
  JavaUtilArrayList *vals = [new_JavaUtilArrayList_init() autorelease];
  OrgApacheLuceneUtilBytesRef *spare;
  OrgApacheLuceneUtilCharsRefBuilder *charsSpare = [new_OrgApacheLuceneUtilCharsRefBuilder_init() autorelease];
  while ((spare = [iterator next]) != nil) {
    [charsSpare copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:spare];
    [tokens addWithId:[charsSpare description]];
    [vals addWithId:JavaLangLong_valueOfWithLong_([iterator weight])];
    count_++;
  }
  [((OrgApacheLuceneSearchSuggestTstTSTAutocomplete *) nil_chk(autocomplete_)) balancedTreeWithNSObjectArray:[tokens toArray] withNSObjectArray:[vals toArray] withInt:0 withInt:[tokens size] - 1 withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:root_];
}

- (jboolean)addWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                 withId:(id)value {
  [((OrgApacheLuceneSearchSuggestTstTSTAutocomplete *) nil_chk(autocomplete_)) insertWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:root_ withJavaLangCharSequence:key withId:value withInt:0];
  return true;
}

- (id)getWithJavaLangCharSequence:(id<JavaLangCharSequence>)key {
  id<JavaUtilList> list = [((OrgApacheLuceneSearchSuggestTstTSTAutocomplete *) nil_chk(autocomplete_)) prefixCompletionWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:root_ withJavaLangCharSequence:key withInt:0];
  if (list == nil || [list isEmpty]) {
    return nil;
  }
  for (OrgApacheLuceneSearchSuggestTstTernaryTreeNode * __strong n in nil_chk(list)) {
    if (OrgApacheLuceneSearchSuggestTstTSTLookup_charSeqEqualsWithJavaLangCharSequence_withJavaLangCharSequence_(((OrgApacheLuceneSearchSuggestTstTernaryTreeNode *) nil_chk(n))->token_, key)) {
      return n->val_;
    }
  }
  return nil;
}

+ (jboolean)charSeqEqualsWithJavaLangCharSequence:(id<JavaLangCharSequence>)left
                         withJavaLangCharSequence:(id<JavaLangCharSequence>)right {
  return OrgApacheLuceneSearchSuggestTstTSTLookup_charSeqEqualsWithJavaLangCharSequence_withJavaLangCharSequence_(left, right);
}

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                   withJavaUtilSet:(id<JavaUtilSet>)contexts
                                       withBoolean:(jboolean)onlyMorePopular
                                           withInt:(jint)num {
  if (contexts != nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"this suggester doesn't support contexts") autorelease];
  }
  id<JavaUtilList> list = [((OrgApacheLuceneSearchSuggestTstTSTAutocomplete *) nil_chk(autocomplete_)) prefixCompletionWithOrgApacheLuceneSearchSuggestTstTernaryTreeNode:root_ withJavaLangCharSequence:key withInt:0];
  id<JavaUtilList> res = [new_JavaUtilArrayList_init() autorelease];
  if (list == nil || [list size] == 0) {
    return res;
  }
  jint maxCnt = JavaLangMath_minWithInt_withInt_(num, [((id<JavaUtilList>) nil_chk(list)) size]);
  if (onlyMorePopular) {
    OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue *queue = [new_OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue_initWithInt_(num) autorelease];
    for (OrgApacheLuceneSearchSuggestTstTernaryTreeNode * __strong ttn in list) {
      [queue insertWithOverflowWithId:[new_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_(((OrgApacheLuceneSearchSuggestTstTernaryTreeNode *) nil_chk(ttn))->token_, [((NSNumber *) nil_chk(((NSNumber *) check_class_cast(ttn->val_, [NSNumber class])))) longLongValue]) autorelease]];
    }
    {
      IOSObjectArray *a__ = [queue getResults];
      OrgApacheLuceneSearchSuggestLookup_LookupResult * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      OrgApacheLuceneSearchSuggestLookup_LookupResult * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        OrgApacheLuceneSearchSuggestLookup_LookupResult *lr = *b__++;
        [res addWithId:lr];
      }
    }
  }
  else {
    for (jint i = 0; i < maxCnt; i++) {
      OrgApacheLuceneSearchSuggestTstTernaryTreeNode *ttn = [list getWithInt:i];
      [res addWithId:[new_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_(((OrgApacheLuceneSearchSuggestTstTernaryTreeNode *) nil_chk(ttn))->token_, [((NSNumber *) nil_chk(((NSNumber *) check_class_cast(ttn->val_, [NSNumber class])))) longLongValue]) autorelease]];
    }
  }
  return res;
}

- (void)readRecursivelyWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
      withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)node {
  OrgApacheLuceneSearchSuggestTstTSTLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, inArg, node);
}

- (void)writeRecursivelyWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
        withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:(OrgApacheLuceneSearchSuggestTstTernaryTreeNode *)node {
  OrgApacheLuceneSearchSuggestTstTSTLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, outArg, node);
}

- (jboolean)storeWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output {
  @synchronized(self) {
    [((OrgApacheLuceneStoreDataOutput *) nil_chk(output)) writeVLongWithLong:count_];
    OrgApacheLuceneSearchSuggestTstTSTLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, output, root_);
    return true;
  }
}

- (jboolean)load__WithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input {
  @synchronized(self) {
    count_ = [((OrgApacheLuceneStoreDataInput *) nil_chk(input)) readVLong];
    JreStrongAssignAndConsume(&root_, new_OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init());
    OrgApacheLuceneSearchSuggestTstTSTLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, input, root_);
    return true;
  }
}

- (jlong)ramBytesUsed {
  jlong mem = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(self);
  if (root_ != nil) {
    mem += [root_ sizeInBytes];
  }
  return mem;
}

- (jlong)getCount {
  return count_;
}

- (void)dealloc {
  RELEASE_(root_);
  RELEASE_(autocomplete_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TSTLookup", NULL, 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneSearchSuggestInputIterator:", "build", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "addWithJavaLangCharSequence:withId:", "add", "Z", 0x1, NULL, NULL },
    { "getWithJavaLangCharSequence:", "get", "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "charSeqEqualsWithJavaLangCharSequence:withJavaLangCharSequence:", "charSeqEquals", "Z", 0xa, NULL, NULL },
    { "lookupWithJavaLangCharSequence:withJavaUtilSet:withBoolean:withInt:", "lookup", "Ljava.util.List;", 0x1, NULL, NULL },
    { "readRecursivelyWithOrgApacheLuceneStoreDataInput:withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:", "readRecursively", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "writeRecursivelyWithOrgApacheLuceneStoreDataOutput:withOrgApacheLuceneSearchSuggestTstTernaryTreeNode:", "writeRecursively", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "storeWithOrgApacheLuceneStoreDataOutput:", "store", "Z", 0x21, "Ljava.io.IOException;", NULL },
    { "load__WithOrgApacheLuceneStoreDataInput:", "load", "Z", 0x21, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getCount", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "root_", NULL, 0x0, "Lorg.apache.lucene.search.suggest.tst.TernaryTreeNode;", NULL, NULL, .constantValue.asLong = 0 },
    { "autocomplete_", NULL, 0x0, "Lorg.apache.lucene.search.suggest.tst.TSTAutocomplete;", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "LO_KID", "LO_KID", 0x1a, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestTstTSTLookup_LO_KID },
    { "EQ_KID", "EQ_KID", 0x1a, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestTstTSTLookup_EQ_KID },
    { "HI_KID", "HI_KID", 0x1a, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestTstTSTLookup_HI_KID },
    { "HAS_TOKEN", "HAS_TOKEN", 0x1a, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestTstTSTLookup_HAS_TOKEN },
    { "HAS_VALUE", "HAS_VALUE", 0x1a, "B", NULL, NULL, .constantValue.asChar = OrgApacheLuceneSearchSuggestTstTSTLookup_HAS_VALUE },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestTstTSTLookup = { 2, "TSTLookup", "org.apache.lucene.search.suggest.tst", NULL, 0x1, 12, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestTstTSTLookup;
}

@end

void OrgApacheLuceneSearchSuggestTstTSTLookup_init(OrgApacheLuceneSearchSuggestTstTSTLookup *self) {
  OrgApacheLuceneSearchSuggestLookup_init(self);
  JreStrongAssignAndConsume(&self->root_, new_OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init());
  JreStrongAssignAndConsume(&self->autocomplete_, new_OrgApacheLuceneSearchSuggestTstTSTAutocomplete_init());
  self->count_ = 0;
}

OrgApacheLuceneSearchSuggestTstTSTLookup *new_OrgApacheLuceneSearchSuggestTstTSTLookup_init() {
  OrgApacheLuceneSearchSuggestTstTSTLookup *self = [OrgApacheLuceneSearchSuggestTstTSTLookup alloc];
  OrgApacheLuceneSearchSuggestTstTSTLookup_init(self);
  return self;
}

jboolean OrgApacheLuceneSearchSuggestTstTSTLookup_charSeqEqualsWithJavaLangCharSequence_withJavaLangCharSequence_(id<JavaLangCharSequence> left, id<JavaLangCharSequence> right) {
  OrgApacheLuceneSearchSuggestTstTSTLookup_initialize();
  jint len = [((id<JavaLangCharSequence>) nil_chk(left)) length];
  if (len != [((id<JavaLangCharSequence>) nil_chk(right)) length]) {
    return false;
  }
  for (jint i = 0; i < len; i++) {
    if ([left charAtWithInt:i] != [right charAtWithInt:i]) {
      return false;
    }
  }
  return true;
}

void OrgApacheLuceneSearchSuggestTstTSTLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(OrgApacheLuceneSearchSuggestTstTSTLookup *self, OrgApacheLuceneStoreDataInput *inArg, OrgApacheLuceneSearchSuggestTstTernaryTreeNode *node) {
  ((OrgApacheLuceneSearchSuggestTstTernaryTreeNode *) nil_chk(node))->splitchar_ = [((NSString *) nil_chk([((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readString])) charAtWithInt:0];
  jbyte mask = [inArg readByte];
  if ((mask & OrgApacheLuceneSearchSuggestTstTSTLookup_HAS_TOKEN) != 0) {
    JreStrongAssign(&node->token_, [inArg readString]);
  }
  if ((mask & OrgApacheLuceneSearchSuggestTstTSTLookup_HAS_VALUE) != 0) {
    JreStrongAssign(&node->val_, JavaLangLong_valueOfWithLong_([inArg readLong]));
  }
  if ((mask & OrgApacheLuceneSearchSuggestTstTSTLookup_LO_KID) != 0) {
    JreStrongAssignAndConsume(&node->loKid_, new_OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init());
    OrgApacheLuceneSearchSuggestTstTSTLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, inArg, node->loKid_);
  }
  if ((mask & OrgApacheLuceneSearchSuggestTstTSTLookup_EQ_KID) != 0) {
    JreStrongAssignAndConsume(&node->eqKid_, new_OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init());
    OrgApacheLuceneSearchSuggestTstTSTLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, inArg, node->eqKid_);
  }
  if ((mask & OrgApacheLuceneSearchSuggestTstTSTLookup_HI_KID) != 0) {
    JreStrongAssignAndConsume(&node->hiKid_, new_OrgApacheLuceneSearchSuggestTstTernaryTreeNode_init());
    OrgApacheLuceneSearchSuggestTstTSTLookup_readRecursivelyWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, inArg, node->hiKid_);
  }
}

void OrgApacheLuceneSearchSuggestTstTSTLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(OrgApacheLuceneSearchSuggestTstTSTLookup *self, OrgApacheLuceneStoreDataOutput *outArg, OrgApacheLuceneSearchSuggestTstTernaryTreeNode *node) {
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeStringWithNSString:[NSString stringWithCharacters:[IOSCharArray arrayWithChars:(jchar[]){ ((OrgApacheLuceneSearchSuggestTstTernaryTreeNode *) nil_chk(node))->splitchar_ } count:1] offset:0 length:1]];
  jbyte mask = 0;
  if (node->eqKid_ != nil) mask |= OrgApacheLuceneSearchSuggestTstTSTLookup_EQ_KID;
  if (node->loKid_ != nil) mask |= OrgApacheLuceneSearchSuggestTstTSTLookup_LO_KID;
  if (node->hiKid_ != nil) mask |= OrgApacheLuceneSearchSuggestTstTSTLookup_HI_KID;
  if (node->token_ != nil) mask |= OrgApacheLuceneSearchSuggestTstTSTLookup_HAS_TOKEN;
  if (node->val_ != nil) mask |= OrgApacheLuceneSearchSuggestTstTSTLookup_HAS_VALUE;
  [outArg writeByteWithByte:mask];
  if (node->token_ != nil) [outArg writeStringWithNSString:node->token_];
  if (node->val_ != nil) [outArg writeLongWithLong:[((NSNumber *) check_class_cast(node->val_, [NSNumber class])) longLongValue]];
  if (node->loKid_ != nil) {
    OrgApacheLuceneSearchSuggestTstTSTLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, outArg, node->loKid_);
  }
  if (node->eqKid_ != nil) {
    OrgApacheLuceneSearchSuggestTstTSTLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, outArg, node->eqKid_);
  }
  if (node->hiKid_ != nil) {
    OrgApacheLuceneSearchSuggestTstTSTLookup_writeRecursivelyWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneSearchSuggestTstTernaryTreeNode_(self, outArg, node->hiKid_);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestTstTSTLookup)
