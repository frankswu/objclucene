//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/charfilter/NormalizeCharMap.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/TreeMap.h"
#include "org/apache/lucene/analysis/charfilter/NormalizeCharMap.h"
#include "org/apache/lucene/util/CharsRef.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/IntsRefBuilder.h"
#include "org/apache/lucene/util/fst/Builder.h"
#include "org/apache/lucene/util/fst/CharSequenceOutputs.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/Outputs.h"
#include "org/apache/lucene/util/fst/Util.h"

@interface OrgApacheLuceneAnalysisCharfilterNormalizeCharMap ()

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)map;

@end

__attribute__((unused)) static void OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *self, OrgApacheLuceneUtilFstFST *map);

__attribute__((unused)) static OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *new_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *map) NS_RETURNS_RETAINED;

@interface OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder () {
 @public
  id<JavaUtilMap> pendingPairs_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder, pendingPairs_, id<JavaUtilMap>)

@implementation OrgApacheLuceneAnalysisCharfilterNormalizeCharMap

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)map {
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(self, map);
  return self;
}

- (void)dealloc {
  RELEASE_(map_);
  RELEASE_(cachedRootArcs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilFstFST:", "NormalizeCharMap", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "map_", NULL, 0x10, "Lorg.apache.lucene.util.fst.FST;", NULL, "Lorg/apache/lucene/util/fst/FST<Lorg/apache/lucene/util/CharsRef;>;", .constantValue.asLong = 0 },
    { "cachedRootArcs_", NULL, 0x10, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Character;Lorg/apache/lucene/util/fst/FST$Arc<Lorg/apache/lucene/util/CharsRef;>;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.charfilter.NormalizeCharMap$Builder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharfilterNormalizeCharMap = { 2, "NormalizeCharMap", "org.apache.lucene.analysis.charfilter", NULL, 0x1, 1, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap;
}

@end

void OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *self, OrgApacheLuceneUtilFstFST *map) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->cachedRootArcs_, new_JavaUtilHashMap_init());
  JreStrongAssign(&self->map_, map);
  if (map != nil) {
    @try {
      OrgApacheLuceneUtilFstFST_Arc *scratchArc = [new_OrgApacheLuceneUtilFstFST_Arc_init() autorelease];
      OrgApacheLuceneUtilFstFST_BytesReader *fstReader = [map getBytesReader];
      [map getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:scratchArc];
      if (OrgApacheLuceneUtilFstFST_targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc_(scratchArc)) {
        [map readFirstRealTargetArcWithLong:scratchArc->target_ withOrgApacheLuceneUtilFstFST_Arc:scratchArc withOrgApacheLuceneUtilFstFST_BytesReader:fstReader];
        while (true) {
          JreAssert((scratchArc->label_ != OrgApacheLuceneUtilFstFST_END_LABEL), (@"org/apache/lucene/analysis/charfilter/NormalizeCharMap.java:58 condition failed: assert scratchArc.label != FST.END_LABEL;"));
          [self->cachedRootArcs_ putWithId:JavaLangCharacter_valueOfWithChar_((jchar) scratchArc->label_) withId:[((OrgApacheLuceneUtilFstFST_Arc *) [new_OrgApacheLuceneUtilFstFST_Arc_init() autorelease]) copyFromWithOrgApacheLuceneUtilFstFST_Arc:scratchArc]];
          if ([scratchArc isLast]) {
            break;
          }
          [map readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:scratchArc withOrgApacheLuceneUtilFstFST_BytesReader:fstReader];
        }
      }
    }
    @catch (JavaIoIOException *ioe) {
      @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe) autorelease];
    }
  }
}

OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *new_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *map) {
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *self = [OrgApacheLuceneAnalysisCharfilterNormalizeCharMap alloc];
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(self, map);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap)

@implementation OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder

- (void)addWithNSString:(NSString *)match
           withNSString:(NSString *)replacement {
  if (((jint) [((NSString *) nil_chk(match)) length]) == 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"cannot match the empty string") autorelease];
  }
  if ([((id<JavaUtilMap>) nil_chk(pendingPairs_)) containsKeyWithId:match]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"match \"", match, @"\" was already added")) autorelease];
  }
  [pendingPairs_ putWithId:match withId:replacement];
}

- (OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *)build {
  OrgApacheLuceneUtilFstFST *map;
  @try {
    OrgApacheLuceneUtilFstOutputs *outputs = OrgApacheLuceneUtilFstCharSequenceOutputs_getSingleton();
    OrgApacheLuceneUtilFstBuilder *builder = [new_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withOrgApacheLuceneUtilFstOutputs_(JreLoadStatic(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum, BYTE2), outputs) autorelease];
    OrgApacheLuceneUtilIntsRefBuilder *scratch = [new_OrgApacheLuceneUtilIntsRefBuilder_init() autorelease];
    for (id<JavaUtilMap_Entry> __strong ent in nil_chk([((id<JavaUtilMap>) nil_chk(pendingPairs_)) entrySet])) {
      [builder addWithOrgApacheLuceneUtilIntsRef:OrgApacheLuceneUtilFstUtil_toUTF16WithJavaLangCharSequence_withOrgApacheLuceneUtilIntsRefBuilder_([((id<JavaUtilMap_Entry>) nil_chk(ent)) getKey], scratch) withId:[new_OrgApacheLuceneUtilCharsRef_initWithNSString_([ent getValue]) autorelease]];
    }
    map = [builder finish];
    [pendingPairs_ clear];
  }
  @catch (JavaIoIOException *ioe) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe) autorelease];
  }
  return [new_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(map) autorelease];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(pendingPairs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addWithNSString:withNSString:", "add", "V", 0x1, NULL, NULL },
    { "build", NULL, "Lorg.apache.lucene.analysis.charfilter.NormalizeCharMap;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pendingPairs_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder = { 2, "Builder", "org.apache.lucene.analysis.charfilter", "NormalizeCharMap", 0x9, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder;
}

@end

void OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder_init(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->pendingPairs_, new_JavaUtilTreeMap_init());
}

OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder *new_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder_init() {
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder *self = [OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder alloc];
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder)
