//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/WordDelimiterIterator.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "org/apache/lucene/analysis/miscellaneous/WordDelimiterFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/WordDelimiterIterator.h"

@interface OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator () {
 @public
  jboolean hasFinalPossessive_;
  IOSByteArray *charTypeTable_;
  jboolean skipPossessive_;
}

- (jboolean)isBreakWithInt:(jint)lastType
                   withInt:(jint)type;

- (void)setBounds;

- (jboolean)endsWithPossessiveWithInt:(jint)pos;

- (jint)charTypeWithInt:(jint)ch;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator, charTypeTable_, IOSByteArray *)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_isBreakWithInt_withInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self, jint lastType, jint type);

__attribute__((unused)) static void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_setBounds(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_endsWithPossessiveWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self, jint pos);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self, jint ch);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator)

IOSByteArray *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DEFAULT_WORD_DELIM_TABLE_;

@implementation OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator

- (instancetype)initWithByteArray:(IOSByteArray *)charTypeTable
                      withBoolean:(jboolean)splitOnCaseChange
                      withBoolean:(jboolean)splitOnNumerics
                      withBoolean:(jboolean)stemEnglishPossessive {
  OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_initWithByteArray_withBoolean_withBoolean_withBoolean_(self, charTypeTable, splitOnCaseChange, splitOnNumerics, stemEnglishPossessive);
  return self;
}

- (jint)next {
  current_ = end_;
  if (current_ == OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DONE) {
    return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DONE;
  }
  if (skipPossessive_) {
    current_ += 2;
    skipPossessive_ = false;
  }
  jint lastType = 0;
  while (current_ < endBounds_ && (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isSubwordDelimWithInt_(lastType = OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(self, IOSCharArray_Get(nil_chk(text_), current_))))) {
    current_++;
  }
  if (current_ >= endBounds_) {
    return end_ = OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DONE;
  }
  for (end_ = current_ + 1; end_ < endBounds_; end_++) {
    jint type = OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(self, IOSCharArray_Get(nil_chk(text_), end_));
    if (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_isBreakWithInt_withInt_(self, lastType, type)) {
      break;
    }
    lastType = type;
  }
  if (end_ < endBounds_ - 1 && OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_endsWithPossessiveWithInt_(self, end_ + 2)) {
    skipPossessive_ = true;
  }
  return end_;
}

- (jint)type {
  if (end_ == OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DONE) {
    return 0;
  }
  jint type = OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(self, IOSCharArray_Get(nil_chk(text_), current_));
  switch (type) {
    case OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_LOWER:
    case OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_UPPER:
    return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_ALPHA;
    default:
    return type;
  }
}

- (void)setTextWithCharArray:(IOSCharArray *)text
                     withInt:(jint)length {
  JreStrongAssign(&self->text_, text);
  self->length_ = self->endBounds_ = length;
  current_ = startBounds_ = end_ = 0;
  skipPossessive_ = hasFinalPossessive_ = false;
  OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_setBounds(self);
}

- (jboolean)isBreakWithInt:(jint)lastType
                   withInt:(jint)type {
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_isBreakWithInt_withInt_(self, lastType, type);
}

- (jboolean)isSingleWord {
  if (hasFinalPossessive_) {
    return current_ == startBounds_ && end_ == endBounds_ - 2;
  }
  else {
    return current_ == startBounds_ && end_ == endBounds_;
  }
}

- (void)setBounds {
  OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_setBounds(self);
}

- (jboolean)endsWithPossessiveWithInt:(jint)pos {
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_endsWithPossessiveWithInt_(self, pos);
}

- (jint)charTypeWithInt:(jint)ch {
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(self, ch);
}

+ (jbyte)getTypeWithInt:(jint)ch {
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_getTypeWithInt_(ch);
}

