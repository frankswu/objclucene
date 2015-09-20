//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexWriterConfig.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexIndexWriterConfig_INCLUDE_ALL")
#if OrgApacheLuceneIndexIndexWriterConfig_RESTRICT
#define OrgApacheLuceneIndexIndexWriterConfig_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexIndexWriterConfig_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexIndexWriterConfig_RESTRICT

#if !defined (_OrgApacheLuceneIndexIndexWriterConfig_) && (OrgApacheLuceneIndexIndexWriterConfig_INCLUDE_ALL || OrgApacheLuceneIndexIndexWriterConfig_INCLUDE)
#define _OrgApacheLuceneIndexIndexWriterConfig_

#define OrgApacheLuceneIndexLiveIndexWriterConfig_RESTRICT 1
#define OrgApacheLuceneIndexLiveIndexWriterConfig_INCLUDE 1
#include "org/apache/lucene/index/LiveIndexWriterConfig.h"

@class JavaIoPrintStream;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneCodecsCodec;
@class OrgApacheLuceneIndexDocumentsWriterPerThreadPool;
@class OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain;
@class OrgApacheLuceneIndexFlushPolicy;
@class OrgApacheLuceneIndexIndexCommit;
@class OrgApacheLuceneIndexIndexDeletionPolicy;
@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum;
@class OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer;
@class OrgApacheLuceneIndexMergePolicy;
@class OrgApacheLuceneIndexMergeScheduler;
@class OrgApacheLuceneSearchSimilaritiesSimilarity;
@class OrgApacheLuceneUtilInfoStream;

#define OrgApacheLuceneIndexIndexWriterConfig_DISABLE_AUTO_FLUSH -1
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_MAX_BUFFERED_DELETE_TERMS -1
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_MAX_BUFFERED_DOCS -1
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_RAM_BUFFER_SIZE_MB 16.0
#define OrgApacheLuceneIndexIndexWriterConfig_WRITE_LOCK_TIMEOUT 0LL
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_READER_POOLING false
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB 1945
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_USE_COMPOUND_FILE_SYSTEM true
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_COMMIT_ON_CLOSE true

@interface OrgApacheLuceneIndexIndexWriterConfig : OrgApacheLuceneIndexLiveIndexWriterConfig

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer;

- (OrgApacheLuceneCodecsCodec *)getCodec;

- (OrgApacheLuceneIndexIndexCommit *)getIndexCommit;

- (OrgApacheLuceneIndexIndexDeletionPolicy *)getIndexDeletionPolicy;

- (OrgApacheLuceneUtilInfoStream *)getInfoStream;

- (jint)getMaxBufferedDeleteTerms;

- (jint)getMaxBufferedDocs;

- (OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer *)getMergedSegmentWarmer;

- (OrgApacheLuceneIndexMergePolicy *)getMergePolicy;

- (OrgApacheLuceneIndexMergeScheduler *)getMergeScheduler;

- (OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *)getOpenMode;

- (jdouble)getRAMBufferSizeMB;

- (jint)getRAMPerThreadHardLimitMB;

- (jboolean)getReaderPooling;

- (OrgApacheLuceneSearchSimilaritiesSimilarity *)getSimilarity;

- (jlong)getWriteLockTimeout;

- (OrgApacheLuceneIndexIndexWriterConfig *)setCodecWithOrgApacheLuceneCodecsCodec:(OrgApacheLuceneCodecsCodec *)codec;

- (OrgApacheLuceneIndexIndexWriterConfig *)setCommitOnCloseWithBoolean:(jboolean)commitOnClose;

- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexCommitWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexDeletionPolicyWithOrgApacheLuceneIndexIndexDeletionPolicy:(OrgApacheLuceneIndexIndexDeletionPolicy *)delPolicy;

- (OrgApacheLuceneIndexIndexWriterConfig *)setInfoStreamWithOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream;

- (OrgApacheLuceneIndexIndexWriterConfig *)setInfoStreamWithJavaIoPrintStream:(JavaIoPrintStream *)printStream;

- (OrgApacheLuceneIndexIndexWriterConfig *)setMaxBufferedDeleteTermsWithInt:(jint)maxBufferedDeleteTerms;

- (OrgApacheLuceneIndexIndexWriterConfig *)setMaxBufferedDocsWithInt:(jint)maxBufferedDocs;

- (OrgApacheLuceneIndexIndexWriterConfig *)setMergedSegmentWarmerWithOrgApacheLuceneIndexIndexWriter_IndexReaderWarmer:(OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer *)mergeSegmentWarmer;

- (OrgApacheLuceneIndexIndexWriterConfig *)setMergePolicyWithOrgApacheLuceneIndexMergePolicy:(OrgApacheLuceneIndexMergePolicy *)mergePolicy;

- (OrgApacheLuceneIndexIndexWriterConfig *)setMergeSchedulerWithOrgApacheLuceneIndexMergeScheduler:(OrgApacheLuceneIndexMergeScheduler *)mergeScheduler;

- (OrgApacheLuceneIndexIndexWriterConfig *)setOpenModeWithOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum:(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *)openMode;

- (OrgApacheLuceneIndexIndexWriterConfig *)setRAMBufferSizeMBWithDouble:(jdouble)ramBufferSizeMB;

- (OrgApacheLuceneIndexIndexWriterConfig *)setRAMPerThreadHardLimitMBWithInt:(jint)perThreadHardLimitMB;

- (OrgApacheLuceneIndexIndexWriterConfig *)setReaderPoolingWithBoolean:(jboolean)readerPooling;

- (OrgApacheLuceneIndexIndexWriterConfig *)setSimilarityWithOrgApacheLuceneSearchSimilaritiesSimilarity:(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity;

- (OrgApacheLuceneIndexIndexWriterConfig *)setUseCompoundFileWithBoolean:(jboolean)useCompoundFile;

- (OrgApacheLuceneIndexIndexWriterConfig *)setWriteLockTimeoutWithLong:(jlong)writeLockTimeout;

- (NSString *)description;

#pragma mark Package-Private

- (OrgApacheLuceneIndexFlushPolicy *)getFlushPolicy;

- (OrgApacheLuceneIndexDocumentsWriterPerThreadPool *)getIndexerThreadPool;

- (OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *)getIndexingChain;

- (OrgApacheLuceneIndexIndexWriterConfig *)setFlushPolicyWithOrgApacheLuceneIndexFlushPolicy:(OrgApacheLuceneIndexFlushPolicy *)flushPolicy;

- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexerThreadPoolWithOrgApacheLuceneIndexDocumentsWriterPerThreadPool:(OrgApacheLuceneIndexDocumentsWriterPerThreadPool *)threadPool;

- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexingChainWithOrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain:(OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *)indexingChain;

- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexWriterWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexWriterConfig)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexWriterConfig, DISABLE_AUTO_FLUSH, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_MAX_BUFFERED_DELETE_TERMS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_MAX_BUFFERED_DOCS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_RAM_BUFFER_SIZE_MB, jdouble)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexWriterConfig, WRITE_LOCK_TIMEOUT, jlong)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_READER_POOLING, jboolean)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_USE_COMPOUND_FILE_SYSTEM, jboolean)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_COMMIT_ON_CLOSE, jboolean)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneIndexIndexWriterConfig *self, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriterConfig *new_OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexWriterConfig)

#endif

#if !defined (_OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_) && (OrgApacheLuceneIndexIndexWriterConfig_INCLUDE_ALL || OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_INCLUDE)
#define _OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneIndexIndexWriterConfig_OpenMode) {
  OrgApacheLuceneIndexIndexWriterConfig_OpenMode_CREATE = 0,
  OrgApacheLuceneIndexIndexWriterConfig_OpenMode_APPEND = 1,
  OrgApacheLuceneIndexIndexWriterConfig_OpenMode_CREATE_OR_APPEND = 2,
};

@interface OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values();

+ (OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum)

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values_[];

#define OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_CREATE OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values_[OrgApacheLuceneIndexIndexWriterConfig_OpenMode_CREATE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum, CREATE)

#define OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_APPEND OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values_[OrgApacheLuceneIndexIndexWriterConfig_OpenMode_APPEND]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum, APPEND)

#define OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_CREATE_OR_APPEND OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values_[OrgApacheLuceneIndexIndexWriterConfig_OpenMode_CREATE_OR_APPEND]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum, CREATE_OR_APPEND)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum)

#endif

#pragma pop_macro("OrgApacheLuceneIndexIndexWriterConfig_INCLUDE_ALL")
