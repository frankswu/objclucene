//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/LimitedFiniteStringsIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_INCLUDE_ALL")
#if OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_RESTRICT
#define OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_RESTRICT

#if !defined (_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_) && (OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_

#define OrgApacheLuceneUtilAutomatonFiniteStringsIterator_RESTRICT 1
#define OrgApacheLuceneUtilAutomatonFiniteStringsIterator_INCLUDE 1
#include "org/apache/lucene/util/automaton/FiniteStringsIterator.h"

@class OrgApacheLuceneUtilAutomatonAutomaton;
@class OrgApacheLuceneUtilIntsRef;

@interface OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator : OrgApacheLuceneUtilAutomatonFiniteStringsIterator

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                      withInt:(jint)limit;

- (OrgApacheLuceneUtilIntsRef *)next;

- (jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator *self, OrgApacheLuceneUtilAutomatonAutomaton *a, jint limit);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator *new_OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint limit) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator)

#endif

#pragma pop_macro("OrgApacheLuceneUtilAutomatonLimitedFiniteStringsIterator_INCLUDE_ALL")