//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/SpellChecker.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/Comparator.h"
#include "java/util/List.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/FieldType.h"
#include "org/apache/lucene/document/StringField.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/IndexWriterConfig.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/search/TopDocs.h"
#include "org/apache/lucene/search/spell/Dictionary.h"
#include "org/apache/lucene/search/spell/LevensteinDistance.h"
#include "org/apache/lucene/search/spell/SpellChecker.h"
#include "org/apache/lucene/search/spell/StringDistance.h"
#include "org/apache/lucene/search/spell/SuggestMode.h"
#include "org/apache/lucene/search/spell/SuggestWord.h"
#include "org/apache/lucene/search/spell/SuggestWordQueue.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefIterator.h"

@interface OrgApacheLuceneSearchSpellSpellChecker () {
 @public
  jfloat bStart_;
  jfloat bEnd_;
  OrgApacheLuceneSearchIndexSearcher *searcher_;
  id searcherLock_;
  id modifyCurrentIndexLock_;
  volatile_jboolean closed_;
  jfloat accuracy_;
  id<OrgApacheLuceneSearchSpellStringDistance> sd_;
  id<JavaUtilComparator> comparator_;
}

+ (void)addWithOrgApacheLuceneSearchBooleanQuery_Builder:(OrgApacheLuceneSearchBooleanQuery_Builder *)q
                                            withNSString:(NSString *)name
                                            withNSString:(NSString *)value
                                               withFloat:(jfloat)boost;

+ (void)addWithOrgApacheLuceneSearchBooleanQuery_Builder:(OrgApacheLuceneSearchBooleanQuery_Builder *)q
                                            withNSString:(NSString *)name
                                            withNSString:(NSString *)value;

+ (IOSObjectArray *)formGramsWithNSString:(NSString *)text
                                  withInt:(jint)ng;

+ (jint)getMinWithInt:(jint)l;

+ (jint)getMaxWithInt:(jint)l;

+ (OrgApacheLuceneDocumentDocument *)createDocumentWithNSString:(NSString *)text
                                                        withInt:(jint)ng1
                                                        withInt:(jint)ng2;

+ (void)addGramWithNSString:(NSString *)text
withOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc
                    withInt:(jint)ng1
                    withInt:(jint)ng2;

- (OrgApacheLuceneSearchIndexSearcher *)obtainSearcher;

- (void)releaseSearcherWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)aSearcher;

- (void)ensureOpen;

- (void)swapSearcherWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellSpellChecker, searcher_, OrgApacheLuceneSearchIndexSearcher *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellSpellChecker, searcherLock_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellSpellChecker, modifyCurrentIndexLock_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellSpellChecker, sd_, id<OrgApacheLuceneSearchSpellStringDistance>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpellSpellChecker, comparator_, id<JavaUtilComparator>)

__attribute__((unused)) static void OrgApacheLuceneSearchSpellSpellChecker_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withNSString_withNSString_withFloat_(OrgApacheLuceneSearchBooleanQuery_Builder *q, NSString *name, NSString *value, jfloat boost);

__attribute__((unused)) static void OrgApacheLuceneSearchSpellSpellChecker_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withNSString_withNSString_(OrgApacheLuceneSearchBooleanQuery_Builder *q, NSString *name, NSString *value);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchSpellSpellChecker_formGramsWithNSString_withInt_(NSString *text, jint ng);

__attribute__((unused)) static jint OrgApacheLuceneSearchSpellSpellChecker_getMinWithInt_(jint l);

__attribute__((unused)) static jint OrgApacheLuceneSearchSpellSpellChecker_getMaxWithInt_(jint l);

__attribute__((unused)) static OrgApacheLuceneDocumentDocument *OrgApacheLuceneSearchSpellSpellChecker_createDocumentWithNSString_withInt_withInt_(NSString *text, jint ng1, jint ng2);

__attribute__((unused)) static void OrgApacheLuceneSearchSpellSpellChecker_addGramWithNSString_withOrgApacheLuceneDocumentDocument_withInt_withInt_(NSString *text, OrgApacheLuceneDocumentDocument *doc, jint ng1, jint ng2);

__attribute__((unused)) static OrgApacheLuceneSearchIndexSearcher *OrgApacheLuceneSearchSpellSpellChecker_obtainSearcher(OrgApacheLuceneSearchSpellSpellChecker *self);

__attribute__((unused)) static void OrgApacheLuceneSearchSpellSpellChecker_releaseSearcherWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchSpellSpellChecker *self, OrgApacheLuceneSearchIndexSearcher *aSearcher);

__attribute__((unused)) static void OrgApacheLuceneSearchSpellSpellChecker_ensureOpen(OrgApacheLuceneSearchSpellSpellChecker *self);

