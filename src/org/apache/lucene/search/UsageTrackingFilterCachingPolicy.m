//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/UsageTrackingFilterCachingPolicy.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/FilterCachingPolicy.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/QueryWrapperFilter.h"
#include "org/apache/lucene/search/UsageTrackingFilterCachingPolicy.h"
#include "org/apache/lucene/util/FrequencyTrackingRingBuffer.h"

#define OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_SENTINEL ((jint) 0x80000000)

@interface OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy () {
 @public
  OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments *segmentPolicy_;
  OrgApacheLuceneUtilFrequencyTrackingRingBuffer *recentlyUsedFilters_;
  jint minFrequencyCostlyFilters_;
  jint minFrequencyCheapFilters_;
  jint minFrequencyOtherFilters_;
}

- (instancetype)initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments:(OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments *)segmentPolicy
                                                                              withInt:(jint)historySize
                                                                              withInt:(jint)minFrequencyCostlyFilters
                                                                              withInt:(jint)minFrequencyCheapFilters
                                                                              withInt:(jint)minFrequencyOtherFilters;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy, segmentPolicy_, OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy, recentlyUsedFilters_, OrgApacheLuceneUtilFrequencyTrackingRingBuffer *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy, SENTINEL, jint)

__attribute__((unused)) static void OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments_withInt_withInt_withInt_withInt_(OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *self, OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments *segmentPolicy, jint historySize, jint minFrequencyCostlyFilters, jint minFrequencyCheapFilters, jint minFrequencyOtherFilters);

__attribute__((unused)) static OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *new_OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments_withInt_withInt_withInt_withInt_(OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments *segmentPolicy, jint historySize, jint minFrequencyCostlyFilters, jint minFrequencyCheapFilters, jint minFrequencyOtherFilters) NS_RETURNS_RETAINED;

@implementation OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy

+ (jboolean)isCostlyWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter {
  return OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_isCostlyWithOrgApacheLuceneSearchFilter_(filter);
}

+ (jboolean)isCheapToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)set {
  return OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_isCheapToCacheWithOrgApacheLuceneSearchDocIdSet_(set);
}

- (instancetype)initWithFloat:(jfloat)minSizeRatio
                      withInt:(jint)historySize
                      withInt:(jint)minFrequencyCostlyFilters
                      withInt:(jint)minFrequencyCheapFilters
                      withInt:(jint)minFrequencyOtherFilters {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithFloat_withInt_withInt_withInt_withInt_(self, minSizeRatio, historySize, minFrequencyCostlyFilters, minFrequencyCheapFilters, minFrequencyOtherFilters);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments:(OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments *)segmentPolicy
                                                                              withInt:(jint)historySize
                                                                              withInt:(jint)minFrequencyCostlyFilters
                                                                              withInt:(jint)minFrequencyCheapFilters
                                                                              withInt:(jint)minFrequencyOtherFilters {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments_withInt_withInt_withInt_withInt_(self, segmentPolicy, historySize, minFrequencyCostlyFilters, minFrequencyCheapFilters, minFrequencyOtherFilters);
  return self;
}

- (void)onUseWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter {
  @synchronized(self) {
    [((OrgApacheLuceneUtilFrequencyTrackingRingBuffer *) nil_chk(recentlyUsedFilters_)) addWithInt:((jint) [((OrgApacheLuceneSearchFilter *) nil_chk(filter)) hash])];
  }
}

- (jboolean)shouldCacheWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
             withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                     withOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)set {
  if ([((OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments *) nil_chk(segmentPolicy_)) shouldCacheWithOrgApacheLuceneSearchFilter:filter withOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneSearchDocIdSet:set] == false) {
    return false;
  }
  jint frequency;
  @synchronized(self) {
    frequency = [((OrgApacheLuceneUtilFrequencyTrackingRingBuffer *) nil_chk(recentlyUsedFilters_)) frequencyWithInt:((jint) [((OrgApacheLuceneSearchFilter *) nil_chk(filter)) hash])];
  }
  if (frequency >= minFrequencyOtherFilters_) {
    return true;
  }
  else if (OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_isCostlyWithOrgApacheLuceneSearchFilter_(filter) && frequency >= minFrequencyCostlyFilters_) {
    return true;
  }
  else if (OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_isCheapToCacheWithOrgApacheLuceneSearchDocIdSet_(set) && frequency >= minFrequencyCheapFilters_) {
    return true;
  }
  return false;
}

