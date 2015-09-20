//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/TermsWithScoreCollector.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/index/BinaryDocValues.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/SimpleCollector.h"
#include "org/apache/lucene/search/join/ScoreMode.h"
#include "org/apache/lucene/search/join/TermsWithScoreCollector.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefHash.h"

#define OrgApacheLuceneSearchJoinTermsWithScoreCollector_INITIAL_ARRAY_SIZE 0

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchJoinTermsWithScoreCollector, INITIAL_ARRAY_SIZE, jint)

@implementation OrgApacheLuceneSearchJoinTermsWithScoreCollector

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchJoinScoreModeEnum:(OrgApacheLuceneSearchJoinScoreModeEnum *)scoreMode {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(self, field, scoreMode);
  return self;
}

- (OrgApacheLuceneUtilBytesRefHash *)getCollectedTerms {
  return collectedTerms_;
}

- (IOSFloatArray *)getScoresPerTerm {
  return scoreSums_;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  JreStrongAssign(&self->scorer_, scorer);
}

+ (OrgApacheLuceneSearchJoinTermsWithScoreCollector *)createWithNSString:(NSString *)field
                                                             withBoolean:(jboolean)multipleValuesPerDocument
                              withOrgApacheLuceneSearchJoinScoreModeEnum:(OrgApacheLuceneSearchJoinScoreModeEnum *)scoreMode {
  return OrgApacheLuceneSearchJoinTermsWithScoreCollector_createWithNSString_withBoolean_withOrgApacheLuceneSearchJoinScoreModeEnum_(field, multipleValuesPerDocument, scoreMode);
}

