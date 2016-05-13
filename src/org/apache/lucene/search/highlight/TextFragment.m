//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/TextFragment.java
//

#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/highlight/TextFragment.h"

@implementation OrgApacheLuceneSearchHighlightTextFragment

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)markedUpText
                                     withInt:(jint)textStartPos
                                     withInt:(jint)fragNum {
  OrgApacheLuceneSearchHighlightTextFragment_initWithJavaLangCharSequence_withInt_withInt_(self, markedUpText, textStartPos, fragNum);
  return self;
}

- (void)setScoreWithFloat:(jfloat)score {
  self->score_ = score;
}

- (jfloat)getScore {
  return score_;
}

- (void)mergeWithOrgApacheLuceneSearchHighlightTextFragment:(OrgApacheLuceneSearchHighlightTextFragment *)frag2 {
  textEndPos_ = ((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(frag2))->textEndPos_;
  score_ = JavaLangMath_maxWithFloat_withFloat_(score_, frag2->score_);
}

- (jboolean)followsWithOrgApacheLuceneSearchHighlightTextFragment:(OrgApacheLuceneSearchHighlightTextFragment *)fragment {
  return textStartPos_ == ((OrgApacheLuceneSearchHighlightTextFragment *) nil_chk(fragment))->textEndPos_;
}

- (jint)getFragNum {
  return fragNum_;
}

- (NSString *)description {
  return [((id<JavaLangCharSequence>) nil_chk([((id<JavaLangCharSequence>) nil_chk(markedUpText_)) subSequenceFrom:textStartPos_ to:textEndPos_])) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangCharSequence:withInt:withInt:", "TextFragment", NULL, 0x1, NULL, NULL },
    { "setScoreWithFloat:", "setScore", "V", 0x0, NULL, NULL },
    { "getScore", NULL, "F", 0x1, NULL, NULL },
    { "mergeWithOrgApacheLuceneSearchHighlightTextFragment:", "merge", "V", 0x1, NULL, NULL },
    { "followsWithOrgApacheLuceneSearchHighlightTextFragment:", "follows", "Z", 0x1, NULL, NULL },
    { "getFragNum", NULL, "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "markedUpText_", NULL, 0x0, "Ljava.lang.CharSequence;", NULL, NULL, .constantValue.asLong = 0 },
    { "fragNum_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "textStartPos_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "textEndPos_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "score_", NULL, 0x0, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightTextFragment = { 2, "TextFragment", "org.apache.lucene.search.highlight", NULL, 0x1, 7, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightTextFragment;
}

@end

void OrgApacheLuceneSearchHighlightTextFragment_initWithJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneSearchHighlightTextFragment *self, id<JavaLangCharSequence> markedUpText, jint textStartPos, jint fragNum) {
  NSObject_init(self);
  self->markedUpText_ = markedUpText;
  self->textStartPos_ = textStartPos;
  self->fragNum_ = fragNum;
}

OrgApacheLuceneSearchHighlightTextFragment *new_OrgApacheLuceneSearchHighlightTextFragment_initWithJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> markedUpText, jint textStartPos, jint fragNum) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightTextFragment, initWithJavaLangCharSequence_withInt_withInt_, markedUpText, textStartPos, fragNum)
}

OrgApacheLuceneSearchHighlightTextFragment *create_OrgApacheLuceneSearchHighlightTextFragment_initWithJavaLangCharSequence_withInt_withInt_(id<JavaLangCharSequence> markedUpText, jint textStartPos, jint fragNum) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightTextFragment, initWithJavaLangCharSequence_withInt_withInt_, markedUpText, textStartPos, fragNum)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightTextFragment)
