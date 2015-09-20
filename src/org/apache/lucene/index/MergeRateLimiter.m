//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MergeRateLimiter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/index/MergePolicy.h"
#include "org/apache/lucene/index/MergeRateLimiter.h"
#include "org/apache/lucene/store/RateLimiter.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

@class OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum;

#define OrgApacheLuceneIndexMergeRateLimiter_MIN_PAUSE_CHECK_MSEC 25

@interface OrgApacheLuceneIndexMergeRateLimiter () {
 @public
  jlong lastNS_;
  jlong minPauseCheckBytes_;
  jboolean abort_;
}

- (OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *)maybePauseWithLong:(jlong)bytes
                                                                    withLong:(jlong)curNS;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexMergeRateLimiter, MIN_PAUSE_CHECK_MSEC, jint)

__attribute__((unused)) static OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *OrgApacheLuceneIndexMergeRateLimiter_maybePauseWithLong_withLong_(OrgApacheLuceneIndexMergeRateLimiter *self, jlong bytes, jlong curNS);

typedef NS_ENUM(NSUInteger, OrgApacheLuceneIndexMergeRateLimiter_PauseResult) {
  OrgApacheLuceneIndexMergeRateLimiter_PauseResult_NO = 0,
  OrgApacheLuceneIndexMergeRateLimiter_PauseResult_STOPPED = 1,
  OrgApacheLuceneIndexMergeRateLimiter_PauseResult_PAUSED = 2,
};

@interface OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum : JavaLangEnum < NSCopying >

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values();

+ (OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum)

FOUNDATION_EXPORT OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_[];

#define OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_NO OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_[OrgApacheLuceneIndexMergeRateLimiter_PauseResult_NO]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum, NO)

#define OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_STOPPED OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_[OrgApacheLuceneIndexMergeRateLimiter_PauseResult_STOPPED]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum, STOPPED)

#define OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_PAUSED OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_[OrgApacheLuceneIndexMergeRateLimiter_PauseResult_PAUSED]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum, PAUSED)

__attribute__((unused)) static void OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initWithNSString_withInt_(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *new_OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum)

@implementation OrgApacheLuceneIndexMergeRateLimiter

- (instancetype)initWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge {
  OrgApacheLuceneIndexMergeRateLimiter_initWithOrgApacheLuceneIndexMergePolicy_OneMerge_(self, merge);
  return self;
}

- (void)setMBPerSecWithDouble:(jdouble)mbPerSec {
  @synchronized(self) {
    if (mbPerSec < 0.0) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"mbPerSec must be positive; got: ", mbPerSec)) autorelease];
    }
    self->mbPerSec_ = mbPerSec;
    minPauseCheckBytes_ = JavaLangMath_minWithLong_withLong_(1024 * 1024, JreFpToLong(((OrgApacheLuceneIndexMergeRateLimiter_MIN_PAUSE_CHECK_MSEC / 1000.0) * mbPerSec * 1024 * 1024)));
    JreAssert((minPauseCheckBytes_ >= 0), (@"org/apache/lucene/index/MergeRateLimiter.java:67 condition failed: assert minPauseCheckBytes >= 0;"));
    [self notify];
  }
}

- (jdouble)getMBPerSec {
  @synchronized(self) {
    return mbPerSec_;
  }
}

- (jlong)getTotalBytesWritten {
  return JreLoadVolatileLong(&totalBytesWritten_);
}

- (jlong)pauseWithLong:(jlong)bytes {
  JrePlusAssignVolatileLongJ(&totalBytesWritten_, bytes);
  jlong startNS = JavaLangSystem_nanoTime();
  jlong curNS = startNS;
  jlong pausedNS = 0;
  while (true) {
    OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *result = OrgApacheLuceneIndexMergeRateLimiter_maybePauseWithLong_withLong_(self, bytes, curNS);
    if (result == JreLoadStatic(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum, NO)) {
      lastNS_ = curNS;
      break;
    }
    curNS = JavaLangSystem_nanoTime();
    jlong ns = curNS - startNS;
    startNS = curNS;
    if (result == JreLoadStatic(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum, STOPPED)) {
      totalStoppedNS_ += ns;
    }
    else {
      JreAssert((result == JreLoadStatic(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum, PAUSED)), (@"org/apache/lucene/index/MergeRateLimiter.java:109 condition failed: assert result == PauseResult.PAUSED;"));
      totalPausedNS_ += ns;
    }
    pausedNS += ns;
  }
  return pausedNS;
}

- (jlong)getTotalStoppedNS {
  @synchronized(self) {
    return totalStoppedNS_;
  }
}

- (jlong)getTotalPausedNS {
  @synchronized(self) {
    return totalPausedNS_;
  }
}

- (OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *)maybePauseWithLong:(jlong)bytes
                                                                    withLong:(jlong)curNS {
  return OrgApacheLuceneIndexMergeRateLimiter_maybePauseWithLong_withLong_(self, bytes, curNS);
}

- (void)checkAbort {
  @synchronized(self) {
    if (abort_) {
      @throw [new_OrgApacheLuceneIndexMergePolicy_MergeAbortedException_initWithNSString_(JreStrcat("$$", @"merge is aborted: ", [((OrgApacheLuceneIndexMergePolicy_OneMerge *) nil_chk(merge_)) segString])) autorelease];
    }
  }
}

- (void)setAbort {
  @synchronized(self) {
    abort_ = true;
    [self notify];
  }
}

- (jboolean)getAbort {
  @synchronized(self) {
    return abort_;
  }
}

- (jlong)getMinPauseCheckBytes {
  return minPauseCheckBytes_;
}