__attribute__((unused)) static void OrgApacheLuceneSearchSpellSpellChecker_swapSearcherWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneSearchSpellSpellChecker *self, OrgApacheLuceneStoreDirectory *dir);

NSString *OrgApacheLuceneSearchSpellSpellChecker_F_WORD_ = @"word";

@implementation OrgApacheLuceneSearchSpellSpellChecker

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)spellIndex
         withOrgApacheLuceneSearchSpellStringDistance:(id<OrgApacheLuceneSearchSpellStringDistance>)sd {
  OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_(self, spellIndex, sd);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)spellIndex {
  OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_(self, spellIndex);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)spellIndex
         withOrgApacheLuceneSearchSpellStringDistance:(id<OrgApacheLuceneSearchSpellStringDistance>)sd
                               withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_withJavaUtilComparator_(self, spellIndex, sd, comparator);
  return self;
}

- (void)setSpellIndexWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)spellIndexDir {
  @synchronized(modifyCurrentIndexLock_) {
    OrgApacheLuceneSearchSpellSpellChecker_ensureOpen(self);
    if (!OrgApacheLuceneIndexDirectoryReader_indexExistsWithOrgApacheLuceneStoreDirectory_(spellIndexDir)) {
      OrgApacheLuceneIndexIndexWriter *writer = [new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_(spellIndexDir, [new_OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(nil) autorelease]) autorelease];
      [writer close];
    }
    OrgApacheLuceneSearchSpellSpellChecker_swapSearcherWithOrgApacheLuceneStoreDirectory_(self, spellIndexDir);
  }
}

- (void)setComparatorWithJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  JreStrongAssign(&self->comparator_, comparator);
}

- (id<JavaUtilComparator>)getComparator {
  return comparator_;
}

- (void)setStringDistanceWithOrgApacheLuceneSearchSpellStringDistance:(id<OrgApacheLuceneSearchSpellStringDistance>)sd {
  JreStrongAssign(&self->sd_, sd);
}

- (id<OrgApacheLuceneSearchSpellStringDistance>)getStringDistance {
  return sd_;
}

- (void)setAccuracyWithFloat:(jfloat)acc {
  self->accuracy_ = acc;
}

- (jfloat)getAccuracy {
  return accuracy_;
}

- (IOSObjectArray *)suggestSimilarWithNSString:(NSString *)word
                                       withInt:(jint)numSug {
  return [self suggestSimilarWithNSString:word withInt:numSug withOrgApacheLuceneIndexIndexReader:nil withNSString:nil withOrgApacheLuceneSearchSpellSuggestModeEnum:JreLoadStatic(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_WHEN_NOT_IN_INDEX)];
}

- (IOSObjectArray *)suggestSimilarWithNSString:(NSString *)word
                                       withInt:(jint)numSug
                                     withFloat:(jfloat)accuracy {
  return [self suggestSimilarWithNSString:word withInt:numSug withOrgApacheLuceneIndexIndexReader:nil withNSString:nil withOrgApacheLuceneSearchSpellSuggestModeEnum:JreLoadStatic(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_WHEN_NOT_IN_INDEX) withFloat:accuracy];
}

- (IOSObjectArray *)suggestSimilarWithNSString:(NSString *)word
                                       withInt:(jint)numSug
           withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)ir
                                  withNSString:(NSString *)field
 withOrgApacheLuceneSearchSpellSuggestModeEnum:(OrgApacheLuceneSearchSpellSuggestModeEnum *)suggestMode {
  return [self suggestSimilarWithNSString:word withInt:numSug withOrgApacheLuceneIndexIndexReader:ir withNSString:field withOrgApacheLuceneSearchSpellSuggestModeEnum:suggestMode withFloat:self->accuracy_];
}