- (jboolean)needsScores {
  return true;
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(collectedTerms_);
  RELEASE_(scoreMode_);
  RELEASE_(scorer_);
  RELEASE_(scoreSums_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneSearchJoinScoreModeEnum:", "TermsWithScoreCollector", NULL, 0x0, NULL, NULL },
    { "getCollectedTerms", NULL, "Lorg.apache.lucene.util.BytesRefHash;", 0x1, NULL, NULL },
    { "getScoresPerTerm", NULL, "[F", 0x1, NULL, NULL },
    { "setScorerWithOrgApacheLuceneSearchScorer:", "setScorer", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "createWithNSString:withBoolean:withOrgApacheLuceneSearchJoinScoreModeEnum:", "create", "Lorg.apache.lucene.search.join.TermsWithScoreCollector;", 0x8, NULL, NULL },
    { "needsScores", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INITIAL_ARRAY_SIZE", "INITIAL_ARRAY_SIZE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchJoinTermsWithScoreCollector_INITIAL_ARRAY_SIZE },
    { "field_", NULL, 0x10, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "collectedTerms_", NULL, 0x10, "Lorg.apache.lucene.util.BytesRefHash;", NULL, NULL, .constantValue.asLong = 0 },
    { "scoreMode_", NULL, 0x10, "Lorg.apache.lucene.search.join.ScoreMode;", NULL, NULL, .constantValue.asLong = 0 },
    { "scorer_", NULL, 0x0, "Lorg.apache.lucene.search.Scorer;", NULL, NULL, .constantValue.asLong = 0 },
    { "scoreSums_", NULL, 0x0, "[F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.join.TermsWithScoreCollector$SV;", "Lorg.apache.lucene.search.join.TermsWithScoreCollector$MV;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinTermsWithScoreCollector = { 2, "TermsWithScoreCollector", "org.apache.lucene.search.join", NULL, 0x400, 6, methods, 6, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinTermsWithScoreCollector;
}

@end

void OrgApacheLuceneSearchJoinTermsWithScoreCollector_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(OrgApacheLuceneSearchJoinTermsWithScoreCollector *self, NSString *field, OrgApacheLuceneSearchJoinScoreModeEnum *scoreMode) {
  OrgApacheLuceneSearchSimpleCollector_init(self);
  JreStrongAssignAndConsume(&self->collectedTerms_, new_OrgApacheLuceneUtilBytesRefHash_init());
  JreStrongAssignAndConsume(&self->scoreSums_, [IOSFloatArray newArrayWithLength:OrgApacheLuceneSearchJoinTermsWithScoreCollector_INITIAL_ARRAY_SIZE]);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->scoreMode_, scoreMode);
  if (scoreMode == JreLoadStatic(OrgApacheLuceneSearchJoinScoreModeEnum, Min)) {
    JavaUtilArrays_fillWithFloatArray_withFloat_(self->scoreSums_, JavaLangFloat_POSITIVE_INFINITY);
  }
  else if (scoreMode == JreLoadStatic(OrgApacheLuceneSearchJoinScoreModeEnum, Max)) {
    JavaUtilArrays_fillWithFloatArray_withFloat_(self->scoreSums_, JavaLangFloat_NEGATIVE_INFINITY);
  }
}

OrgApacheLuceneSearchJoinTermsWithScoreCollector *OrgApacheLuceneSearchJoinTermsWithScoreCollector_createWithNSString_withBoolean_withOrgApacheLuceneSearchJoinScoreModeEnum_(NSString *field, jboolean multipleValuesPerDocument, OrgApacheLuceneSearchJoinScoreModeEnum *scoreMode) {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_initialize();
  if (multipleValuesPerDocument) {
    switch ([scoreMode ordinal]) {
      case OrgApacheLuceneSearchJoinScoreMode_Avg:
      return [new_OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg_initWithNSString_(field) autorelease];
      default:
      return [new_OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(field, scoreMode) autorelease];
    }
  }
  else {
    switch ([scoreMode ordinal]) {
      case OrgApacheLuceneSearchJoinScoreMode_Avg:
      return [new_OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg_initWithNSString_(field) autorelease];
      default:
      return [new_OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(field, scoreMode) autorelease];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinTermsWithScoreCollector)

@implementation OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchJoinScoreModeEnum:(OrgApacheLuceneSearchJoinScoreModeEnum *)scoreMode {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(self, field, scoreMode);
  return self;
}

- (void)collectWithInt:(jint)doc {
  jint ord = [((OrgApacheLuceneUtilBytesRefHash *) nil_chk(collectedTerms_)) addWithOrgApacheLuceneUtilBytesRef:[((OrgApacheLuceneIndexBinaryDocValues *) nil_chk(fromDocTerms_)) getWithInt:doc]];
  if (ord < 0) {
    ord = -ord - 1;
  }
  else {
    if (ord >= ((IOSFloatArray *) nil_chk(scoreSums_))->size_) {
      jint begin = scoreSums_->size_;
      JreStrongAssign(&scoreSums_, OrgApacheLuceneUtilArrayUtil_growWithFloatArray_(scoreSums_));
      if (scoreMode_ == JreLoadStatic(OrgApacheLuceneSearchJoinScoreModeEnum, Min)) {
        JavaUtilArrays_fillWithFloatArray_withInt_withInt_withFloat_(scoreSums_, begin, ((IOSFloatArray *) nil_chk(scoreSums_))->size_, JavaLangFloat_POSITIVE_INFINITY);
      }
      else if (scoreMode_ == JreLoadStatic(OrgApacheLuceneSearchJoinScoreModeEnum, Max)) {
        JavaUtilArrays_fillWithFloatArray_withInt_withInt_withFloat_(scoreSums_, begin, ((IOSFloatArray *) nil_chk(scoreSums_))->size_, JavaLangFloat_NEGATIVE_INFINITY);
      }
    }
  }
  jfloat current = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score];
  jfloat existing = IOSFloatArray_Get(nil_chk(scoreSums_), ord);
  if (JavaLangFloat_compareWithFloat_withFloat_(existing, 0.0f) == 0) {
    *IOSFloatArray_GetRef(scoreSums_, ord) = current;
  }
  else {
    switch ([scoreMode_ ordinal]) {
      case OrgApacheLuceneSearchJoinScoreMode_Total:
      *IOSFloatArray_GetRef(scoreSums_, ord) = IOSFloatArray_Get(scoreSums_, ord) + current;
      break;
      case OrgApacheLuceneSearchJoinScoreMode_Min:
      if (current < existing) {
        *IOSFloatArray_GetRef(scoreSums_, ord) = current;
      }
      break;
      case OrgApacheLuceneSearchJoinScoreMode_Max:
      if (current > existing) {
        *IOSFloatArray_GetRef(scoreSums_, ord) = current;
      }
      break;
    }
  }
}

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  JreStrongAssign(&fromDocTerms_, OrgApacheLuceneIndexDocValues_getBinaryWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field_));
}