- (void)dealloc {
  RELEASE_(merge_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexMergePolicy_OneMerge:", "MergeRateLimiter", NULL, 0x1, NULL, NULL },
    { "setMBPerSecWithDouble:", "setMBPerSec", "V", 0x21, NULL, NULL },
    { "getMBPerSec", NULL, "D", 0x21, NULL, NULL },
    { "getTotalBytesWritten", NULL, "J", 0x1, NULL, NULL },
    { "pauseWithLong:", "pause", "J", 0x1, "Lorg.apache.lucene.index.MergePolicy$MergeAbortedException;", NULL },
    { "getTotalStoppedNS", NULL, "J", 0x21, NULL, NULL },
    { "getTotalPausedNS", NULL, "J", 0x21, NULL, NULL },
    { "maybePauseWithLong:withLong:", "maybePause", "Lorg.apache.lucene.index.MergeRateLimiter$PauseResult;", 0x22, "Lorg.apache.lucene.index.MergePolicy$MergeAbortedException;", NULL },
    { "checkAbort", NULL, "V", 0x21, "Lorg.apache.lucene.index.MergePolicy$MergeAbortedException;", NULL },
    { "setAbort", NULL, "V", 0x21, NULL, NULL },
    { "getAbort", NULL, "Z", 0x21, NULL, NULL },
    { "getMinPauseCheckBytes", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_PAUSE_CHECK_MSEC", "MIN_PAUSE_CHECK_MSEC", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexMergeRateLimiter_MIN_PAUSE_CHECK_MSEC },
    { "totalBytesWritten_", NULL, 0x40, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "mbPerSec_", NULL, 0x0, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "lastNS_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "minPauseCheckBytes_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "abort_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "totalPausedNS_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "totalStoppedNS_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "merge_", NULL, 0x10, "Lorg.apache.lucene.index.MergePolicy$OneMerge;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.MergeRateLimiter$PauseResult;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMergeRateLimiter = { 2, "MergeRateLimiter", "org.apache.lucene.index", NULL, 0x1, 12, methods, 9, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexMergeRateLimiter;
}

@end

void OrgApacheLuceneIndexMergeRateLimiter_initWithOrgApacheLuceneIndexMergePolicy_OneMerge_(OrgApacheLuceneIndexMergeRateLimiter *self, OrgApacheLuceneIndexMergePolicy_OneMerge *merge) {
  OrgApacheLuceneStoreRateLimiter_init(self);
  JreStrongAssign(&self->merge_, merge);
  [self setMBPerSecWithDouble:JavaLangDouble_POSITIVE_INFINITY];
}

OrgApacheLuceneIndexMergeRateLimiter *new_OrgApacheLuceneIndexMergeRateLimiter_initWithOrgApacheLuceneIndexMergePolicy_OneMerge_(OrgApacheLuceneIndexMergePolicy_OneMerge *merge) {
  OrgApacheLuceneIndexMergeRateLimiter *self = [OrgApacheLuceneIndexMergeRateLimiter alloc];
  OrgApacheLuceneIndexMergeRateLimiter_initWithOrgApacheLuceneIndexMergePolicy_OneMerge_(self, merge);
  return self;
}

OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *OrgApacheLuceneIndexMergeRateLimiter_maybePauseWithLong_withLong_(OrgApacheLuceneIndexMergeRateLimiter *self, jlong bytes, jlong curNS) {
  @synchronized(self) {
    [self checkAbort];
    jdouble secondsToPause = (bytes / 1024. / 1024.) / self->mbPerSec_;
    jlong targetNS = self->lastNS_ + JreFpToLong((1000000000 * secondsToPause));
    jlong curPauseNS = targetNS - curNS;
    if (curPauseNS <= 2000000) {
      return JreLoadStatic(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum, NO);
    }
    if (curPauseNS > 250LL * 1000000) {
      curPauseNS = 250LL * 1000000;
    }
    jint sleepMS = (jint) (curPauseNS / 1000000);
    jint sleepNS = (jint) (curPauseNS % 1000000);
    jdouble rate = self->mbPerSec_;
    @try {
      [self waitWithLong:sleepMS withInt:sleepNS];
    }
    @catch (JavaLangInterruptedException *ie) {
      @throw [new_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(ie) autorelease];
    }
    if (rate == 0.0) {
      return JreLoadStatic(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum, STOPPED);
    }
    else {
      return JreLoadStatic(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum, PAUSED);
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMergeRateLimiter)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum)

OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_[3];

@implementation OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values() {
  OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_ count:3 type:OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values();
}

+ (OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *e = OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum class]) {
    OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_NO = new_OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initWithNSString_withInt_(@"NO", 0);
    OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_STOPPED = new_OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initWithNSString_withInt_(@"STOPPED", 1);
    OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_PAUSED = new_OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initWithNSString_withInt_(@"PAUSED", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "NO", "NO", 0x4019, "Lorg.apache.lucene.index.MergeRateLimiter$PauseResult;", &OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_NO, NULL, .constantValue.asLong = 0 },
    { "STOPPED", "STOPPED", 0x4019, "Lorg.apache.lucene.index.MergeRateLimiter$PauseResult;", &OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_STOPPED, NULL, .constantValue.asLong = 0 },
    { "PAUSED", "PAUSED", 0x4019, "Lorg.apache.lucene.index.MergeRateLimiter$PauseResult;", &OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_PAUSED, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.index.MergeRateLimiter$PauseResult;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum = { 2, "PauseResult", "org.apache.lucene.index", "MergeRateLimiter", 0x401a, 0, NULL, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/index/MergeRateLimiter$PauseResult;>;" };
  return &_OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum;
}

@end

void OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initWithNSString_withInt_(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *new_OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum *self = [OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum alloc];
  OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum)