- (IOSObjectArray *)suggestSimilarWithNSString:(NSString *)word
                                       withInt:(jint)numSug
           withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)ir
                                  withNSString:(NSString *)field
 withOrgApacheLuceneSearchSpellSuggestModeEnum:(OrgApacheLuceneSearchSpellSuggestModeEnum *)suggestMode
                                     withFloat:(jfloat)accuracy {
  OrgApacheLuceneSearchIndexSearcher *indexSearcher = OrgApacheLuceneSearchSpellSpellChecker_obtainSearcher(self);
  @try {
    if (ir == nil || field == nil) {
      suggestMode = JreLoadStatic(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_ALWAYS);
    }
    if (suggestMode == JreLoadStatic(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_ALWAYS)) {
      ir = nil;
      field = nil;
    }
    jint lengthWord = ((jint) [((NSString *) nil_chk(word)) length]);
    jint freq = (ir != nil && field != nil) ? [ir docFreqWithOrgApacheLuceneIndexTerm:[new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(field, word) autorelease]] : 0;
    jint goalFreq = suggestMode == JreLoadStatic(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_MORE_POPULAR) ? freq : 0;
    if (suggestMode == JreLoadStatic(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_WHEN_NOT_IN_INDEX) && freq > 0) {
      return [IOSObjectArray arrayWithObjects:(id[]){ word } count:1 type:NSString_class_()];
    }
    OrgApacheLuceneSearchBooleanQuery_Builder *query = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
    IOSObjectArray *grams;
    NSString *key;
    for (jint ng = OrgApacheLuceneSearchSpellSpellChecker_getMinWithInt_(lengthWord); ng <= OrgApacheLuceneSearchSpellSpellChecker_getMaxWithInt_(lengthWord); ng++) {
      key = JreStrcat("$I", @"gram", ng);
      grams = OrgApacheLuceneSearchSpellSpellChecker_formGramsWithNSString_withInt_(word, ng);
      if (((IOSObjectArray *) nil_chk(grams))->size_ == 0) {
        continue;
      }
      if (bStart_ > 0) {
        OrgApacheLuceneSearchSpellSpellChecker_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withNSString_withNSString_withFloat_(query, JreStrcat("$I", @"start", ng), IOSObjectArray_Get(grams, 0), bStart_);
      }
      if (bEnd_ > 0) {
        OrgApacheLuceneSearchSpellSpellChecker_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withNSString_withNSString_withFloat_(query, JreStrcat("$I", @"end", ng), IOSObjectArray_Get(grams, grams->size_ - 1), bEnd_);
      }
      for (jint i = 0; i < grams->size_; i++) {
        OrgApacheLuceneSearchSpellSpellChecker_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withNSString_withNSString_(query, key, IOSObjectArray_Get(grams, i));
      }
    }
    jint maxHits = 10 * numSug;
    IOSObjectArray *hits = ((OrgApacheLuceneSearchTopDocs *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(indexSearcher)) searchWithOrgApacheLuceneSearchQuery:[query build] withInt:maxHits]))->scoreDocs_;
    OrgApacheLuceneSearchSpellSuggestWordQueue *sugQueue = [new_OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_withJavaUtilComparator_(numSug, comparator_) autorelease];
    jint stop = JavaLangMath_minWithInt_withInt_(((IOSObjectArray *) nil_chk(hits))->size_, maxHits);
    OrgApacheLuceneSearchSpellSuggestWord *sugWord = [new_OrgApacheLuceneSearchSpellSuggestWord_init() autorelease];
    for (jint i = 0; i < stop; i++) {
      JreStrongAssign(&sugWord->string_, [((OrgApacheLuceneDocumentDocument *) nil_chk([indexSearcher docWithInt:((OrgApacheLuceneSearchScoreDoc *) nil_chk(IOSObjectArray_Get(hits, i)))->doc_])) getWithNSString:OrgApacheLuceneSearchSpellSpellChecker_F_WORD_]);
      if ([((NSString *) nil_chk(sugWord->string_)) isEqual:word]) {
        continue;
      }
      sugWord->score_ = [((id<OrgApacheLuceneSearchSpellStringDistance>) nil_chk(sd_)) getDistanceWithNSString:word withNSString:sugWord->string_];
      if (sugWord->score_ < accuracy) {
        continue;
      }
      if (ir != nil && field != nil) {
        sugWord->freq_ = [ir docFreqWithOrgApacheLuceneIndexTerm:[new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(field, sugWord->string_) autorelease]];
        if ((suggestMode == JreLoadStatic(OrgApacheLuceneSearchSpellSuggestModeEnum, SUGGEST_MORE_POPULAR) && goalFreq > sugWord->freq_) || sugWord->freq_ < 1) {
          continue;
        }
      }
      [sugQueue insertWithOverflowWithId:sugWord];
      if ([sugQueue size] == numSug) {
        accuracy = ((OrgApacheLuceneSearchSpellSuggestWord *) nil_chk([sugQueue top]))->score_;
      }
      sugWord = [new_OrgApacheLuceneSearchSpellSuggestWord_init() autorelease];
    }
    IOSObjectArray *list = [IOSObjectArray arrayWithLength:[sugQueue size] type:NSString_class_()];
    for (jint i = [sugQueue size] - 1; i >= 0; i--) {
      IOSObjectArray_Set(list, i, ((OrgApacheLuceneSearchSpellSuggestWord *) nil_chk([sugQueue pop]))->string_);
    }
    return list;
  }
  @finally {
    OrgApacheLuceneSearchSpellSpellChecker_releaseSearcherWithOrgApacheLuceneSearchIndexSearcher_(self, indexSearcher);
  }
}

