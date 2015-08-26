//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ReaderUtil.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/CompositeReaderContext.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/ReaderUtil.h"

@interface OrgApacheLuceneIndexReaderUtil ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexReaderUtil_init(OrgApacheLuceneIndexReaderUtil *self);

__attribute__((unused)) static OrgApacheLuceneIndexReaderUtil *new_OrgApacheLuceneIndexReaderUtil_init() NS_RETURNS_RETAINED;

@implementation OrgApacheLuceneIndexReaderUtil

- (instancetype)init {
  OrgApacheLuceneIndexReaderUtil_init(self);
  return self;
}

+ (OrgApacheLuceneIndexIndexReaderContext *)getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext:(OrgApacheLuceneIndexIndexReaderContext *)context {
  return OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(context);
}

+ (jint)subIndexWithInt:(jint)n
           withIntArray:(IOSIntArray *)docStarts {
  return OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(n, docStarts);
}

+ (jint)subIndexWithInt:(jint)n
       withJavaUtilList:(id<JavaUtilList>)leaves {
  return OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withJavaUtilList_(n, leaves);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ReaderUtil", NULL, 0x2, NULL, NULL },
    { "getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext:", "getTopLevelContext", "Lorg.apache.lucene.index.IndexReaderContext;", 0x9, NULL, NULL },
    { "subIndexWithInt:withIntArray:", "subIndex", "I", 0x9, NULL, NULL },
    { "subIndexWithInt:withJavaUtilList:", "subIndex", "I", 0x9, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexReaderUtil = { 2, "ReaderUtil", "org.apache.lucene.index", NULL, 0x11, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexReaderUtil;
}

@end

void OrgApacheLuceneIndexReaderUtil_init(OrgApacheLuceneIndexReaderUtil *self) {
  NSObject_init(self);
}

OrgApacheLuceneIndexReaderUtil *new_OrgApacheLuceneIndexReaderUtil_init() {
  OrgApacheLuceneIndexReaderUtil *self = [OrgApacheLuceneIndexReaderUtil alloc];
  OrgApacheLuceneIndexReaderUtil_init(self);
  return self;
}

OrgApacheLuceneIndexIndexReaderContext *OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(OrgApacheLuceneIndexIndexReaderContext *context) {
  OrgApacheLuceneIndexReaderUtil_initialize();
  while (((OrgApacheLuceneIndexIndexReaderContext *) nil_chk(context))->parent_ != nil) {
    context = context->parent_;
  }
  return context;
}

jint OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(jint n, IOSIntArray *docStarts) {
  OrgApacheLuceneIndexReaderUtil_initialize();
  jint size = ((IOSIntArray *) nil_chk(docStarts))->size_;
  jint lo = 0;
  jint hi = size - 1;
  while (hi >= lo) {
    jint mid = JreURShift32((lo + hi), 1);
    jint midValue = IOSIntArray_Get(docStarts, mid);
    if (n < midValue) hi = mid - 1;
    else if (n > midValue) lo = mid + 1;
    else {
      while (mid + 1 < size && IOSIntArray_Get(docStarts, mid + 1) == midValue) {
        mid++;
      }
      return mid;
    }
  }
  return hi;
}

jint OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withJavaUtilList_(jint n, id<JavaUtilList> leaves) {
  OrgApacheLuceneIndexReaderUtil_initialize();
  jint size = [((id<JavaUtilList>) nil_chk(leaves)) size];
  jint lo = 0;
  jint hi = size - 1;
  while (hi >= lo) {
    jint mid = JreURShift32((lo + hi), 1);
    jint midValue = ((OrgApacheLuceneIndexLeafReaderContext *) nil_chk([leaves getWithInt:mid]))->docBase_;
    if (n < midValue) hi = mid - 1;
    else if (n > midValue) lo = mid + 1;
    else {
      while (mid + 1 < size && ((OrgApacheLuceneIndexLeafReaderContext *) nil_chk([leaves getWithInt:mid + 1]))->docBase_ == midValue) {
        mid++;
      }
      return mid;
    }
  }
  return hi;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexReaderUtil)