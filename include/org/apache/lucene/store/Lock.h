//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/Lock.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreLock")
#ifdef RESTRICT_OrgApacheLuceneStoreLock
#define INCLUDE_ALL_OrgApacheLuceneStoreLock 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreLock 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreLock

#if !defined (OrgApacheLuceneStoreLock_) && (INCLUDE_ALL_OrgApacheLuceneStoreLock || defined(INCLUDE_OrgApacheLuceneStoreLock))
#define OrgApacheLuceneStoreLock_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

/*!
 @brief An interprocess mutex lock.
 <p>Typical use might look like:<pre class="prettyprint">
 try (final Lock lock = directory.obtainLock("my.lock")) {
 // ... code to execute while locked ...
 }
 
@endcode
 - seealso: Directory#obtainLock(String)
 */
@interface OrgApacheLuceneStoreLock : NSObject < JavaIoCloseable >

#pragma mark Public

- (instancetype)init;

/*!
 @brief Releases exclusive access.
 <p>
 Note that exceptions thrown from close may require
 human intervention, as it may mean the lock was no
 longer valid, or that fs permissions prevent removal
 of the lock file, or other reasons.
 <p>
  
 @throws LockReleaseFailedException optional specific exception) if 
 the lock could not be properly released.
 */
- (void)close;

/*!
 @brief Best effort check that this lock is still valid.
 Locks
 could become invalidated externally for a number of reasons,
 for example if a user deletes the lock file manually or
 when a network filesystem is in use. 
 @throws IOException if the lock is no longer valid.
 */
- (void)ensureValid;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLock)

FOUNDATION_EXPORT void OrgApacheLuceneStoreLock_init(OrgApacheLuceneStoreLock *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLock)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreLock")
