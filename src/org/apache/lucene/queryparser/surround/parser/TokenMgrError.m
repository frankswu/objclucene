//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/surround/parser/TokenMgrError.java
//

#include "J2ObjC_source.h"
#include "java/lang/Error.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/queryparser/surround/parser/TokenMgrError.h"

#define OrgApacheLuceneQueryparserSurroundParserTokenMgrError_serialVersionUID 1LL

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserSurroundParserTokenMgrError, serialVersionUID, jlong)

@implementation OrgApacheLuceneQueryparserSurroundParserTokenMgrError

+ (NSString *)addEscapesWithNSString:(NSString *)str {
  return OrgApacheLuceneQueryparserSurroundParserTokenMgrError_addEscapesWithNSString_(str);
}

+ (NSString *)LexicalErrorWithBoolean:(jboolean)EOFSeen
                              withInt:(jint)lexState
                              withInt:(jint)errorLine
                              withInt:(jint)errorColumn
                         withNSString:(NSString *)errorAfter
                             withChar:(jchar)curChar {
  return OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar);
}

- (NSString *)getMessage {
  return [super getMessage];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)message
                         withInt:(jint)reason {
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(self, message, reason);
  return self;
}

- (instancetype)initWithBoolean:(jboolean)EOFSeen
                        withInt:(jint)lexState
                        withInt:(jint)errorLine
                        withInt:(jint)errorColumn
                   withNSString:(NSString *)errorAfter
                       withChar:(jchar)curChar
                        withInt:(jint)reason {
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(self, EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar, reason);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addEscapesWithNSString:", "addEscapes", "Ljava.lang.String;", 0x1c, NULL, NULL },
    { "LexicalErrorWithBoolean:withInt:withInt:withInt:withNSString:withChar:", "LexicalError", "Ljava.lang.String;", 0xc, NULL, NULL },
    { "getMessage", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", "TokenMgrError", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withInt:", "TokenMgrError", NULL, 0x1, NULL, NULL },
    { "initWithBoolean:withInt:withInt:withInt:withNSString:withChar:withInt:", "TokenMgrError", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneQueryparserSurroundParserTokenMgrError_serialVersionUID },
    { "LEXICAL_ERROR", "LEXICAL_ERROR", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LEXICAL_ERROR },
    { "STATIC_LEXER_ERROR", "STATIC_LEXER_ERROR", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserSurroundParserTokenMgrError_STATIC_LEXER_ERROR },
    { "INVALID_LEXICAL_STATE", "INVALID_LEXICAL_STATE", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserSurroundParserTokenMgrError_INVALID_LEXICAL_STATE },
    { "LOOP_DETECTED", "LOOP_DETECTED", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LOOP_DETECTED },
    { "errorCode_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserSurroundParserTokenMgrError = { 2, "TokenMgrError", "org.apache.lucene.queryparser.surround.parser", NULL, 0x1, 6, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserSurroundParserTokenMgrError;
}

@end

NSString *OrgApacheLuceneQueryparserSurroundParserTokenMgrError_addEscapesWithNSString_(NSString *str) {
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initialize();
  JavaLangStringBuilder *retval = [new_JavaLangStringBuilder_init() autorelease];
  jchar ch;
  for (jint i = 0; i < ((jint) [((NSString *) nil_chk(str)) length]); i++) {
    switch ([str charAtWithInt:i]) {
      case 0:
      continue;
      case 0x0008:
      [retval appendWithNSString:@"\\b"];
      continue;
      case 0x0009:
      [retval appendWithNSString:@"\\t"];
      continue;
      case 0x000a:
      [retval appendWithNSString:@"\\n"];
      continue;
      case 0x000c:
      [retval appendWithNSString:@"\\f"];
      continue;
      case 0x000d:
      [retval appendWithNSString:@"\\r"];
      continue;
      case '"':
      [retval appendWithNSString:@"\\\""];
      continue;
      case '\'':
      [retval appendWithNSString:@"\\'"];
      continue;
      case '\\':
      [retval appendWithNSString:@"\\\\"];
      continue;
      default:
      if ((ch = [str charAtWithInt:i]) < (jint) 0x20 || ch > (jint) 0x7e) {
        NSString *s = JreStrcat("$$", @"0000", JavaLangInteger_toStringWithInt_withInt_(ch, 16));
        [retval appendWithNSString:JreStrcat("$$", @"\\u", [s substring:((jint) [s length]) - 4 endIndex:((jint) [s length])])];
      }
      else {
        [retval appendWithChar:ch];
      }
      continue;
    }
  }
  return [retval description];
}

NSString *OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar) {
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initialize();
  return (JreStrcat("$I$I$$$$C", @"Lexical error at line ", errorLine, @", column ", errorColumn, @".  Encountered: ", (EOFSeen ? @"<EOF> " : JreStrcat("$$I$", (JreStrcat("C$C", '"', OrgApacheLuceneQueryparserSurroundParserTokenMgrError_addEscapesWithNSString_(NSString_valueOfChar_(curChar)), '"')), @" (", (jint) curChar, @"), ")), @"after : \"", OrgApacheLuceneQueryparserSurroundParserTokenMgrError_addEscapesWithNSString_(errorAfter), '"'));
}

void OrgApacheLuceneQueryparserSurroundParserTokenMgrError_init(OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self) {
  JavaLangError_init(self);
}

OrgApacheLuceneQueryparserSurroundParserTokenMgrError *new_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_init() {
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self = [OrgApacheLuceneQueryparserSurroundParserTokenMgrError alloc];
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError_init(self);
  return self;
}

void OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self, NSString *message, jint reason) {
  JavaLangError_initWithNSString_(self, message);
  self->errorCode_ = reason;
}

OrgApacheLuceneQueryparserSurroundParserTokenMgrError *new_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason) {
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self = [OrgApacheLuceneQueryparserSurroundParserTokenMgrError alloc];
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(self, message, reason);
  return self;
}

void OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self, jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) {
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithNSString_withInt_(self, OrgApacheLuceneQueryparserSurroundParserTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar), reason);
}

OrgApacheLuceneQueryparserSurroundParserTokenMgrError *new_OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) {
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError *self = [OrgApacheLuceneQueryparserSurroundParserTokenMgrError alloc];
  OrgApacheLuceneQueryparserSurroundParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(self, EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar, reason);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserSurroundParserTokenMgrError)
