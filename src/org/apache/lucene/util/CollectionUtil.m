//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/CollectionUtil.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Collections.h"
#include "java/util/Comparator.h"
#include "java/util/List.h"
#include "java/util/RandomAccess.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/CollectionUtil.h"
#include "org/apache/lucene/util/IntroSorter.h"
#include "org/apache/lucene/util/TimSorter.h"

@interface OrgApacheLuceneUtilCollectionUtil ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilCollectionUtil_init(OrgApacheLuceneUtilCollectionUtil *self);

__attribute__((unused)) static OrgApacheLuceneUtilCollectionUtil *new_OrgApacheLuceneUtilCollectionUtil_init() NS_RETURNS_RETAINED;

@interface OrgApacheLuceneUtilCollectionUtil_ListIntroSorter : OrgApacheLuceneUtilIntroSorter {
 @public
  id pivot_;
  id<JavaUtilList> list_;
  id<JavaUtilComparator> comp_;
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)list
              withJavaUtilComparator:(id<JavaUtilComparator>)comp;

- (void)setPivotWithInt:(jint)i;

- (void)swapWithInt:(jint)i
            withInt:(jint)j;

- (jint)compareWithInt:(jint)i
               withInt:(jint)j;

- (jint)comparePivotWithInt:(jint)j;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCollectionUtil_ListIntroSorter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCollectionUtil_ListIntroSorter, pivot_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCollectionUtil_ListIntroSorter, list_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCollectionUtil_ListIntroSorter, comp_, id<JavaUtilComparator>)

__attribute__((unused)) static void OrgApacheLuceneUtilCollectionUtil_ListIntroSorter_initWithJavaUtilList_withJavaUtilComparator_(OrgApacheLuceneUtilCollectionUtil_ListIntroSorter *self, id<JavaUtilList> list, id<JavaUtilComparator> comp);

__attribute__((unused)) static OrgApacheLuceneUtilCollectionUtil_ListIntroSorter *new_OrgApacheLuceneUtilCollectionUtil_ListIntroSorter_initWithJavaUtilList_withJavaUtilComparator_(id<JavaUtilList> list, id<JavaUtilComparator> comp) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCollectionUtil_ListIntroSorter)

@interface OrgApacheLuceneUtilCollectionUtil_ListTimSorter : OrgApacheLuceneUtilTimSorter {
 @public
  id<JavaUtilList> list_;
  id<JavaUtilComparator> comp_;
  IOSObjectArray *tmp_;
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)list
              withJavaUtilComparator:(id<JavaUtilComparator>)comp
                             withInt:(jint)maxTempSlots;

- (void)swapWithInt:(jint)i
            withInt:(jint)j;

- (void)copy__WithInt:(jint)src
              withInt:(jint)dest OBJC_METHOD_FAMILY_NONE;

- (void)saveWithInt:(jint)i
            withInt:(jint)len;

- (void)restoreWithInt:(jint)i
               withInt:(jint)j;

- (jint)compareWithInt:(jint)i
               withInt:(jint)j;

- (jint)compareSavedWithInt:(jint)i
                    withInt:(jint)j;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilCollectionUtil_ListTimSorter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCollectionUtil_ListTimSorter, list_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCollectionUtil_ListTimSorter, comp_, id<JavaUtilComparator>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCollectionUtil_ListTimSorter, tmp_, IOSObjectArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilCollectionUtil_ListTimSorter_initWithJavaUtilList_withJavaUtilComparator_withInt_(OrgApacheLuceneUtilCollectionUtil_ListTimSorter *self, id<JavaUtilList> list, id<JavaUtilComparator> comp, jint maxTempSlots);

__attribute__((unused)) static OrgApacheLuceneUtilCollectionUtil_ListTimSorter *new_OrgApacheLuceneUtilCollectionUtil_ListTimSorter_initWithJavaUtilList_withJavaUtilComparator_withInt_(id<JavaUtilList> list, id<JavaUtilComparator> comp, jint maxTempSlots) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCollectionUtil_ListTimSorter)

@implementation OrgApacheLuceneUtilCollectionUtil

- (instancetype)init {
  OrgApacheLuceneUtilCollectionUtil_init(self);
  return self;
}

+ (void)introSortWithJavaUtilList:(id<JavaUtilList>)list
           withJavaUtilComparator:(id<JavaUtilComparator>)comp {
  OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_withJavaUtilComparator_(list, comp);
}

