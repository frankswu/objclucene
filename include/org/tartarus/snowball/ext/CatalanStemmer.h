//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/CatalanStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgTartarusSnowballExtCatalanStemmer_INCLUDE_ALL")
#if OrgTartarusSnowballExtCatalanStemmer_RESTRICT
#define OrgTartarusSnowballExtCatalanStemmer_INCLUDE_ALL 0
#else
#define OrgTartarusSnowballExtCatalanStemmer_INCLUDE_ALL 1
#endif
#undef OrgTartarusSnowballExtCatalanStemmer_RESTRICT

#if !defined (_OrgTartarusSnowballExtCatalanStemmer_) && (OrgTartarusSnowballExtCatalanStemmer_INCLUDE_ALL || OrgTartarusSnowballExtCatalanStemmer_INCLUDE)
#define _OrgTartarusSnowballExtCatalanStemmer_

#define OrgTartarusSnowballSnowballProgram_RESTRICT 1
#define OrgTartarusSnowballSnowballProgram_INCLUDE 1
#include "org/tartarus/snowball/SnowballProgram.h"

@interface OrgTartarusSnowballExtCatalanStemmer : OrgTartarusSnowballSnowballProgram

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)stem;

@end

J2OBJC_STATIC_INIT(OrgTartarusSnowballExtCatalanStemmer)

FOUNDATION_EXPORT void OrgTartarusSnowballExtCatalanStemmer_init(OrgTartarusSnowballExtCatalanStemmer *self);

FOUNDATION_EXPORT OrgTartarusSnowballExtCatalanStemmer *new_OrgTartarusSnowballExtCatalanStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgTartarusSnowballExtCatalanStemmer)

#endif

#pragma pop_macro("OrgTartarusSnowballExtCatalanStemmer_INCLUDE_ALL")