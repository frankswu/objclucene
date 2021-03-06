//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/LiveFieldValues.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Map.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/apache/lucene/search/LiveFieldValues.h"
#include "org/apache/lucene/search/ReferenceManager.h"

@interface OrgApacheLuceneSearchLiveFieldValues () {
 @public
  volatile_id current_;
  volatile_id old_;
  OrgApacheLuceneSearchReferenceManager *mgr_;
  id missingValue_;
}

@end

J2OBJC_VOLATILE_FIELD_SETTER(OrgApacheLuceneSearchLiveFieldValues, current_, id<JavaUtilMap>)
J2OBJC_VOLATILE_FIELD_SETTER(OrgApacheLuceneSearchLiveFieldValues, old_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchLiveFieldValues, mgr_, OrgApacheLuceneSearchReferenceManager *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchLiveFieldValues, missingValue_, id)

@implementation OrgApacheLuceneSearchLiveFieldValues

- (instancetype)initWithOrgApacheLuceneSearchReferenceManager:(OrgApacheLuceneSearchReferenceManager *)mgr
                                                       withId:(id)missingValue {
  OrgApacheLuceneSearchLiveFieldValues_initWithOrgApacheLuceneSearchReferenceManager_withId_(self, mgr, missingValue);
  return self;
}

- (void)close {
  [((OrgApacheLuceneSearchReferenceManager *) nil_chk(mgr_)) removeListenerWithOrgApacheLuceneSearchReferenceManager_RefreshListener:self];
}

- (void)beforeRefresh {
  JreVolatileStrongAssign(&old_, JreLoadVolatileId(&current_));
  JreVolatileStrongAssignAndConsume(&current_, new_JavaUtilConcurrentConcurrentHashMap_init());
}

- (void)afterRefreshWithBoolean:(jboolean)didRefresh {
  JreVolatileStrongAssignAndConsume(&old_, new_JavaUtilConcurrentConcurrentHashMap_init());
}

- (void)addWithNSString:(NSString *)id_
                 withId:(id)value {
  [((id<JavaUtilMap>) nil_chk(JreLoadVolatileId(&current_))) putWithId:id_ withId:value];
}

- (void)delete__WithNSString:(NSString *)id_ {
  [((id<JavaUtilMap>) nil_chk(JreLoadVolatileId(&current_))) putWithId:id_ withId:missingValue_];
}

- (jint)size {
  return [((id<JavaUtilMap>) nil_chk(JreLoadVolatileId(&current_))) size] + [((id<JavaUtilMap>) nil_chk(JreLoadVolatileId(&old_))) size];
}

- (id)getWithNSString:(NSString *)id_ {
  id value = [((id<JavaUtilMap>) nil_chk(JreLoadVolatileId(&current_))) getWithId:id_];
  if (value == missingValue_) {
    return nil;
  }
  else if (value != nil) {
    return value;
  }
  else {
    value = [((id<JavaUtilMap>) nil_chk(JreLoadVolatileId(&old_))) getWithId:id_];
    if (value == missingValue_) {
      return nil;
    }
    else if (value != nil) {
      return value;
    }
    else {
      id s = [((OrgApacheLuceneSearchReferenceManager *) nil_chk(mgr_)) acquire];
      @try {
        return [self lookupFromSearcherWithId:s withNSString:id_];
      }
      @finally {
        [mgr_ release__WithId:s];
      }
    }
  }
}

- (id)lookupFromSearcherWithId:(id)s
                  withNSString:(NSString *)id_ {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)__javaClone:(OrgApacheLuceneSearchLiveFieldValues *)original {
  [super __javaClone:original];
  JreCloneVolatileStrong(&current_, &original->current_);
  JreCloneVolatileStrong(&old_, &original->old_);
}

- (void)dealloc {
  JreReleaseVolatile(&current_);
  JreReleaseVolatile(&old_);
  RELEASE_(mgr_);
  RELEASE_(missingValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchReferenceManager:withId:", "LiveFieldValues", NULL, 0x1, NULL, "(Lorg/apache/lucene/search/ReferenceManager<TS;>;TT;)V" },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "beforeRefresh", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "afterRefreshWithBoolean:", "afterRefresh", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "addWithNSString:withId:", "add", "V", 0x1, NULL, "(Ljava/lang/String;TT;)V" },
    { "delete__WithNSString:", "delete", "V", 0x1, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "getWithNSString:", "get", "TT;", 0x1, "Ljava.io.IOException;", "(Ljava/lang/String;)TT;" },
    { "lookupFromSearcherWithId:withNSString:", "lookupFromSearcher", "TT;", 0x404, "Ljava.io.IOException;", "(TS;Ljava/lang/String;)TT;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "current_", NULL, 0x42, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;TT;>;", .constantValue.asLong = 0 },
    { "old_", NULL, 0x42, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;TT;>;", .constantValue.asLong = 0 },
    { "mgr_", NULL, 0x12, "Lorg.apache.lucene.search.ReferenceManager;", NULL, "Lorg/apache/lucene/search/ReferenceManager<TS;>;", .constantValue.asLong = 0 },
    { "missingValue_", NULL, 0x12, "TT;", NULL, "TT;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchLiveFieldValues = { 2, "LiveFieldValues", "org.apache.lucene.search", NULL, 0x401, 9, methods, 4, fields, 0, NULL, 0, NULL, NULL, "<S:Ljava/lang/Object;T:Ljava/lang/Object;>Ljava/lang/Object;Lorg/apache/lucene/search/ReferenceManager$RefreshListener;Ljava/io/Closeable;" };
  return &_OrgApacheLuceneSearchLiveFieldValues;
}

@end

void OrgApacheLuceneSearchLiveFieldValues_initWithOrgApacheLuceneSearchReferenceManager_withId_(OrgApacheLuceneSearchLiveFieldValues *self, OrgApacheLuceneSearchReferenceManager *mgr, id missingValue) {
  NSObject_init(self);
  JreVolatileStrongAssignAndConsume(&self->current_, new_JavaUtilConcurrentConcurrentHashMap_init());
  JreVolatileStrongAssignAndConsume(&self->old_, new_JavaUtilConcurrentConcurrentHashMap_init());
  JreStrongAssign(&self->missingValue_, missingValue);
  JreStrongAssign(&self->mgr_, mgr);
  [((OrgApacheLuceneSearchReferenceManager *) nil_chk(mgr)) addListenerWithOrgApacheLuceneSearchReferenceManager_RefreshListener:self];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchLiveFieldValues)