+ (void)introSortWithJavaUtilList:(id<JavaUtilList>)list {
  OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_(list);
}

+ (void)timSortWithJavaUtilList:(id<JavaUtilList>)list
         withJavaUtilComparator:(id<JavaUtilComparator>)comp {
  OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_withJavaUtilComparator_(list, comp);
}

+ (void)timSortWithJavaUtilList:(id<JavaUtilList>)list {
  OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_(list);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CollectionUtil", NULL, 0x2, NULL, NULL },
    { "introSortWithJavaUtilList:withJavaUtilComparator:", "introSort", "V", 0x9, NULL, "<T:Ljava/lang/Object;>(Ljava/util/List<TT;>;Ljava/util/Comparator<-TT;>;)V" },
    { "introSortWithJavaUtilList:", "introSort", "V", 0x9, NULL, "<T::Ljava/lang/Comparable<-TT;>;>(Ljava/util/List<TT;>;)V" },
    { "timSortWithJavaUtilList:withJavaUtilComparator:", "timSort", "V", 0x9, NULL, "<T:Ljava/lang/Object;>(Ljava/util/List<TT;>;Ljava/util/Comparator<-TT;>;)V" },
    { "timSortWithJavaUtilList:", "timSort", "V", 0x9, NULL, "<T::Ljava/lang/Comparable<-TT;>;>(Ljava/util/List<TT;>;)V" },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.CollectionUtil$ListIntroSorter;", "Lorg.apache.lucene.util.CollectionUtil$ListTimSorter;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCollectionUtil = { 2, "CollectionUtil", "org.apache.lucene.util", NULL, 0x11, 5, methods, 0, NULL, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilCollectionUtil;
}

@end

void OrgApacheLuceneUtilCollectionUtil_init(OrgApacheLuceneUtilCollectionUtil *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilCollectionUtil *new_OrgApacheLuceneUtilCollectionUtil_init() {
  OrgApacheLuceneUtilCollectionUtil *self = [OrgApacheLuceneUtilCollectionUtil alloc];
  OrgApacheLuceneUtilCollectionUtil_init(self);
  return self;
}

void OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_withJavaUtilComparator_(id<JavaUtilList> list, id<JavaUtilComparator> comp) {
  OrgApacheLuceneUtilCollectionUtil_initialize();
  jint size = [((id<JavaUtilList>) nil_chk(list)) size];
  if (size <= 1) return;
  [((OrgApacheLuceneUtilCollectionUtil_ListIntroSorter *) [new_OrgApacheLuceneUtilCollectionUtil_ListIntroSorter_initWithJavaUtilList_withJavaUtilComparator_(list, comp) autorelease]) sortWithInt:0 withInt:size];
}

void OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_(id<JavaUtilList> list) {
  OrgApacheLuceneUtilCollectionUtil_initialize();
  jint size = [((id<JavaUtilList>) nil_chk(list)) size];
  if (size <= 1) return;
  OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_withJavaUtilComparator_(list, OrgApacheLuceneUtilArrayUtil_naturalComparator());
}

void OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_withJavaUtilComparator_(id<JavaUtilList> list, id<JavaUtilComparator> comp) {
  OrgApacheLuceneUtilCollectionUtil_initialize();
  jint size = [((id<JavaUtilList>) nil_chk(list)) size];
  if (size <= 1) return;
  [((OrgApacheLuceneUtilCollectionUtil_ListTimSorter *) [new_OrgApacheLuceneUtilCollectionUtil_ListTimSorter_initWithJavaUtilList_withJavaUtilComparator_withInt_(list, comp, [list size] / 64) autorelease]) sortWithInt:0 withInt:size];
}

void OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_(id<JavaUtilList> list) {
  OrgApacheLuceneUtilCollectionUtil_initialize();
  jint size = [((id<JavaUtilList>) nil_chk(list)) size];
  if (size <= 1) return;
  OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_withJavaUtilComparator_(list, OrgApacheLuceneUtilArrayUtil_naturalComparator());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCollectionUtil)

@implementation OrgApacheLuceneUtilCollectionUtil_ListIntroSorter

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)list
              withJavaUtilComparator:(id<JavaUtilComparator>)comp {
  OrgApacheLuceneUtilCollectionUtil_ListIntroSorter_initWithJavaUtilList_withJavaUtilComparator_(self, list, comp);
  return self;
}

- (void)setPivotWithInt:(jint)i {
  JreStrongAssign(&pivot_, [((id<JavaUtilList>) nil_chk(list_)) getWithInt:i]);
}

- (void)swapWithInt:(jint)i
            withInt:(jint)j {
  JavaUtilCollections_swapWithJavaUtilList_withInt_withInt_(list_, i, j);
}

- (jint)compareWithInt:(jint)i
               withInt:(jint)j {
  return [((id<JavaUtilComparator>) nil_chk(comp_)) compareWithId:[((id<JavaUtilList>) nil_chk(list_)) getWithInt:i] withId:[list_ getWithInt:j]];
}

- (jint)comparePivotWithInt:(jint)j {
  return [((id<JavaUtilComparator>) nil_chk(comp_)) compareWithId:pivot_ withId:[((id<JavaUtilList>) nil_chk(list_)) getWithInt:j]];
}

- (void)dealloc {
  RELEASE_(pivot_);
  RELEASE_(list_);
  RELEASE_(comp_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:withJavaUtilComparator:", "ListIntroSorter", NULL, 0x0, NULL, NULL },
    { "setPivotWithInt:", "setPivot", "V", 0x4, NULL, NULL },
    { "swapWithInt:withInt:", "swap", "V", 0x4, NULL, NULL },
    { "compareWithInt:withInt:", "compare", "I", 0x4, NULL, NULL },
    { "comparePivotWithInt:", "comparePivot", "I", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pivot_", NULL, 0x0, "TT;", NULL, "TT;", .constantValue.asLong = 0 },
    { "list_", NULL, 0x10, "Ljava.util.List;", NULL, "Ljava/util/List<TT;>;", .constantValue.asLong = 0 },
    { "comp_", NULL, 0x10, "Ljava.util.Comparator;", NULL, "Ljava/util/Comparator<-TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCollectionUtil_ListIntroSorter = { 2, "ListIntroSorter", "org.apache.lucene.util", "CollectionUtil", 0x1a, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Lorg/apache/lucene/util/IntroSorter;" };
  return &_OrgApacheLuceneUtilCollectionUtil_ListIntroSorter;
}

@end

void OrgApacheLuceneUtilCollectionUtil_ListIntroSorter_initWithJavaUtilList_withJavaUtilComparator_(OrgApacheLuceneUtilCollectionUtil_ListIntroSorter *self, id<JavaUtilList> list, id<JavaUtilComparator> comp) {
  OrgApacheLuceneUtilIntroSorter_init(self);
  if (!([JavaUtilRandomAccess_class_() isInstance:list])) @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"CollectionUtil can only sort random access lists in-place.") autorelease];
  JreStrongAssign(&self->list_, list);
  JreStrongAssign(&self->comp_, comp);
}

OrgApacheLuceneUtilCollectionUtil_ListIntroSorter *new_OrgApacheLuceneUtilCollectionUtil_ListIntroSorter_initWithJavaUtilList_withJavaUtilComparator_(id<JavaUtilList> list, id<JavaUtilComparator> comp) {
  OrgApacheLuceneUtilCollectionUtil_ListIntroSorter *self = [OrgApacheLuceneUtilCollectionUtil_ListIntroSorter alloc];
  OrgApacheLuceneUtilCollectionUtil_ListIntroSorter_initWithJavaUtilList_withJavaUtilComparator_(self, list, comp);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCollectionUtil_ListIntroSorter)

@implementation OrgApacheLuceneUtilCollectionUtil_ListTimSorter

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)list
              withJavaUtilComparator:(id<JavaUtilComparator>)comp
                             withInt:(jint)maxTempSlots {
  OrgApacheLuceneUtilCollectionUtil_ListTimSorter_initWithJavaUtilList_withJavaUtilComparator_withInt_(self, list, comp, maxTempSlots);
  return self;
}

- (void)swapWithInt:(jint)i
            withInt:(jint)j {
  JavaUtilCollections_swapWithJavaUtilList_withInt_withInt_(list_, i, j);
}

- (void)copy__WithInt:(jint)src
              withInt:(jint)dest {
  [list_ setWithInt:dest withId:[((id<JavaUtilList>) nil_chk(list_)) getWithInt:src]];
}

- (void)saveWithInt:(jint)i
            withInt:(jint)len {
  for (jint j = 0; j < len; ++j) {
    IOSObjectArray_Set(nil_chk(tmp_), j, [((id<JavaUtilList>) nil_chk(list_)) getWithInt:i + j]);
  }
}

- (void)restoreWithInt:(jint)i
               withInt:(jint)j {
  [((id<JavaUtilList>) nil_chk(list_)) setWithInt:j withId:IOSObjectArray_Get(nil_chk(tmp_), i)];
}

- (jint)compareWithInt:(jint)i
               withInt:(jint)j {
  return [((id<JavaUtilComparator>) nil_chk(comp_)) compareWithId:[((id<JavaUtilList>) nil_chk(list_)) getWithInt:i] withId:[list_ getWithInt:j]];
}

- (jint)compareSavedWithInt:(jint)i
                    withInt:(jint)j {
  return [((id<JavaUtilComparator>) nil_chk(comp_)) compareWithId:IOSObjectArray_Get(nil_chk(tmp_), i) withId:[((id<JavaUtilList>) nil_chk(list_)) getWithInt:j]];
}