- (void)dealloc {
  RELEASE_(fromDocTerms_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneSearchJoinScoreModeEnum:", "SV", NULL, 0x0, NULL, NULL },
    { "collectWithInt:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:", "doSetNextReader", "V", 0x4, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fromDocTerms_", NULL, 0x0, "Lorg.apache.lucene.index.BinaryDocValues;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.join.TermsWithScoreCollector$SV$Avg;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV = { 2, "SV", "org.apache.lucene.search.join", "TermsWithScoreCollector", 0x8, 3, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV;
}

@end

void OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV *self, NSString *field, OrgApacheLuceneSearchJoinScoreModeEnum *scoreMode) {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(self, field, scoreMode);
}

OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV *new_OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(NSString *field, OrgApacheLuceneSearchJoinScoreModeEnum *scoreMode) {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV *self = [OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV alloc];
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(self, field, scoreMode);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV)

@implementation OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg

- (instancetype)initWithNSString:(NSString *)field {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg_initWithNSString_(self, field);
  return self;
}

- (void)collectWithInt:(jint)doc {
  jint ord = [((OrgApacheLuceneUtilBytesRefHash *) nil_chk(collectedTerms_)) addWithOrgApacheLuceneUtilBytesRef:[((OrgApacheLuceneIndexBinaryDocValues *) nil_chk(fromDocTerms_)) getWithInt:doc]];
  if (ord < 0) {
    ord = -ord - 1;
  }
  else {
    if (ord >= ((IOSFloatArray *) nil_chk(scoreSums_))->size_) {
      JreStrongAssign(&scoreSums_, OrgApacheLuceneUtilArrayUtil_growWithFloatArray_(scoreSums_));
      JreStrongAssign(&scoreCounts_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_(scoreCounts_));
    }
  }
  jfloat current = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score];
  jfloat existing = IOSFloatArray_Get(nil_chk(scoreSums_), ord);
  if (JavaLangFloat_compareWithFloat_withFloat_(existing, 0.0f) == 0) {
    *IOSFloatArray_GetRef(scoreSums_, ord) = current;
    *IOSIntArray_GetRef(nil_chk(scoreCounts_), ord) = 1;
  }
  else {
    *IOSFloatArray_GetRef(scoreSums_, ord) = IOSFloatArray_Get(scoreSums_, ord) + current;
    (*IOSIntArray_GetRef(nil_chk(scoreCounts_), ord))++;
  }
}

- (IOSFloatArray *)getScoresPerTerm {
  if (scoreCounts_ != nil) {
    for (jint i = 0; i < scoreCounts_->size_; i++) {
      *IOSFloatArray_GetRef(nil_chk(scoreSums_), i) = IOSFloatArray_Get(scoreSums_, i) / IOSIntArray_Get(scoreCounts_, i);
    }
    JreStrongAssign(&scoreCounts_, nil);
  }
  return scoreSums_;
}

- (void)dealloc {
  RELEASE_(scoreCounts_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "Avg", NULL, 0x0, NULL, NULL },
    { "collectWithInt:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getScoresPerTerm", NULL, "[F", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scoreCounts_", NULL, 0x0, "[I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg = { 2, "Avg", "org.apache.lucene.search.join", "TermsWithScoreCollector$SV", 0x8, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg;
}

@end

void OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg_initWithNSString_(OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg *self, NSString *field) {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(self, field, JreLoadStatic(OrgApacheLuceneSearchJoinScoreModeEnum, Avg));
  JreStrongAssignAndConsume(&self->scoreCounts_, [IOSIntArray newArrayWithLength:OrgApacheLuceneSearchJoinTermsWithScoreCollector_INITIAL_ARRAY_SIZE]);
}

OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg *new_OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg_initWithNSString_(NSString *field) {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg *self = [OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg alloc];
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg_initWithNSString_(self, field);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinTermsWithScoreCollector_SV_Avg)

@implementation OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchJoinScoreModeEnum:(OrgApacheLuceneSearchJoinScoreModeEnum *)scoreMode {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(self, field, scoreMode);
  return self;
}

- (void)collectWithInt:(jint)doc {
  [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(fromDocTermOrds_)) setDocumentWithInt:doc];
  jlong ord;
  while ((ord = [fromDocTermOrds_ nextOrd]) != OrgApacheLuceneIndexSortedSetDocValues_NO_MORE_ORDS) {
    jint termID = [((OrgApacheLuceneUtilBytesRefHash *) nil_chk(collectedTerms_)) addWithOrgApacheLuceneUtilBytesRef:[fromDocTermOrds_ lookupOrdWithLong:ord]];
    if (termID < 0) {
      termID = -termID - 1;
    }
    else {
      if (termID >= ((IOSFloatArray *) nil_chk(scoreSums_))->size_) {
        jint begin = scoreSums_->size_;
        JreStrongAssign(&scoreSums_, OrgApacheLuceneUtilArrayUtil_growWithFloatArray_(scoreSums_));
        if (scoreMode_ == JreLoadStatic(OrgApacheLuceneSearchJoinScoreModeEnum, Min)) {
          JavaUtilArrays_fillWithFloatArray_withInt_withInt_withFloat_(scoreSums_, begin, ((IOSFloatArray *) nil_chk(scoreSums_))->size_, JavaLangFloat_POSITIVE_INFINITY);
        }
        else if (scoreMode_ == JreLoadStatic(OrgApacheLuceneSearchJoinScoreModeEnum, Max)) {
          JavaUtilArrays_fillWithFloatArray_withInt_withInt_withFloat_(scoreSums_, begin, ((IOSFloatArray *) nil_chk(scoreSums_))->size_, JavaLangFloat_NEGATIVE_INFINITY);
        }
      }
    }
    switch ([scoreMode_ ordinal]) {
      case OrgApacheLuceneSearchJoinScoreMode_Total:
      JrePlusAssignFloatF(IOSFloatArray_GetRef(nil_chk(scoreSums_), termID), [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score]);
      break;
      case OrgApacheLuceneSearchJoinScoreMode_Min:
      *IOSFloatArray_GetRef(nil_chk(scoreSums_), termID) = JavaLangMath_minWithFloat_withFloat_(IOSFloatArray_Get(scoreSums_, termID), [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score]);
      break;
      case OrgApacheLuceneSearchJoinScoreMode_Max:
      *IOSFloatArray_GetRef(nil_chk(scoreSums_), termID) = JavaLangMath_maxWithFloat_withFloat_(IOSFloatArray_Get(scoreSums_, termID), [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score]);
      break;
    }
  }
}

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  JreStrongAssign(&fromDocTermOrds_, OrgApacheLuceneIndexDocValues_getSortedSetWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field_));
}

- (void)dealloc {
  RELEASE_(fromDocTermOrds_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneSearchJoinScoreModeEnum:", "MV", NULL, 0x0, NULL, NULL },
    { "collectWithInt:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:", "doSetNextReader", "V", 0x4, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fromDocTermOrds_", NULL, 0x0, "Lorg.apache.lucene.index.SortedSetDocValues;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.join.TermsWithScoreCollector$MV$Avg;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV = { 2, "MV", "org.apache.lucene.search.join", "TermsWithScoreCollector", 0x8, 3, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV;
}

@end

void OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV *self, NSString *field, OrgApacheLuceneSearchJoinScoreModeEnum *scoreMode) {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(self, field, scoreMode);
}

OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV *new_OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(NSString *field, OrgApacheLuceneSearchJoinScoreModeEnum *scoreMode) {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV *self = [OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV alloc];
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(self, field, scoreMode);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV)

@implementation OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg

- (instancetype)initWithNSString:(NSString *)field {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg_initWithNSString_(self, field);
  return self;
}

- (void)collectWithInt:(jint)doc {
  [((OrgApacheLuceneIndexSortedSetDocValues *) nil_chk(fromDocTermOrds_)) setDocumentWithInt:doc];
  jlong ord;
  while ((ord = [fromDocTermOrds_ nextOrd]) != OrgApacheLuceneIndexSortedSetDocValues_NO_MORE_ORDS) {
    jint termID = [((OrgApacheLuceneUtilBytesRefHash *) nil_chk(collectedTerms_)) addWithOrgApacheLuceneUtilBytesRef:[fromDocTermOrds_ lookupOrdWithLong:ord]];
    if (termID < 0) {
      termID = -termID - 1;
    }
    else {
      if (termID >= ((IOSFloatArray *) nil_chk(scoreSums_))->size_) {
        JreStrongAssign(&scoreSums_, OrgApacheLuceneUtilArrayUtil_growWithFloatArray_(scoreSums_));
        JreStrongAssign(&scoreCounts_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_(scoreCounts_));
      }
    }
    JrePlusAssignFloatF(IOSFloatArray_GetRef(nil_chk(scoreSums_), termID), [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score]);
    (*IOSIntArray_GetRef(nil_chk(scoreCounts_), termID))++;
  }
}

- (IOSFloatArray *)getScoresPerTerm {
  if (scoreCounts_ != nil) {
    for (jint i = 0; i < scoreCounts_->size_; i++) {
      *IOSFloatArray_GetRef(nil_chk(scoreSums_), i) = IOSFloatArray_Get(scoreSums_, i) / IOSIntArray_Get(scoreCounts_, i);
    }
    JreStrongAssign(&scoreCounts_, nil);
  }
  return scoreSums_;
}

- (void)dealloc {
  RELEASE_(scoreCounts_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "Avg", NULL, 0x0, NULL, NULL },
    { "collectWithInt:", "collect", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getScoresPerTerm", NULL, "[F", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scoreCounts_", NULL, 0x0, "[I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg = { 2, "Avg", "org.apache.lucene.search.join", "TermsWithScoreCollector$MV", 0x8, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg;
}

@end

void OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg_initWithNSString_(OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg *self, NSString *field) {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_initWithNSString_withOrgApacheLuceneSearchJoinScoreModeEnum_(self, field, JreLoadStatic(OrgApacheLuceneSearchJoinScoreModeEnum, Avg));
  JreStrongAssignAndConsume(&self->scoreCounts_, [IOSIntArray newArrayWithLength:OrgApacheLuceneSearchJoinTermsWithScoreCollector_INITIAL_ARRAY_SIZE]);
}

OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg *new_OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg_initWithNSString_(NSString *field) {
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg *self = [OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg alloc];
  OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg_initWithNSString_(self, field);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinTermsWithScoreCollector_MV_Avg)
