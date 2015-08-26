//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/similarities/AfterEffect.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/similarities/AfterEffect.h"
#include "org/apache/lucene/search/similarities/BasicStats.h"

@implementation OrgApacheLuceneSearchSimilaritiesAfterEffect

- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesAfterEffect_init(self);
  return self;
}

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                                                   withFloat:(jfloat)tfn {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "AfterEffect", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "score", "F", 0x401, NULL, NULL },
    { "explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x401, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x401, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.similarities.AfterEffect$NoAfterEffect;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesAfterEffect = { 2, "AfterEffect", "org.apache.lucene.search.similarities", NULL, 0x401, 4, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesAfterEffect;
}

@end

void OrgApacheLuceneSearchSimilaritiesAfterEffect_init(OrgApacheLuceneSearchSimilaritiesAfterEffect *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesAfterEffect)

@implementation OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect

- (instancetype)init {
  OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect_init(self);
  return self;
}

- (jfloat)scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                     withFloat:(jfloat)tfn {
  return 1.0f;
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:(OrgApacheLuceneSearchSimilaritiesBasicStats *)stats
                                                                                   withFloat:(jfloat)tfn {
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(1, @"no aftereffect", [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]);
}

- (NSString *)description {
  return @"";
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NoAfterEffect", NULL, 0x1, NULL, NULL },
    { "scoreWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "score", "F", 0x11, NULL, NULL },
    { "explainWithOrgApacheLuceneSearchSimilaritiesBasicStats:withFloat:", "explain", "Lorg.apache.lucene.search.Explanation;", 0x11, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect = { 2, "NoAfterEffect", "org.apache.lucene.search.similarities", "AfterEffect", 0x19, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect;
}

@end

void OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect_init(OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect *self) {
  OrgApacheLuceneSearchSimilaritiesAfterEffect_init(self);
}

OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect *new_OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect_init() {
  OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect *self = [OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect alloc];
  OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilaritiesAfterEffect_NoAfterEffect)