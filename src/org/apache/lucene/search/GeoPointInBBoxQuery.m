//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/GeoPointInBBoxQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/GeoPointInBBoxQuery.h"
#include "org/apache/lucene/search/GeoPointInBBoxQueryImpl.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@implementation OrgApacheLuceneSearchGeoPointInBBoxQuery

- (instancetype)initWithNSString:(NSString *)field
                      withDouble:(jdouble)minLon
                      withDouble:(jdouble)minLat
                      withDouble:(jdouble)maxLon
                      withDouble:(jdouble)maxLat {
  OrgApacheLuceneSearchGeoPointInBBoxQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(self, field, minLon, minLat, maxLon, maxLat);
  return self;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  if (maxLon_ < minLon_) {
    OrgApacheLuceneSearchBooleanQuery_Builder *bq = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
    OrgApacheLuceneSearchGeoPointInBBoxQueryImpl *left = [new_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_initWithNSString_withDouble_withDouble_withDouble_withDouble_(field_, -180.0, minLat_, maxLon_, maxLat_) autorelease];
    [left setBoostWithFloat:[self getBoost]];
    [bq addWithOrgApacheLuceneSearchBooleanClause:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(left, JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
    OrgApacheLuceneSearchGeoPointInBBoxQueryImpl *right = [new_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_initWithNSString_withDouble_withDouble_withDouble_withDouble_(field_, minLon_, minLat_, 180.0, maxLat_) autorelease];
    [right setBoostWithFloat:[self getBoost]];
    [bq addWithOrgApacheLuceneSearchBooleanClause:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(right, JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
    return [bq build];
  }
  return [new_OrgApacheLuceneSearchGeoPointInBBoxQueryImpl_initWithNSString_withDouble_withDouble_withDouble_withDouble_(field_, minLon_, minLat_, maxLon_, maxLat_) autorelease];
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_init() autorelease];
  [sb appendWithNSString:[[self getClass] getSimpleName]];
  [sb appendWithChar:':'];
  if (![((NSString *) nil_chk(self->field_)) isEqual:field]) {
    [sb appendWithNSString:@" field="];
    [sb appendWithNSString:self->field_];
    [sb appendWithChar:':'];
  }
  return [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@" Lower Left: ["])) appendWithDouble:minLon_])) appendWithChar:','])) appendWithDouble:minLat_])) appendWithChar:']'])) appendWithNSString:@" Upper Right: ["])) appendWithDouble:maxLon_])) appendWithChar:','])) appendWithDouble:maxLat_])) appendWithNSString:@"]"])) appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])])) description];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (!([o isKindOfClass:[OrgApacheLuceneSearchGeoPointInBBoxQuery class]])) return false;
  if (![super isEqual:o]) return false;
  OrgApacheLuceneSearchGeoPointInBBoxQuery *that = (OrgApacheLuceneSearchGeoPointInBBoxQuery *) check_class_cast(o, [OrgApacheLuceneSearchGeoPointInBBoxQuery class]);
  if (JavaLangDouble_compareWithDouble_withDouble_(((OrgApacheLuceneSearchGeoPointInBBoxQuery *) nil_chk(that))->maxLat_, maxLat_) != 0) return false;
  if (JavaLangDouble_compareWithDouble_withDouble_(that->maxLon_, maxLon_) != 0) return false;
  if (JavaLangDouble_compareWithDouble_withDouble_(that->minLat_, minLat_) != 0) return false;
  if (JavaLangDouble_compareWithDouble_withDouble_(that->minLon_, minLon_) != 0) return false;
  if (![((NSString *) nil_chk(field_)) isEqual:that->field_]) return false;
  return true;
}

- (NSUInteger)hash {
  jint result = ((jint) [super hash]);
  jlong temp;
  result = 31 * result + ((jint) [((NSString *) nil_chk(field_)) hash]);
  temp = JavaLangDouble_doubleToLongBitsWithDouble_(minLon_);
  result = 31 * result + (jint) (temp ^ (JreURShift64(temp, 32)));
  temp = JavaLangDouble_doubleToLongBitsWithDouble_(minLat_);
  result = 31 * result + (jint) (temp ^ (JreURShift64(temp, 32)));
  temp = JavaLangDouble_doubleToLongBitsWithDouble_(maxLon_);
  result = 31 * result + (jint) (temp ^ (JreURShift64(temp, 32)));
  temp = JavaLangDouble_doubleToLongBitsWithDouble_(maxLat_);
  result = 31 * result + (jint) (temp ^ (JreURShift64(temp, 32)));
  return result;
}

- (NSString *)getField {
  return self->field_;
}

- (jdouble)getMinLon {
  return self->minLon_;
}

- (jdouble)getMinLat {
  return self->minLat_;
}

- (jdouble)getMaxLon {
  return self->maxLon_;
}

- (jdouble)getMaxLat {
  return self->maxLat_;
}

- (void)dealloc {
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withDouble:withDouble:withDouble:withDouble:", "GeoPointInBBoxQuery", NULL, 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "getField", NULL, "Ljava.lang.String;", 0x11, NULL, NULL },
    { "getMinLon", NULL, "D", 0x11, NULL, NULL },
    { "getMinLat", NULL, "D", 0x11, NULL, NULL },
    { "getMaxLon", NULL, "D", 0x11, NULL, NULL },
    { "getMaxLat", NULL, "D", 0x11, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x14, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "minLon_", NULL, 0x14, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "minLat_", NULL, 0x14, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "maxLon_", NULL, 0x14, "D", NULL, NULL, .constantValue.asLong = 0 },
    { "maxLat_", NULL, 0x14, "D", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGeoPointInBBoxQuery = { 2, "GeoPointInBBoxQuery", "org.apache.lucene.search", NULL, 0x1, 10, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchGeoPointInBBoxQuery;
}

@end

void OrgApacheLuceneSearchGeoPointInBBoxQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(OrgApacheLuceneSearchGeoPointInBBoxQuery *self, NSString *field, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssign(&self->field_, field);
  self->minLon_ = minLon;
  self->minLat_ = minLat;
  self->maxLon_ = maxLon;
  self->maxLat_ = maxLat;
}

OrgApacheLuceneSearchGeoPointInBBoxQuery *new_OrgApacheLuceneSearchGeoPointInBBoxQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(NSString *field, jdouble minLon, jdouble minLat, jdouble maxLon, jdouble maxLat) {
  OrgApacheLuceneSearchGeoPointInBBoxQuery *self = [OrgApacheLuceneSearchGeoPointInBBoxQuery alloc];
  OrgApacheLuceneSearchGeoPointInBBoxQuery_initWithNSString_withDouble_withDouble_withDouble_withDouble_(self, field, minLon, minLat, maxLon, maxLat);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGeoPointInBBoxQuery)
