//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/TokenStreamToTermAutomatonQuery.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"
#include "org/apache/lucene/search/TermAutomatonQuery.h"
#include "org/apache/lucene/search/TokenStreamToTermAutomatonQuery.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery () {
 @public
  jboolean preservePositionIncrements_;
}

@end

@implementation OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPreservePositionIncrementsWithBoolean:(jboolean)enablePositionIncrements {
  self->preservePositionIncrements_ = enablePositionIncrements;
}

- (OrgApacheLuceneSearchTermAutomatonQuery *)toQueryWithNSString:(NSString *)field
                          withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg {
  id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termBytesAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(inArg)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()];
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt = [inArg addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
  id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute> posLengthAtt = [inArg addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_()];
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt = [inArg addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()];
  [inArg reset];
  OrgApacheLuceneSearchTermAutomatonQuery *query = [new_OrgApacheLuceneSearchTermAutomatonQuery_initWithNSString_(field) autorelease];
  jint pos = -1;
  jint lastPos = 0;
  jint maxOffset = 0;
  jint maxPos = -1;
  jint state = -1;
  while ([inArg incrementToken]) {
    jint posInc = [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt)) getPositionIncrement];
    if (preservePositionIncrements_ == false && posInc > 1) {
      posInc = 1;
    }
    JreAssert((pos > -1 || posInc > 0), (@"org/apache/lucene/search/TokenStreamToTermAutomatonQuery.java:78 condition failed: assert pos > -1 || posInc > 0;"));
    if (posInc > 1) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"cannot handle holes; to accept any term, use '*' term") autorelease];
    }
    if (posInc > 0) {
      pos += posInc;
    }
    jint endPos = pos + [((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) nil_chk(posLengthAtt)) getPositionLength];
    while (state < endPos) {
      state = [query createState];
    }
    OrgApacheLuceneUtilBytesRef *term = [((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) nil_chk(termBytesAtt)) getBytesRef];
    if (((OrgApacheLuceneUtilBytesRef *) nil_chk(term))->length_ == 1 && IOSByteArray_Get(nil_chk(term->bytes_), term->offset_) == (jbyte) '*') {
      [query addAnyTransitionWithInt:pos withInt:endPos];
    }
    else {
      [query addTransitionWithInt:pos withInt:endPos withOrgApacheLuceneUtilBytesRef:term];
    }
    maxOffset = JavaLangMath_maxWithInt_withInt_(maxOffset, [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt)) endOffset]);
    maxPos = JavaLangMath_maxWithInt_withInt_(maxPos, endPos);
  }
  [inArg end];
  [query setAcceptWithInt:state withBoolean:true];
  [query finish];
  return query;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TokenStreamToTermAutomatonQuery", NULL, 0x1, NULL, NULL },
    { "setPreservePositionIncrementsWithBoolean:", "setPreservePositionIncrements", "V", 0x1, NULL, NULL },
    { "toQueryWithNSString:withOrgApacheLuceneAnalysisTokenStream:", "toQuery", "Lorg.apache.lucene.search.TermAutomatonQuery;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "preservePositionIncrements_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery = { 2, "TokenStreamToTermAutomatonQuery", "org.apache.lucene.search", NULL, 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery;
}

@end

void OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery_init(OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery *self) {
  NSObject_init(self);
  self->preservePositionIncrements_ = true;
}

OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery *new_OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery_init() {
  OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery *self = [OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery alloc];
  OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTokenStreamToTermAutomatonQuery)
