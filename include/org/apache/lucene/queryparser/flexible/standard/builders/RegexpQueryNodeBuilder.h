//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/builders/RegexpQueryNodeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_RESTRICT
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_) && (OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_INCLUDE_ALL || OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_INCLUDE)
#define _OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_

#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_RESTRICT 1
#define OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder_INCLUDE 1
#include "org/apache/lucene/queryparser/flexible/standard/builders/StandardQueryBuilder.h"

@class OrgApacheLuceneSearchRegexpQuery;
@protocol OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode;

@interface OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder : NSObject < OrgApacheLuceneQueryparserFlexibleStandardBuildersStandardQueryBuilder >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchRegexpQuery *)buildWithOrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode:(id<OrgApacheLuceneQueryparserFlexibleCoreNodesQueryNode>)queryNode;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_init(OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder *new_OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserFlexibleStandardBuildersRegexpQueryNodeBuilder_INCLUDE_ALL")