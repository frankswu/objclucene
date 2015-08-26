//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/parser/TokenMgrError.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserSurroundParserTokenMgrError_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserSurroundParserTokenMgrError_RESTRICT
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserSurroundParserTokenMgrError_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_) && (OrgApacheLuceneQueryparserSurroundParserTokenMgrError_INCLUDE_ALL || OrgApacheLuceneQueryparserSurroundParserTokenMgrError_INCLUDE)
#define _OrgApacheLuceneQueryparserSurroundParserTokenMgrError_

#define JavaLangError_RESTRICT 1
#define JavaLangError_INCLUDE 1
#include "java/lang/Error.h"

#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LEXICAL_ERROR 0
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_STATIC_LEXER_ERROR 1
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_INVALID_LEXICAL_STATE 2
#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LOOP_DETECTED 3

@interface OrgApacheLuceneQueryparserSurroundParserTokenMgrError : JavaLangError {
 @public
  jint errorCode_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithBoolean:(jboolean)EOFSeen
                        withInt:(jint)lexState
                        withInt:(jint)errorLine
                        withInt:(jint)errorColumn
                   withNSString:(NSString *)errorAfter
                       withChar:(jchar)curChar
                        withInt:(jint)reason;

- (instancetype)initWithNSString:(NSString *)message
                         withInt:(jint)reason;

- (NSString *)getMessage;

#pragma mark Protected

+ (NSString *)addEscapesWithNSString:(NSString *)str;

+ (NSString *)LexicalErrorWithBoolean:(jboolean)EOFSeen
                              withInt:(jint)lexState
                              withInt:(jint)errorLine
                              withInt:(jint)errorColumn
                         withNSString:(NSString *)errorAfter
                             withChar:(jchar)curChar;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserSurroundParserTokenMgrError)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserSurroundParserTokenMgrError, LEXICAL_ERROR, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserSurroundParserTokenMgrError, STATIC_LEXER_ERROR, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserSurroundParserTokenMgrError, INVALID_LEXICAL_STATE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserSurroundParserTokenMgrError, LOOP_DETECTED, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserSurroundParserTokenMgrError_addEscapesWithNSString_(NSString *str);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserTokenMgrError_init(OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserTokenMgrError *new_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self, NSString *message, jint reason);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserTokenMgrError *new_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self, jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserSurroundParserTokenMgrError *new_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserSurroundParserTokenMgrError)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserSurroundParserTokenMgrError_INCLUDE_ALL")