- (void)dealloc {
  RELEASE_(list_);
  RELEASE_(comp_);
  RELEASE_(tmp_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:withJavaUtilComparator:withInt:", "ListTimSorter", NULL, 0x0, NULL, NULL },
    { "swapWithInt:withInt:", "swap", "V", 0x4, NULL, NULL },
    { "copy__WithInt:withInt:", "copy", "V", 0x4, NULL, NULL },
    { "saveWithInt:withInt:", "save", "V", 0x4, NULL, NULL },
    { "restoreWithInt:withInt:", "restore", "V", 0x4, NULL, NULL },
    { "compareWithInt:withInt:", "compare", "I", 0x4, NULL, NULL },
    { "compareSavedWithInt:withInt:", "compareSaved", "I", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "list_", NULL, 0x10, "Ljava.util.List;", NULL, "Ljava/util/List<TT;>;", .constantValue.asLong = 0 },
    { "comp_", NULL, 0x10, "Ljava.util.Comparator;", NULL, "Ljava/util/Comparator<-TT;>;", .constantValue.asLong = 0 },
    { "tmp_", NULL, 0x10, "[Ljava.lang.Object;", NULL, "[TT;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilCollectionUtil_ListTimSorter = { 2, "ListTimSorter", "org.apache.lucene.util", "CollectionUtil", 0x1a, 7, methods, 3, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Lorg/apache/lucene/util/TimSorter;" };
  return &_OrgApacheLuceneUtilCollectionUtil_ListTimSorter;
}

@end

void OrgApacheLuceneUtilCollectionUtil_ListTimSorter_initWithJavaUtilList_withJavaUtilComparator_withInt_(OrgApacheLuceneUtilCollectionUtil_ListTimSorter *self, id<JavaUtilList> list, id<JavaUtilComparator> comp, jint maxTempSlots) {
  OrgApacheLuceneUtilTimSorter_initWithInt_(self, maxTempSlots);
  if (!([JavaUtilRandomAccess_class_() isInstance:list])) @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"CollectionUtil can only sort random access lists in-place.") autorelease];
  JreStrongAssign(&self->list_, list);
  JreStrongAssign(&self->comp_, comp);
  if (maxTempSlots > 0) {
    JreStrongAssign(&self->tmp_, (IOSObjectArray *) check_class_cast([IOSObjectArray arrayWithLength:maxTempSlots type:NSObject_class_()], [IOSObjectArray class]));
  }
  else {
    JreStrongAssign(&self->tmp_, nil);
  }
}

OrgApacheLuceneUtilCollectionUtil_ListTimSorter *new_OrgApacheLuceneUtilCollectionUtil_ListTimSorter_initWithJavaUtilList_withJavaUtilComparator_withInt_(id<JavaUtilList> list, id<JavaUtilComparator> comp, jint maxTempSlots) {
  OrgApacheLuceneUtilCollectionUtil_ListTimSorter *self = [OrgApacheLuceneUtilCollectionUtil_ListTimSorter alloc];
  OrgApacheLuceneUtilCollectionUtil_ListTimSorter_initWithJavaUtilList_withJavaUtilComparator_withInt_(self, list, comp, maxTempSlots);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilCollectionUtil_ListTimSorter)