+ (void)addWithOrgApacheLuceneSearchBooleanQuery_Builder:(OrgApacheLuceneSearchBooleanQuery_Builder *)q
                                            withNSString:(NSString *)name
                                            withNSString:(NSString *)value
                                               withFloat:(jfloat)boost {
  OrgApacheLuceneSearchSpellSpellChecker_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withNSString_withNSString_withFloat_(q, name, value, boost);
}

+ (void)addWithOrgApacheLuceneSearchBooleanQuery_Builder:(OrgApacheLuceneSearchBooleanQuery_Builder *)q
                                            withNSString:(NSString *)name
                                            withNSString:(NSString *)value {
  OrgApacheLuceneSearchSpellSpellChecker_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withNSString_withNSString_(q, name, value);
}

+ (IOSObjectArray *)formGramsWithNSString:(NSString *)text
                                  withInt:(jint)ng {
  return OrgApacheLuceneSearchSpellSpellChecker_formGramsWithNSString_withInt_(text, ng);
}

- (void)clearIndex {
  @synchronized(modifyCurrentIndexLock_) {
    OrgApacheLuceneSearchSpellSpellChecker_ensureOpen(self);
    OrgApacheLuceneStoreDirectory *dir = self->spellIndex_;
    OrgApacheLuceneIndexIndexWriter *writer = [new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_(dir, [((OrgApacheLuceneIndexIndexWriterConfig *) [new_OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(nil) autorelease]) setOpenModeWithOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum:JreLoadStatic(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum, CREATE)]) autorelease];
    [writer close];
    OrgApacheLuceneSearchSpellSpellChecker_swapSearcherWithOrgApacheLuceneStoreDirectory_(self, dir);
  }
}

- (jboolean)existWithNSString:(NSString *)word {
  OrgApacheLuceneSearchIndexSearcher *indexSearcher = OrgApacheLuceneSearchSpellSpellChecker_obtainSearcher(self);
  @try {
    return [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(indexSearcher)) getIndexReader])) docFreqWithOrgApacheLuceneIndexTerm:[new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(OrgApacheLuceneSearchSpellSpellChecker_F_WORD_, word) autorelease]] > 0;
  }
  @finally {
    OrgApacheLuceneSearchSpellSpellChecker_releaseSearcherWithOrgApacheLuceneSearchIndexSearcher_(self, indexSearcher);
  }
}

- (void)indexDictionaryWithOrgApacheLuceneSearchSpellDictionary:(id<OrgApacheLuceneSearchSpellDictionary>)dict
                      withOrgApacheLuceneIndexIndexWriterConfig:(OrgApacheLuceneIndexIndexWriterConfig *)config
                                                    withBoolean:(jboolean)fullMerge {
  @synchronized(modifyCurrentIndexLock_) {
    OrgApacheLuceneSearchSpellSpellChecker_ensureOpen(self);
    OrgApacheLuceneStoreDirectory *dir = self->spellIndex_;
    OrgApacheLuceneIndexIndexWriter *writer = [new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_(dir, config) autorelease];
    OrgApacheLuceneSearchIndexSearcher *indexSearcher = OrgApacheLuceneSearchSpellSpellChecker_obtainSearcher(self);
    id<JavaUtilList> termsEnums = [new_JavaUtilArrayList_init() autorelease];
    OrgApacheLuceneIndexIndexReader *reader = [((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher_)) getIndexReader];
    if ([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) maxDoc] > 0) {
      for (OrgApacheLuceneIndexLeafReaderContext * __strong ctx in nil_chk([reader leaves])) {
        OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(ctx)) reader])) termsWithNSString:OrgApacheLuceneSearchSpellSpellChecker_F_WORD_];
        if (terms != nil) [termsEnums addWithId:[terms iterator]];
      }
    }
    jboolean isEmpty = [termsEnums isEmpty];
    @try {
      id<OrgApacheLuceneUtilBytesRefIterator> iter = [((id<OrgApacheLuceneSearchSpellDictionary>) nil_chk(dict)) getEntryIterator];
      OrgApacheLuceneUtilBytesRef *currentTerm;
      while ((currentTerm = [((id<OrgApacheLuceneUtilBytesRefIterator>) nil_chk(iter)) next]) != nil) {
        {
          NSString *word = [((OrgApacheLuceneUtilBytesRef *) nil_chk(currentTerm)) utf8ToString];
          jint len = ((jint) [((NSString *) nil_chk(word)) length]);
          if (len < 3) {
            continue;
          }
          if (!isEmpty) {
            for (OrgApacheLuceneIndexTermsEnum * __strong te in termsEnums) {
              if ([((OrgApacheLuceneIndexTermsEnum *) nil_chk(te)) seekExactWithOrgApacheLuceneUtilBytesRef:currentTerm]) {
                goto continue_terms;
              }
            }
          }
          OrgApacheLuceneDocumentDocument *doc = OrgApacheLuceneSearchSpellSpellChecker_createDocumentWithNSString_withInt_withInt_(word, OrgApacheLuceneSearchSpellSpellChecker_getMinWithInt_(len), OrgApacheLuceneSearchSpellSpellChecker_getMaxWithInt_(len));
          [writer addDocumentWithJavaLangIterable:doc];
        }
        continue_terms: ;
      }
    }
    @finally {
      OrgApacheLuceneSearchSpellSpellChecker_releaseSearcherWithOrgApacheLuceneSearchIndexSearcher_(self, indexSearcher);
    }
    if (fullMerge) {
      [writer forceMergeWithInt:1];
    }
    [writer close];
    OrgApacheLuceneSearchSpellSpellChecker_swapSearcherWithOrgApacheLuceneStoreDirectory_(self, dir);
  }
}

+ (jint)getMinWithInt:(jint)l {
  return OrgApacheLuceneSearchSpellSpellChecker_getMinWithInt_(l);
}

+ (jint)getMaxWithInt:(jint)l {
  return OrgApacheLuceneSearchSpellSpellChecker_getMaxWithInt_(l);
}

+ (OrgApacheLuceneDocumentDocument *)createDocumentWithNSString:(NSString *)text
                                                        withInt:(jint)ng1
                                                        withInt:(jint)ng2 {
  return OrgApacheLuceneSearchSpellSpellChecker_createDocumentWithNSString_withInt_withInt_(text, ng1, ng2);
}

+ (void)addGramWithNSString:(NSString *)text
withOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc
                    withInt:(jint)ng1
                    withInt:(jint)ng2 {
  OrgApacheLuceneSearchSpellSpellChecker_addGramWithNSString_withOrgApacheLuceneDocumentDocument_withInt_withInt_(text, doc, ng1, ng2);
}

- (OrgApacheLuceneSearchIndexSearcher *)obtainSearcher {
  return OrgApacheLuceneSearchSpellSpellChecker_obtainSearcher(self);
}

- (void)releaseSearcherWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)aSearcher {
  OrgApacheLuceneSearchSpellSpellChecker_releaseSearcherWithOrgApacheLuceneSearchIndexSearcher_(self, aSearcher);
}

- (void)ensureOpen {
  OrgApacheLuceneSearchSpellSpellChecker_ensureOpen(self);
}

- (void)close {
  @synchronized(searcherLock_) {
    OrgApacheLuceneSearchSpellSpellChecker_ensureOpen(self);
    JreAssignVolatileBoolean(&closed_, true);
    if (searcher_ != nil) {
      [((OrgApacheLuceneIndexIndexReader *) nil_chk([searcher_ getIndexReader])) close];
    }
    JreStrongAssign(&searcher_, nil);
  }
}

- (void)swapSearcherWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir {
  OrgApacheLuceneSearchSpellSpellChecker_swapSearcherWithOrgApacheLuceneStoreDirectory_(self, dir);
}

- (OrgApacheLuceneSearchIndexSearcher *)createSearcherWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir {
  return [new_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneStoreDirectory_(dir)) autorelease];
}

- (jboolean)isClosed {
  return JreLoadVolatileBoolean(&closed_);
}