- (void)dealloc {
  RELEASE_(segmentPolicy_);
  RELEASE_(recentlyUsedFilters_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "isCostlyWithOrgApacheLuceneSearchFilter:", "isCostly", "Z", 0x8, NULL, NULL },
    { "isCheapToCacheWithOrgApacheLuceneSearchDocIdSet:", "isCheapToCache", "Z", 0x8, NULL, NULL },
    { "initWithFloat:withInt:withInt:withInt:withInt:", "UsageTrackingFilterCachingPolicy", NULL, 0x1, NULL, NULL },
    { "init", "UsageTrackingFilterCachingPolicy", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments:withInt:withInt:withInt:withInt:", "UsageTrackingFilterCachingPolicy", NULL, 0x2, NULL, NULL },
    { "onUseWithOrgApacheLuceneSearchFilter:", "onUse", "V", 0x1, NULL, NULL },
    { "shouldCacheWithOrgApacheLuceneSearchFilter:withOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneSearchDocIdSet:", "shouldCache", "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SENTINEL", "SENTINEL", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_SENTINEL },
    { "segmentPolicy_", NULL, 0x12, "Lorg.apache.lucene.search.FilterCachingPolicy$CacheOnLargeSegments;", NULL, NULL, .constantValue.asLong = 0 },
    { "recentlyUsedFilters_", NULL, 0x12, "Lorg.apache.lucene.util.FrequencyTrackingRingBuffer;", NULL, NULL, .constantValue.asLong = 0 },
    { "minFrequencyCostlyFilters_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minFrequencyCheapFilters_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minFrequencyOtherFilters_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy = { 2, "UsageTrackingFilterCachingPolicy", "org.apache.lucene.search", NULL, 0x11, 7, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy;
}

@end

jboolean OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_isCostlyWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initialize();
  return [filter isKindOfClass:[OrgApacheLuceneSearchQueryWrapperFilter class]] && [[((OrgApacheLuceneSearchQueryWrapperFilter *) nil_chk(((OrgApacheLuceneSearchQueryWrapperFilter *) check_class_cast(filter, [OrgApacheLuceneSearchQueryWrapperFilter class])))) getQuery] isKindOfClass:[OrgApacheLuceneSearchMultiTermQuery class]];
}

jboolean OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_isCheapToCacheWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchDocIdSet *set) {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initialize();
  return set == nil || [set isCacheable];
}

void OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithFloat_withInt_withInt_withInt_withInt_(OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *self, jfloat minSizeRatio, jint historySize, jint minFrequencyCostlyFilters, jint minFrequencyCheapFilters, jint minFrequencyOtherFilters) {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments_withInt_withInt_withInt_withInt_(self, [new_OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments_initWithFloat_(minSizeRatio) autorelease], historySize, minFrequencyCostlyFilters, minFrequencyCheapFilters, minFrequencyOtherFilters);
}

OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *new_OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithFloat_withInt_withInt_withInt_withInt_(jfloat minSizeRatio, jint historySize, jint minFrequencyCostlyFilters, jint minFrequencyCheapFilters, jint minFrequencyOtherFilters) {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *self = [OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy alloc];
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithFloat_withInt_withInt_withInt_withInt_(self, minSizeRatio, historySize, minFrequencyCostlyFilters, minFrequencyCheapFilters, minFrequencyOtherFilters);
  return self;
}

void OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_init(OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *self) {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments_withInt_withInt_withInt_withInt_(self, JreLoadStatic(OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments, DEFAULT_), 256, 2, 2, 5);
}

OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *new_OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_init() {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *self = [OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy alloc];
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_init(self);
  return self;
}

void OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments_withInt_withInt_withInt_withInt_(OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *self, OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments *segmentPolicy, jint historySize, jint minFrequencyCostlyFilters, jint minFrequencyCheapFilters, jint minFrequencyOtherFilters) {
  NSObject_init(self);
  JreStrongAssign(&self->segmentPolicy_, segmentPolicy);
  if (minFrequencyOtherFilters < minFrequencyCheapFilters || minFrequencyOtherFilters < minFrequencyCheapFilters) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"it does not make sense to cache regular filters more aggressively than filters that are costly to produce or cheap to cache") autorelease];
  }
  if (minFrequencyCheapFilters > historySize || minFrequencyCostlyFilters > historySize || minFrequencyOtherFilters > historySize) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"The minimum frequencies should be less than the size of the history of filters that are being tracked") autorelease];
  }
  JreStrongAssignAndConsume(&self->recentlyUsedFilters_, new_OrgApacheLuceneUtilFrequencyTrackingRingBuffer_initWithInt_withInt_(historySize, OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_SENTINEL));
  self->minFrequencyCostlyFilters_ = minFrequencyCostlyFilters;
  self->minFrequencyCheapFilters_ = minFrequencyCheapFilters;
  self->minFrequencyOtherFilters_ = minFrequencyOtherFilters;
}

OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *new_OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments_withInt_withInt_withInt_withInt_(OrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments *segmentPolicy, jint historySize, jint minFrequencyCostlyFilters, jint minFrequencyCheapFilters, jint minFrequencyOtherFilters) {
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy *self = [OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy alloc];
  OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy_initWithOrgApacheLuceneSearchFilterCachingPolicy_CacheOnLargeSegments_withInt_withInt_withInt_withInt_(self, segmentPolicy, historySize, minFrequencyCostlyFilters, minFrequencyCheapFilters, minFrequencyOtherFilters);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchUsageTrackingFilterCachingPolicy)
