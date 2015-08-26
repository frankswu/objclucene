//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/AbstractAnalysisFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/Reader.h"
#include "java/lang/Boolean.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/nio/charset/Charset.h"
#include "java/nio/charset/CharsetDecoder.h"
#include "java/nio/charset/CodingErrorAction.h"
#include "java/text/ParseException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "java/util/regex/PatternSyntaxException.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/WordlistLoader.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

@interface OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory () {
 @public
  id<JavaUtilMap> originalArgs_;
  jboolean isExplicitLuceneMatchVersion_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, originalArgs_, id<JavaUtilMap>)

static JavaUtilRegexPattern *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, ITEM_PATTERN_, JavaUtilRegexPattern *)

static NSString *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME_ = @"class";
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, CLASS_NAME_, NSString *)

__attribute__((unused)) static id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<OrgApacheLuceneAnalysisUtilResourceLoader> loader, NSString *resource);

__attribute__((unused)) static id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, NSString *fileNames);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)

NSString *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM_ = @"luceneMatchVersion";

@implementation OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (id<JavaUtilMap>)getOriginalArgs {
  return originalArgs_;
}

- (OrgApacheLuceneUtilVersion *)getLuceneMatchVersion {
  return self->luceneMatchVersion_;
}

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Configuration Error: missing parameter '", name, '\'')) autorelease];
  }
  return s;
}

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name
              withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues {
  return [self requireWithJavaUtilMap:args withNSString:name withJavaUtilCollection:allowedValues withBoolean:YES];
}

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name
              withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                         withBoolean:(jboolean)caseSensitive {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Configuration Error: missing parameter '", name, '\'')) autorelease];
  }
  else {
    for (NSString * __strong allowedValue in nil_chk(allowedValues)) {
      if (caseSensitive) {
        if ([s isEqual:allowedValue]) {
          return s;
        }
      }
      else {
        if ([s equalsIgnoreCase:allowedValue]) {
          return s;
        }
      }
    }
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@", @"Configuration Error: '", name, @"' value must be one of ", allowedValues)) autorelease];
  }
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name {
  return [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
                    withNSString:(NSString *)defaultVal {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  return s == nil ? defaultVal : s;
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues {
  return [self getWithJavaUtilMap:args withNSString:name withJavaUtilCollection:allowedValues withNSString:nil];
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                    withNSString:(NSString *)defaultVal {
  return [self getWithJavaUtilMap:args withNSString:name withJavaUtilCollection:allowedValues withNSString:defaultVal withBoolean:YES];
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                    withNSString:(NSString *)defaultVal
                     withBoolean:(jboolean)caseSensitive {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    return defaultVal;
  }
  else {
    for (NSString * __strong allowedValue in nil_chk(allowedValues)) {
      if (caseSensitive) {
        if ([s isEqual:allowedValue]) {
          return s;
        }
      }
      else {
        if ([s equalsIgnoreCase:allowedValue]) {
          return s;
        }
      }
    }
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@", @"Configuration Error: '", name, @"' value must be one of ", allowedValues)) autorelease];
  }
}

- (jint)requireIntWithJavaUtilMap:(id<JavaUtilMap>)args
                     withNSString:(NSString *)name {
  return JavaLangInteger_parseIntWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
}

- (jint)getIntWithJavaUtilMap:(id<JavaUtilMap>)args
                 withNSString:(NSString *)name
                      withInt:(jint)defaultVal {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  return s == nil ? defaultVal : JavaLangInteger_parseIntWithNSString_(s);
}

- (jboolean)requireBooleanWithJavaUtilMap:(id<JavaUtilMap>)args
                             withNSString:(NSString *)name {
  return JavaLangBoolean_parseBooleanWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
}

- (jboolean)getBooleanWithJavaUtilMap:(id<JavaUtilMap>)args
                         withNSString:(NSString *)name
                          withBoolean:(jboolean)defaultVal {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  return s == nil ? defaultVal : JavaLangBoolean_parseBooleanWithNSString_(s);
}

- (jfloat)requireFloatWithJavaUtilMap:(id<JavaUtilMap>)args
                         withNSString:(NSString *)name {
  return JavaLangFloat_parseFloatWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
}

- (jfloat)getFloatWithJavaUtilMap:(id<JavaUtilMap>)args
                     withNSString:(NSString *)name
                        withFloat:(jfloat)defaultVal {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  return s == nil ? defaultVal : JavaLangFloat_parseFloatWithNSString_(s);
}

- (jchar)requireCharWithJavaUtilMap:(id<JavaUtilMap>)args
                       withNSString:(NSString *)name {
  return [((NSString *) nil_chk([self requireWithJavaUtilMap:args withNSString:name])) charAtWithInt:0];
}

- (jchar)getCharWithJavaUtilMap:(id<JavaUtilMap>)args
                   withNSString:(NSString *)name
                       withChar:(jchar)defaultValue {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    return defaultValue;
  }
  else {
    if (((jint) [s length]) != 1) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$", name, @" should be a char. \"", s, @"\" is invalid")) autorelease];
    }
    else {
      return [s charAtWithInt:0];
    }
  }
}

- (id<JavaUtilSet>)getSetWithJavaUtilMap:(id<JavaUtilMap>)args
                            withNSString:(NSString *)name {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    return nil;
  }
  else {
    id<JavaUtilSet> set = nil;
    JavaUtilRegexMatcher *matcher = [((JavaUtilRegexPattern *) nil_chk(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN_)) matcherWithJavaLangCharSequence:s];
    if ([((JavaUtilRegexMatcher *) nil_chk(matcher)) find]) {
      set = [new_JavaUtilHashSet_init() autorelease];
      [set addWithId:[matcher groupWithInt:0]];
      while ([matcher find]) {
        [set addWithId:[matcher groupWithInt:0]];
      }
    }
    return set;
  }
}

- (JavaUtilRegexPattern *)getPatternWithJavaUtilMap:(id<JavaUtilMap>)args
                                       withNSString:(NSString *)name {
  @try {
    return JavaUtilRegexPattern_compileWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
  }
  @catch (JavaUtilRegexPatternSyntaxException *e) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$$$", @"Configuration Error: '", name, @"' can not be parsed in ", [[self getClass] getSimpleName]), e) autorelease];
  }
}

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                        withNSString:(NSString *)wordFiles
                                                                                         withBoolean:(jboolean)ignoreCase {
  id<JavaUtilList> files = OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(self, wordFiles);
  OrgApacheLuceneAnalysisUtilCharArraySet *words = nil;
  if ([((id<JavaUtilList>) nil_chk(files)) size] > 0) {
    words = [new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_([files size] * 10, ignoreCase) autorelease];
    for (NSString * __strong file in files) {
      id<JavaUtilList> wlist = OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(self, loader, [((NSString *) nil_chk(file)) trim]);
      [words addAllWithJavaUtilCollection:OrgApacheLuceneAnalysisCoreStopFilter_makeStopSetWithJavaUtilList_withBoolean_(wlist, ignoreCase)];
    }
  }
  return words;
}

- (id<JavaUtilList>)getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                             withNSString:(NSString *)resource {
  return OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(self, loader, resource);
}

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getSnowballWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                                withNSString:(NSString *)wordFiles
                                                                                                 withBoolean:(jboolean)ignoreCase {
  id<JavaUtilList> files = OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(self, wordFiles);
  OrgApacheLuceneAnalysisUtilCharArraySet *words = nil;
  if ([((id<JavaUtilList>) nil_chk(files)) size] > 0) {
    words = [new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_([files size] * 10, ignoreCase) autorelease];
    for (NSString * __strong file in files) {
      JavaIoInputStream *stream = nil;
      JavaIoReader *reader = nil;
      @try {
        stream = [((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:[((NSString *) nil_chk(file)) trim]];
        JavaNioCharsetCharsetDecoder *decoder = [((JavaNioCharsetCharsetDecoder *) nil_chk([((JavaNioCharsetCharsetDecoder *) nil_chk([((JavaNioCharsetCharset *) nil_chk(JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8_))) newDecoder])) onMalformedInputWithJavaNioCharsetCodingErrorAction:JreLoadStatic(JavaNioCharsetCodingErrorAction, REPORT_)])) onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JreLoadStatic(JavaNioCharsetCodingErrorAction, REPORT_)];
        reader = [new_JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharsetDecoder_(stream, decoder) autorelease];
        OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, words);
      }
      @finally {
        OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ reader, stream } count:2 type:JavaIoCloseable_class_()]);
      }
    }
  }
  return words;
}

- (id<JavaUtilList>)splitFileNamesWithNSString:(NSString *)fileNames {
  return OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(self, fileNames);
}

- (NSString *)getClassArg {
  if (nil != originalArgs_) {
    NSString *className_ = [originalArgs_ getWithId:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME_];
    if (nil != className_) {
      return className_;
    }
  }
  return [[self getClass] getName];
}

- (jboolean)isExplicitLuceneMatchVersion {
  return isExplicitLuceneMatchVersion_;
}

- (void)setExplicitLuceneMatchVersionWithBoolean:(jboolean)isExplicitLuceneMatchVersion {
  self->isExplicitLuceneMatchVersion_ = isExplicitLuceneMatchVersion;
}

