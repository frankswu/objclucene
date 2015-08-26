//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/blocktreeords/OrdsIntersectTermsEnumFrame.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_INCLUDE_ALL")
#if OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_RESTRICT
#define OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_RESTRICT

#if !defined (_OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_) && (OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_INCLUDE_ALL || OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_INCLUDE)
#define _OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_

@class IOSByteArray;
@class IOSLongArray;
@class OrgApacheLuceneCodecsBlockTermState;
@class OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output;
@class OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnum;
@class OrgApacheLuceneStoreByteArrayDataInput;
@class OrgApacheLuceneUtilAutomatonTransition;
@class OrgApacheLuceneUtilFstFST_Arc;

@interface OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame : NSObject {
 @public
  jint ord_;
  jlong fp_;
  jlong fpOrig_;
  jlong fpEnd_;
  jlong lastSubFP_;
  jint state_;
  jint metaDataUpto_;
  IOSByteArray *suffixBytes_;
  OrgApacheLuceneStoreByteArrayDataInput *suffixesReader_;
  IOSByteArray *statBytes_;
  OrgApacheLuceneStoreByteArrayDataInput *statsReader_;
  IOSByteArray *floorData_;
  OrgApacheLuceneStoreByteArrayDataInput *floorDataReader_;
  jint prefix_;
  jint entCount_;
  jint nextEnt_;
  jlong termOrdOrig_;
  jlong termOrd_;
  jboolean isLastInFloor_;
  jboolean isLeafBlock_;
  jint numFollowFloorBlocks_;
  jint nextFloorLabel_;
  OrgApacheLuceneUtilAutomatonTransition *transition_;
  jint curTransitionMax_;
  jint transitionIndex_;
  jint transitionCount_;
  OrgApacheLuceneUtilFstFST_Arc *arc_;
  OrgApacheLuceneCodecsBlockTermState *termState_;
  IOSLongArray *longs_;
  IOSByteArray *bytes_;
  OrgApacheLuceneStoreByteArrayDataInput *bytesReader_;
  OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *outputPrefix_;
  jint startBytePos_;
  jint suffix_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnum:(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnum *)ite
                                                                         withInt:(jint)ord;

- (void)decodeMetaData;

- (jint)getTermBlockOrd;

- (jboolean)next;

- (jboolean)nextLeaf;

- (jboolean)nextNonLeaf;

- (void)setStateWithInt:(jint)state;

#pragma mark Package-Private

- (void)load__WithOrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)output;

- (void)loadNextFloorBlock;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, suffixBytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, suffixesReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, statBytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, statsReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, floorData_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, floorDataReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, transition_, OrgApacheLuceneUtilAutomatonTransition *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, arc_, OrgApacheLuceneUtilFstFST_Arc *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, termState_, OrgApacheLuceneCodecsBlockTermState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, longs_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, bytes_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, bytesReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame, outputPrefix_, OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnum_withInt_(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame *self, OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnum *ite, jint ord);

FOUNDATION_EXPORT OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame *new_OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnum_withInt_(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnum *ite, jint ord) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsBlocktreeordsOrdsIntersectTermsEnumFrame_INCLUDE_ALL")