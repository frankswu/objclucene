//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/OffsetAttribute.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_RESTRICT
#define OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_) && (OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_INCLUDE_ALL || OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_INCLUDE)
#define _OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_

#define OrgApacheLuceneUtilAttribute_RESTRICT 1
#define OrgApacheLuceneUtilAttribute_INCLUDE 1
#include "org/apache/lucene/util/Attribute.h"

@protocol OrgApacheLuceneAnalysisTokenattributesOffsetAttribute < OrgApacheLuceneUtilAttribute, NSObject, JavaObject >

- (jint)startOffset;

- (void)setOffsetWithInt:(jint)startOffset
                 withInt:(jint)endOffset;

- (jint)endOffset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenattributesOffsetAttribute)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenattributesOffsetAttribute)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_INCLUDE_ALL")