- (void)dealloc {
  RELEASE_(text_);
  RELEASE_(charTypeTable_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator class]) {
    {
      IOSByteArray *tab = [IOSByteArray arrayWithLength:256];
      for (jint i = 0; i < 256; i++) {
        jbyte code = 0;
        if (JavaLangCharacter_isLowerCaseWithInt_(i)) {
          code |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_LOWER;
        }
        else if (JavaLangCharacter_isUpperCaseWithInt_(i)) {
          code |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_UPPER;
        }
        else if (JavaLangCharacter_isDigitWithInt_(i)) {
          code |= OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_DIGIT;
        }
        if (code == 0) {
          code = OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_SUBWORD_DELIM;
        }
        *IOSByteArray_GetRef(tab, i) = code;
      }
      JreStrongAssign(&OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DEFAULT_WORD_DELIM_TABLE_, tab);
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:withBoolean:withBoolean:withBoolean:", "WordDelimiterIterator", NULL, 0x0, NULL, NULL },
    { "next", NULL, "I", 0x0, NULL, NULL },
    { "type", NULL, "I", 0x0, NULL, NULL },
    { "setTextWithCharArray:withInt:", "setText", "V", 0x0, NULL, NULL },
    { "isBreakWithInt:withInt:", "isBreak", "Z", 0x2, NULL, NULL },
    { "isSingleWord", NULL, "Z", 0x0, NULL, NULL },
    { "setBounds", NULL, "V", 0x2, NULL, NULL },
    { "endsWithPossessiveWithInt:", "endsWithPossessive", "Z", 0x2, NULL, NULL },
    { "charTypeWithInt:", "charType", "I", 0x2, NULL, NULL },
    { "getTypeWithInt:", "getType", "B", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DONE", "DONE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DONE },
    { "DEFAULT_WORD_DELIM_TABLE_", NULL, 0x19, "[B", &OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DEFAULT_WORD_DELIM_TABLE_, NULL, .constantValue.asLong = 0 },
    { "text_", NULL, 0x0, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "length_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "startBounds_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endBounds_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "current_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "end_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "hasFinalPossessive_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "splitOnCaseChange_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "splitOnNumerics_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "stemEnglishPossessive_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "charTypeTable_", NULL, 0x12, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "skipPossessive_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator = { 2, "WordDelimiterIterator", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 10, methods, 14, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_initWithByteArray_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self, IOSByteArray *charTypeTable, jboolean splitOnCaseChange, jboolean splitOnNumerics, jboolean stemEnglishPossessive) {
  NSObject_init(self);
  self->hasFinalPossessive_ = false;
  self->skipPossessive_ = false;
  JreStrongAssign(&self->charTypeTable_, charTypeTable);
  self->splitOnCaseChange_ = splitOnCaseChange;
  self->splitOnNumerics_ = splitOnNumerics;
  self->stemEnglishPossessive_ = stemEnglishPossessive;
}

OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *new_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_initWithByteArray_withBoolean_withBoolean_withBoolean_(IOSByteArray *charTypeTable, jboolean splitOnCaseChange, jboolean splitOnNumerics, jboolean stemEnglishPossessive) {
  OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self = [OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator alloc];
  OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_initWithByteArray_withBoolean_withBoolean_withBoolean_(self, charTypeTable, splitOnCaseChange, splitOnNumerics, stemEnglishPossessive);
  return self;
}

jboolean OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_isBreakWithInt_withInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self, jint lastType, jint type) {
  if ((type & lastType) != 0) {
    return false;
  }
  if (!self->splitOnCaseChange_ && OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isAlphaWithInt_(lastType) && OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isAlphaWithInt_(type)) {
    return false;
  }
  else if (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isUpperWithInt_(lastType) && OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isAlphaWithInt_(type)) {
    return false;
  }
  else if (!self->splitOnNumerics_ && ((OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isAlphaWithInt_(lastType) && OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isDigitWithInt_(type)) || (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isDigitWithInt_(lastType) && OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isAlphaWithInt_(type)))) {
    return false;
  }
  return true;
}

void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_setBounds(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self) {
  while (self->startBounds_ < self->length_ && (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isSubwordDelimWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(self, IOSCharArray_Get(nil_chk(self->text_), self->startBounds_))))) {
    self->startBounds_++;
  }
  while (self->endBounds_ > self->startBounds_ && (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isSubwordDelimWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(self, IOSCharArray_Get(nil_chk(self->text_), self->endBounds_ - 1))))) {
    self->endBounds_--;
  }
  if (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_endsWithPossessiveWithInt_(self, self->endBounds_)) {
    self->hasFinalPossessive_ = true;
  }
  self->current_ = self->startBounds_;
}

jboolean OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_endsWithPossessiveWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self, jint pos) {
  return (self->stemEnglishPossessive_ && pos > 2 && IOSCharArray_Get(nil_chk(self->text_), pos - 2) == '\'' && (IOSCharArray_Get(self->text_, pos - 1) == 's' || IOSCharArray_Get(self->text_, pos - 1) == 'S') && OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isAlphaWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(self, IOSCharArray_Get(self->text_, pos - 3))) && (pos == self->endBounds_ || OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_isSubwordDelimWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(self, IOSCharArray_Get(self->text_, pos)))));
}

jint OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_charTypeWithInt_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self, jint ch) {
  if (ch < ((IOSByteArray *) nil_chk(self->charTypeTable_))->size_) {
    return IOSByteArray_Get(self->charTypeTable_, ch);
  }
  return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_getTypeWithInt_(ch);
}

jbyte OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_getTypeWithInt_(jint ch) {
  OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_initialize();
  switch (JavaLangCharacter_getTypeWithInt_(ch)) {
    case JavaLangCharacter_UPPERCASE_LETTER:
    return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_UPPER;
    case JavaLangCharacter_LOWERCASE_LETTER:
    return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_LOWER;
    case JavaLangCharacter_TITLECASE_LETTER:
    case JavaLangCharacter_MODIFIER_LETTER:
    case JavaLangCharacter_OTHER_LETTER:
    case JavaLangCharacter_NON_SPACING_MARK:
    case JavaLangCharacter_ENCLOSING_MARK:
    case JavaLangCharacter_COMBINING_SPACING_MARK:
    return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_ALPHA;
    case JavaLangCharacter_DECIMAL_DIGIT_NUMBER:
    case JavaLangCharacter_LETTER_NUMBER:
    case JavaLangCharacter_OTHER_NUMBER:
    return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_DIGIT;
    case JavaLangCharacter_SURROGATE:
    return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_ALPHA | OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_DIGIT;
    default:
    return OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilter_SUBWORD_DELIM;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator)
