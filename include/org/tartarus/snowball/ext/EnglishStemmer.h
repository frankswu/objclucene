//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/EnglishStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgTartarusSnowballExtEnglishStemmer_INCLUDE_ALL")
#if OrgTartarusSnowballExtEnglishStemmer_RESTRICT
#define OrgTartarusSnowballExtEnglishStemmer_INCLUDE_ALL 0
#else
#define OrgTartarusSnowballExtEnglishStemmer_INCLUDE_ALL 1
#endif
#undef OrgTartarusSnowballExtEnglishStemmer_RESTRICT

#if !defined (_OrgTartarusSnowballExtEnglishStemmer_) && (OrgTartarusSnowballExtEnglishStemmer_INCLUDE_ALL || OrgTartarusSnowballExtEnglishStemmer_INCLUDE)
#define _OrgTartarusSnowballExtEnglishStemmer_

#define OrgTartarusSnowballSnowballProgram_RESTRICT 1
#define OrgTartarusSnowballSnowballProgram_INCLUDE 1
#include "org/tartarus/snowball/SnowballProgram.h"

@interface OrgTartarusSnowballExtEnglishStemmer : OrgTartarusSnowballSnowballProgram

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)stem;

@end

J2OBJC_STATIC_INIT(OrgTartarusSnowballExtEnglishStemmer)

FOUNDATION_EXPORT void OrgTartarusSnowballExtEnglishStemmer_init(OrgTartarusSnowballExtEnglishStemmer *self);

FOUNDATION_EXPORT OrgTartarusSnowballExtEnglishStemmer *new_OrgTartarusSnowballExtEnglishStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgTartarusSnowballExtEnglishStemmer)

#endif

#pragma pop_macro("OrgTartarusSnowballExtEnglishStemmer_INCLUDE_ALL")