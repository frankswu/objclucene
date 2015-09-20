//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/Lucene43FilteringTokenFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/util/Lucene43FilteringTokenFilter.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt_;
  jboolean enablePositionIncrements_;
  jboolean first_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter, posIncrAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)

@implementation OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter

- (instancetype)initWithBoolean:(jboolean)enablePositionIncrements
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_(self, enablePositionIncrements, input);
  return self;
}

- (jboolean)accept {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)incrementToken {
  if (enablePositionIncrements_) {
    jint skippedPositions = 0;
    while ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
      if ([self accept]) {
        if (skippedPositions != 0) {
          [posIncrAtt_ setPositionIncrementWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) getPositionIncrement] + skippedPositions];
        }
        return true;
      }
      skippedPositions += [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) getPositionIncrement];
    }
  }
  else {
    while ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
      if ([self accept]) {
        if (first_) {
          if ([((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) getPositionIncrement] == 0) {
            [posIncrAtt_ setPositionIncrementWithInt:1];
          }
          first_ = false;
        }
        return true;
      }
    }
  }
  return false;
}

- (void)reset {
  [super reset];
  first_ = true;
}

- (void)dealloc {
  RELEASE_(posIncrAtt_);
  [super dealloc];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithBoolean:withOrgApacheLuceneAnalysisTokenStream:", "Lucene43FilteringTokenFilter", NULL, 0x1, NULL, NULL },
    { "accept", NULL, "Z", 0x404, "Ljava.io.IOException;", NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "posIncrAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "enablePositionIncrements_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "first_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter = { 2, "Lucene43FilteringTokenFilter", "org.apache.lucene.analysis.util", NULL, 0x401, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter;
}

@end

void OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter *self, jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  self->first_ = true;
  self->enablePositionIncrements_ = enablePositionIncrements;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilLucene43FilteringTokenFilter)
