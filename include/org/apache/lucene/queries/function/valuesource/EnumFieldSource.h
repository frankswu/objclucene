//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/EnumFieldSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_INCLUDE_ALL")
#if OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_RESTRICT
#define OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_RESTRICT

#if !defined (_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_) && (OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_

#define OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_RESTRICT 1
#define OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_INCLUDE 1
#include "org/apache/lucene/queries/function/valuesource/FieldCacheSource.h"

@class JavaLangInteger;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource : OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource {
 @public
  id<JavaUtilMap> enumIntToStringMap_;
  id<JavaUtilMap> enumStringToIntMap_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
                 withJavaUtilMap:(id<JavaUtilMap>)enumIntToStringMap
                 withJavaUtilMap:(id<JavaUtilMap>)enumStringToIntMap;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource, enumIntToStringMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource, enumStringToIntMap_, id<JavaUtilMap>)

FOUNDATION_EXPORT JavaLangInteger *OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_DEFAULT_VALUE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource, DEFAULT_VALUE_, JavaLangInteger *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_initWithNSString_withJavaUtilMap_withJavaUtilMap_(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource *self, NSString *field, id<JavaUtilMap> enumIntToStringMap, id<JavaUtilMap> enumStringToIntMap);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource *new_OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_initWithNSString_withJavaUtilMap_withJavaUtilMap_(NSString *field, id<JavaUtilMap> enumIntToStringMap, id<JavaUtilMap> enumStringToIntMap) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesFunctionValuesourceEnumFieldSource_INCLUDE_ALL")