- (void)dealloc {
  RELEASE_(spellIndex_);
  RELEASE_(searcher_);
  RELEASE_(searcherLock_);
  RELEASE_(modifyCurrentIndexLock_);
  RELEASE_(sd_);
  RELEASE_(comparator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneSearchSpellStringDistance:", "SpellChecker", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneStoreDirectory:", "SpellChecker", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneSearchSpellStringDistance:withJavaUtilComparator:", "SpellChecker", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "setSpellIndexWithOrgApacheLuceneStoreDirectory:", "setSpellIndex", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "setComparatorWithJavaUtilComparator:", "setComparator", "V", 0x1, NULL, NULL },
    { "getComparator", NULL, "Ljava.util.Comparator;", 0x1, NULL, NULL },
    { "setStringDistanceWithOrgApacheLuceneSearchSpellStringDistance:", "setStringDistance", "V", 0x1, NULL, NULL },
    { "getStringDistance", NULL, "Lorg.apache.lucene.search.spell.StringDistance;", 0x1, NULL, NULL },
    { "setAccuracyWithFloat:", "setAccuracy", "V", 0x1, NULL, NULL },
    { "getAccuracy", NULL, "F", 0x1, NULL, NULL },
    { "suggestSimilarWithNSString:withInt:", "suggestSimilar", "[Ljava.lang.String;", 0x1, "Ljava.io.IOException;", NULL },
    { "suggestSimilarWithNSString:withInt:withFloat:", "suggestSimilar", "[Ljava.lang.String;", 0x1, "Ljava.io.IOException;", NULL },
    { "suggestSimilarWithNSString:withInt:withOrgApacheLuceneIndexIndexReader:withNSString:withOrgApacheLuceneSearchSpellSuggestModeEnum:", "suggestSimilar", "[Ljava.lang.String;", 0x1, "Ljava.io.IOException;", NULL },
    { "suggestSimilarWithNSString:withInt:withOrgApacheLuceneIndexIndexReader:withNSString:withOrgApacheLuceneSearchSpellSuggestModeEnum:withFloat:", "suggestSimilar", "[Ljava.lang.String;", 0x1, "Ljava.io.IOException;", NULL },
    { "addWithOrgApacheLuceneSearchBooleanQuery_Builder:withNSString:withNSString:withFloat:", "add", "V", 0xa, NULL, NULL },
    { "addWithOrgApacheLuceneSearchBooleanQuery_Builder:withNSString:withNSString:", "add", "V", 0xa, NULL, NULL },
    { "formGramsWithNSString:withInt:", "formGrams", "[Ljava.lang.String;", 0xa, NULL, NULL },
    { "clearIndex", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "existWithNSString:", "exist", "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "indexDictionaryWithOrgApacheLuceneSearchSpellDictionary:withOrgApacheLuceneIndexIndexWriterConfig:withBoolean:", "indexDictionary", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "getMinWithInt:", "getMin", "I", 0xa, NULL, NULL },
    { "getMaxWithInt:", "getMax", "I", 0xa, NULL, NULL },
    { "createDocumentWithNSString:withInt:withInt:", "createDocument", "Lorg.apache.lucene.document.Document;", 0xa, NULL, NULL },
    { "addGramWithNSString:withOrgApacheLuceneDocumentDocument:withInt:withInt:", "addGram", "V", 0xa, NULL, NULL },
    { "obtainSearcher", NULL, "Lorg.apache.lucene.search.IndexSearcher;", 0x2, NULL, NULL },
    { "releaseSearcherWithOrgApacheLuceneSearchIndexSearcher:", "releaseSearcher", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "ensureOpen", NULL, "V", 0x2, NULL, NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "swapSearcherWithOrgApacheLuceneStoreDirectory:", "swapSearcher", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "createSearcherWithOrgApacheLuceneStoreDirectory:", "createSearcher", "Lorg.apache.lucene.search.IndexSearcher;", 0x0, "Ljava.io.IOException;", NULL },
    { "isClosed", NULL, "Z", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_ACCURACY", "DEFAULT_ACCURACY", 0x19, "F", NULL, NULL, .constantValue.asFloat = OrgApacheLuceneSearchSpellSpellChecker_DEFAULT_ACCURACY },
    { "F_WORD_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneSearchSpellSpellChecker_F_WORD_, NULL, .constantValue.asLong = 0 },
    { "spellIndex_", NULL, 0x0, "Lorg.apache.lucene.store.Directory;", NULL, NULL, .constantValue.asLong = 0 },
    { "bStart_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "bEnd_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "searcher_", NULL, 0x2, "Lorg.apache.lucene.search.IndexSearcher;", NULL, NULL, .constantValue.asLong = 0 },
    { "searcherLock_", NULL, 0x12, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "modifyCurrentIndexLock_", NULL, 0x12, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "closed_", NULL, 0x42, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "accuracy_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "sd_", NULL, 0x2, "Lorg.apache.lucene.search.spell.StringDistance;", NULL, NULL, .constantValue.asLong = 0 },
    { "comparator_", NULL, 0x2, "Ljava.util.Comparator;", NULL, "Ljava/util/Comparator<Lorg/apache/lucene/search/spell/SuggestWord;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellSpellChecker = { 2, "SpellChecker", "org.apache.lucene.search.spell", NULL, 0x1, 31, methods, 12, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpellSpellChecker;
}

@end

void OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_(OrgApacheLuceneSearchSpellSpellChecker *self, OrgApacheLuceneStoreDirectory *spellIndex, id<OrgApacheLuceneSearchSpellStringDistance> sd) {
  OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_withJavaUtilComparator_(self, spellIndex, sd, JreLoadStatic(OrgApacheLuceneSearchSpellSuggestWordQueue, DEFAULT_COMPARATOR_));
}

OrgApacheLuceneSearchSpellSpellChecker *new_OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_(OrgApacheLuceneStoreDirectory *spellIndex, id<OrgApacheLuceneSearchSpellStringDistance> sd) {
  OrgApacheLuceneSearchSpellSpellChecker *self = [OrgApacheLuceneSearchSpellSpellChecker alloc];
  OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_(self, spellIndex, sd);
  return self;
}

void OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneSearchSpellSpellChecker *self, OrgApacheLuceneStoreDirectory *spellIndex) {
  OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_(self, spellIndex, [new_OrgApacheLuceneSearchSpellLevensteinDistance_init() autorelease]);
}

OrgApacheLuceneSearchSpellSpellChecker *new_OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *spellIndex) {
  OrgApacheLuceneSearchSpellSpellChecker *self = [OrgApacheLuceneSearchSpellSpellChecker alloc];
  OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_(self, spellIndex);
  return self;
}

void OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_withJavaUtilComparator_(OrgApacheLuceneSearchSpellSpellChecker *self, OrgApacheLuceneStoreDirectory *spellIndex, id<OrgApacheLuceneSearchSpellStringDistance> sd, id<JavaUtilComparator> comparator) {
  NSObject_init(self);
  self->bStart_ = 2.0f;
  self->bEnd_ = 1.0f;
  JreStrongAssignAndConsume(&self->searcherLock_, new_NSObject_init());
  JreStrongAssignAndConsume(&self->modifyCurrentIndexLock_, new_NSObject_init());
  JreAssignVolatileBoolean(&self->closed_, false);
  self->accuracy_ = OrgApacheLuceneSearchSpellSpellChecker_DEFAULT_ACCURACY;
  [self setSpellIndexWithOrgApacheLuceneStoreDirectory:spellIndex];
  [self setStringDistanceWithOrgApacheLuceneSearchSpellStringDistance:sd];
  JreStrongAssign(&self->comparator_, comparator);
}

OrgApacheLuceneSearchSpellSpellChecker *new_OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_withJavaUtilComparator_(OrgApacheLuceneStoreDirectory *spellIndex, id<OrgApacheLuceneSearchSpellStringDistance> sd, id<JavaUtilComparator> comparator) {
  OrgApacheLuceneSearchSpellSpellChecker *self = [OrgApacheLuceneSearchSpellSpellChecker alloc];
  OrgApacheLuceneSearchSpellSpellChecker_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSpellStringDistance_withJavaUtilComparator_(self, spellIndex, sd, comparator);
  return self;
}

void OrgApacheLuceneSearchSpellSpellChecker_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withNSString_withNSString_withFloat_(OrgApacheLuceneSearchBooleanQuery_Builder *q, NSString *name, NSString *value, jfloat boost) {
  OrgApacheLuceneSearchSpellSpellChecker_initialize();
  OrgApacheLuceneSearchQuery *tq = [new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_([new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(name, value) autorelease]) autorelease];
  [tq setBoostWithFloat:boost];
  [((OrgApacheLuceneSearchBooleanQuery_Builder *) nil_chk(q)) addWithOrgApacheLuceneSearchBooleanClause:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(tq, JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
}

void OrgApacheLuceneSearchSpellSpellChecker_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withNSString_withNSString_(OrgApacheLuceneSearchBooleanQuery_Builder *q, NSString *name, NSString *value) {
  OrgApacheLuceneSearchSpellSpellChecker_initialize();
  [((OrgApacheLuceneSearchBooleanQuery_Builder *) nil_chk(q)) addWithOrgApacheLuceneSearchBooleanClause:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_([new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_([new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(name, value) autorelease]) autorelease], JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
}

IOSObjectArray *OrgApacheLuceneSearchSpellSpellChecker_formGramsWithNSString_withInt_(NSString *text, jint ng) {
  OrgApacheLuceneSearchSpellSpellChecker_initialize();
  jint len = ((jint) [((NSString *) nil_chk(text)) length]);
  IOSObjectArray *res = [IOSObjectArray arrayWithLength:len - ng + 1 type:NSString_class_()];
  for (jint i = 0; i < len - ng + 1; i++) {
    IOSObjectArray_Set(res, i, [text substring:i endIndex:i + ng]);
  }
  return res;
}

jint OrgApacheLuceneSearchSpellSpellChecker_getMinWithInt_(jint l) {
  OrgApacheLuceneSearchSpellSpellChecker_initialize();
  if (l > 5) {
    return 3;
  }
  if (l == 5) {
    return 2;
  }
  return 1;
}

jint OrgApacheLuceneSearchSpellSpellChecker_getMaxWithInt_(jint l) {
  OrgApacheLuceneSearchSpellSpellChecker_initialize();
  if (l > 5) {
    return 4;
  }
  if (l == 5) {
    return 3;
  }
  return 2;
}

OrgApacheLuceneDocumentDocument *OrgApacheLuceneSearchSpellSpellChecker_createDocumentWithNSString_withInt_withInt_(NSString *text, jint ng1, jint ng2) {
  OrgApacheLuceneSearchSpellSpellChecker_initialize();
  OrgApacheLuceneDocumentDocument *doc = [new_OrgApacheLuceneDocumentDocument_init() autorelease];
  OrgApacheLuceneDocumentField *f = [new_OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_StoreEnum_(OrgApacheLuceneSearchSpellSpellChecker_F_WORD_, text, JreLoadStatic(OrgApacheLuceneDocumentField_StoreEnum, YES)) autorelease];
  [doc addWithOrgApacheLuceneIndexIndexableField:f];
  OrgApacheLuceneSearchSpellSpellChecker_addGramWithNSString_withOrgApacheLuceneDocumentDocument_withInt_withInt_(text, doc, ng1, ng2);
  return doc;
}

void OrgApacheLuceneSearchSpellSpellChecker_addGramWithNSString_withOrgApacheLuceneDocumentDocument_withInt_withInt_(NSString *text, OrgApacheLuceneDocumentDocument *doc, jint ng1, jint ng2) {
  OrgApacheLuceneSearchSpellSpellChecker_initialize();
  jint len = ((jint) [((NSString *) nil_chk(text)) length]);
  for (jint ng = ng1; ng <= ng2; ng++) {
    NSString *key = JreStrcat("$I", @"gram", ng);
    NSString *end = nil;
    for (jint i = 0; i < len - ng + 1; i++) {
      NSString *gram = [text substring:i endIndex:i + ng];
      OrgApacheLuceneDocumentFieldType *ft = [new_OrgApacheLuceneDocumentFieldType_initWithOrgApacheLuceneDocumentFieldType_(JreLoadStatic(OrgApacheLuceneDocumentStringField, TYPE_NOT_STORED_)) autorelease];
      [ft setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:JreLoadStatic(OrgApacheLuceneIndexIndexOptionsEnum, DOCS_AND_FREQS)];
      OrgApacheLuceneDocumentField *ngramField = [new_OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(key, gram, ft) autorelease];
      [((OrgApacheLuceneDocumentDocument *) nil_chk(doc)) addWithOrgApacheLuceneIndexIndexableField:ngramField];
      if (i == 0) {
        OrgApacheLuceneDocumentField *startField = [new_OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_StoreEnum_(JreStrcat("$I", @"start", ng), gram, JreLoadStatic(OrgApacheLuceneDocumentField_StoreEnum, NO)) autorelease];
        [doc addWithOrgApacheLuceneIndexIndexableField:startField];
      }
      end = gram;
    }
    if (end != nil) {
      OrgApacheLuceneDocumentField *endField = [new_OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_StoreEnum_(JreStrcat("$I", @"end", ng), end, JreLoadStatic(OrgApacheLuceneDocumentField_StoreEnum, NO)) autorelease];
      [((OrgApacheLuceneDocumentDocument *) nil_chk(doc)) addWithOrgApacheLuceneIndexIndexableField:endField];
    }
  }
}

OrgApacheLuceneSearchIndexSearcher *OrgApacheLuceneSearchSpellSpellChecker_obtainSearcher(OrgApacheLuceneSearchSpellSpellChecker *self) {
  @synchronized(self->searcherLock_) {
    OrgApacheLuceneSearchSpellSpellChecker_ensureOpen(self);
    [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(self->searcher_)) getIndexReader])) incRef];
    return self->searcher_;
  }
}

void OrgApacheLuceneSearchSpellSpellChecker_releaseSearcherWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchSpellSpellChecker *self, OrgApacheLuceneSearchIndexSearcher *aSearcher) {
  [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(aSearcher)) getIndexReader])) decRef];
}

void OrgApacheLuceneSearchSpellSpellChecker_ensureOpen(OrgApacheLuceneSearchSpellSpellChecker *self) {
  if (JreLoadVolatileBoolean(&self->closed_)) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"Spellchecker has been closed") autorelease];
  }
}

void OrgApacheLuceneSearchSpellSpellChecker_swapSearcherWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneSearchSpellSpellChecker *self, OrgApacheLuceneStoreDirectory *dir) {
  OrgApacheLuceneSearchIndexSearcher *indexSearcher = [self createSearcherWithOrgApacheLuceneStoreDirectory:dir];
  @synchronized(self->searcherLock_) {
    if (JreLoadVolatileBoolean(&self->closed_)) {
      [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(indexSearcher)) getIndexReader])) close];
      @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"Spellchecker has been closed") autorelease];
    }
    if (self->searcher_ != nil) {
      [((OrgApacheLuceneIndexIndexReader *) nil_chk([self->searcher_ getIndexReader])) close];
    }
    JreStrongAssign(&self->searcher_, indexSearcher);
    JreStrongAssign(&self->spellIndex_, dir);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellSpellChecker)