- (void)dealloc {
  RELEASE_(originalArgs_);
  RELEASE_(luceneMatchVersion_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN_, JavaUtilRegexPattern_compileWithNSString_(@"[^,\\s]+"));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "AbstractAnalysisFactory", NULL, 0x4, NULL, NULL },
    { "getOriginalArgs", NULL, "Ljava.util.Map;", 0x11, NULL, NULL },
    { "getLuceneMatchVersion", NULL, "Lorg.apache.lucene.util.Version;", 0x11, NULL, NULL },
    { "requireWithJavaUtilMap:withNSString:", "require", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "requireWithJavaUtilMap:withNSString:withJavaUtilCollection:", "require", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "requireWithJavaUtilMap:withNSString:withJavaUtilCollection:withBoolean:", "require", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getWithJavaUtilMap:withNSString:", "get", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getWithJavaUtilMap:withNSString:withNSString:", "get", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getWithJavaUtilMap:withNSString:withJavaUtilCollection:", "get", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getWithJavaUtilMap:withNSString:withJavaUtilCollection:withNSString:", "get", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getWithJavaUtilMap:withNSString:withJavaUtilCollection:withNSString:withBoolean:", "get", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "requireIntWithJavaUtilMap:withNSString:", "requireInt", "I", 0x14, NULL, NULL },
    { "getIntWithJavaUtilMap:withNSString:withInt:", "getInt", "I", 0x14, NULL, NULL },
    { "requireBooleanWithJavaUtilMap:withNSString:", "requireBoolean", "Z", 0x14, NULL, NULL },
    { "getBooleanWithJavaUtilMap:withNSString:withBoolean:", "getBoolean", "Z", 0x14, NULL, NULL },
    { "requireFloatWithJavaUtilMap:withNSString:", "requireFloat", "F", 0x14, NULL, NULL },
    { "getFloatWithJavaUtilMap:withNSString:withFloat:", "getFloat", "F", 0x14, NULL, NULL },
    { "requireCharWithJavaUtilMap:withNSString:", "requireChar", "C", 0x1, NULL, NULL },
    { "getCharWithJavaUtilMap:withNSString:withChar:", "getChar", "C", 0x1, NULL, NULL },
    { "getSetWithJavaUtilMap:withNSString:", "getSet", "Ljava.util.Set;", 0x1, NULL, NULL },
    { "getPatternWithJavaUtilMap:withNSString:", "getPattern", "Ljava.util.regex.Pattern;", 0x14, NULL, NULL },
    { "getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:withNSString:withBoolean:", "getWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x14, "Ljava.io.IOException;", NULL },
    { "getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:withNSString:", "getLines", "Ljava.util.List;", 0x14, "Ljava.io.IOException;", NULL },
    { "getSnowballWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:withNSString:withBoolean:", "getSnowballWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x14, "Ljava.io.IOException;", NULL },
    { "splitFileNamesWithNSString:", "splitFileNames", "Ljava.util.List;", 0x14, NULL, NULL },
    { "getClassArg", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isExplicitLuceneMatchVersion", NULL, "Z", 0x1, NULL, NULL },
    { "setExplicitLuceneMatchVersionWithBoolean:", "setExplicitLuceneMatchVersion", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LUCENE_MATCH_VERSION_PARAM_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM_, NULL, .constantValue.asLong = 0 },
    { "originalArgs_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", .constantValue.asLong = 0 },
    { "luceneMatchVersion_", NULL, 0x14, "Lorg.apache.lucene.util.Version;", NULL, NULL, .constantValue.asLong = 0 },
    { "isExplicitLuceneMatchVersion_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "ITEM_PATTERN_", NULL, 0x1a, "Ljava.util.regex.Pattern;", &OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN_, NULL, .constantValue.asLong = 0 },
    { "CLASS_NAME_", NULL, 0x1a, "Ljava.lang.String;", &OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory = { 2, "AbstractAnalysisFactory", "org.apache.lucene.analysis.util", NULL, 0x401, 28, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
}

@end

void OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<JavaUtilMap> args) {
  NSObject_init(self);
  self->isExplicitLuceneMatchVersion_ = NO;
  JreStrongAssign(&self->originalArgs_, JavaUtilCollections_unmodifiableMapWithJavaUtilMap_([new_JavaUtilHashMap_initWithJavaUtilMap_(args) autorelease]));
  NSString *version_ = [self getWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM_];
  if (version_ == nil) {
    JreStrongAssign(&self->luceneMatchVersion_, JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST_));
  }
  else {
    @try {
      JreStrongAssign(&self->luceneMatchVersion_, OrgApacheLuceneUtilVersion_parseLenientlyWithNSString_(version_));
    }
    @catch (JavaTextParseException *pe) {
      @throw [new_JavaLangIllegalArgumentException_initWithJavaLangThrowable_(pe) autorelease];
    }
  }
  [((id<JavaUtilMap>) nil_chk(args)) removeWithId:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME_];
}

id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<OrgApacheLuceneAnalysisUtilResourceLoader> loader, NSString *resource) {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getLinesWithJavaIoInputStream_withJavaNioCharsetCharset_([((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:resource], JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8_));
}

id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, NSString *fileNames) {
  if (fileNames == nil) return JavaUtilCollections_emptyList();
  id<JavaUtilList> result = [new_JavaUtilArrayList_init() autorelease];
  {
    IOSObjectArray *a__ = [((NSString *) nil_chk(fileNames)) split:@"(?<!\\\\),"];
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *file = *b__++;
      [result addWithId:[((NSString *) nil_chk(file)) replaceAll:@"\\\\(?=,)" withReplacement:@""]];
    }
  }
  return result;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)