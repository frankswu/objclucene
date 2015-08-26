//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/CompiledAutomaton.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/SingleTermsEnum.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/StringHelper.h"
#include "org/apache/lucene/util/UnicodeUtil.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/ByteRunAutomaton.h"
#include "org/apache/lucene/util/automaton/CompiledAutomaton.h"
#include "org/apache/lucene/util/automaton/Operations.h"
#include "org/apache/lucene/util/automaton/Transition.h"
#include "org/apache/lucene/util/automaton/UTF32ToUTF8.h"

@interface OrgApacheLuceneUtilAutomatonCompiledAutomaton () {
 @public
  OrgApacheLuceneUtilAutomatonTransition *transition_;
}

+ (jint)findSinkStateWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton;

- (OrgApacheLuceneUtilBytesRef *)addTailWithInt:(jint)state
         withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)term
                                        withInt:(jint)idx
                                        withInt:(jint)leadLabel;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonCompiledAutomaton, transition_, OrgApacheLuceneUtilAutomatonTransition *)

__attribute__((unused)) static jint OrgApacheLuceneUtilAutomatonCompiledAutomaton_findSinkStateWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *automaton);

__attribute__((unused)) static OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilAutomatonCompiledAutomaton_addTailWithInt_withOrgApacheLuceneUtilBytesRefBuilder_withInt_withInt_(OrgApacheLuceneUtilAutomatonCompiledAutomaton *self, jint state, OrgApacheLuceneUtilBytesRefBuilder *term, jint idx, jint leadLabel);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum *new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation OrgApacheLuceneUtilAutomatonCompiledAutomaton

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(self, automaton);
  return self;
}

+ (jint)findSinkStateWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton {
  return OrgApacheLuceneUtilAutomatonCompiledAutomaton_findSinkStateWithOrgApacheLuceneUtilAutomatonAutomaton_(automaton);
}

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                                          withJavaLangBoolean:(JavaLangBoolean *)finite
                                                  withBoolean:(jboolean)simplify {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_(self, automaton, finite, simplify);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)automaton
                                          withJavaLangBoolean:(JavaLangBoolean *)finite
                                                  withBoolean:(jboolean)simplify
                                                      withInt:(jint)maxDeterminizedStates
                                                  withBoolean:(jboolean)isBinary {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_withInt_withBoolean_(self, automaton, finite, simplify, maxDeterminizedStates, isBinary);
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)addTailWithInt:(jint)state
         withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)term
                                        withInt:(jint)idx
                                        withInt:(jint)leadLabel {
  return OrgApacheLuceneUtilAutomatonCompiledAutomaton_addTailWithInt_withOrgApacheLuceneUtilBytesRefBuilder_withInt_withInt_(self, state, term, idx, leadLabel);
}

- (OrgApacheLuceneIndexTermsEnum *)getTermsEnumWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms {
  switch ([type_ ordinal]) {
    case OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPE_NONE:
    return JreLoadStatic(OrgApacheLuceneIndexTermsEnum, EMPTY_);
    case OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPE_ALL:
    return [((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator];
    case OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPE_SINGLE:
    return [new_OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_([((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator], term_) autorelease];
    case OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPE_NORMAL:
    return [((OrgApacheLuceneIndexTerms *) nil_chk(terms)) intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:self withOrgApacheLuceneUtilBytesRef:nil];
    default:
    @throw [new_JavaLangRuntimeException_initWithNSString_(@"unhandled case") autorelease];
  }
}

- (OrgApacheLuceneUtilBytesRef *)floorWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)input
                               withOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)output {
  jint state = [((OrgApacheLuceneUtilAutomatonByteRunAutomaton *) nil_chk(runAutomaton_)) getInitialState];
  if (((OrgApacheLuceneUtilBytesRef *) nil_chk(input))->length_ == 0) {
    if ([runAutomaton_ isAcceptWithInt:state]) {
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(output)) clear];
      return [output get];
    }
    else {
      return nil;
    }
  }
  id<JavaUtilList> stack = [new_JavaUtilArrayList_init() autorelease];
  jint idx = 0;
  while (YES) {
    jint label = IOSByteArray_Get(nil_chk(input->bytes_), input->offset_ + idx) & (jint) 0xff;
    jint nextState = [runAutomaton_ stepWithInt:state withInt:label];
    if (idx == input->length_ - 1) {
      if (nextState != -1 && [runAutomaton_ isAcceptWithInt:nextState]) {
        [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(output)) growWithInt:1 + idx];
        [output setByteAtWithInt:idx withByte:(jbyte) label];
        [output setLengthWithInt:input->length_];
        return [output get];
      }
      else {
        nextState = -1;
      }
    }
    if (nextState == -1) {
      while (YES) {
        jint numTransitions = [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(automaton_)) getNumTransitionsWithInt:state];
        if (numTransitions == 0) {
          JreAssert(([runAutomaton_ isAcceptWithInt:state]), (@"org/apache/lucene/util/automaton/CompiledAutomaton.java:394 condition failed: assert runAutomaton.isAccept(state);"));
          [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(output)) setLengthWithInt:idx];
          return [output get];
        }
        else {
          [automaton_ getTransitionWithInt:state withInt:0 withOrgApacheLuceneUtilAutomatonTransition:transition_];
          if (label - 1 < ((OrgApacheLuceneUtilAutomatonTransition *) nil_chk(transition_))->min_) {
            if ([runAutomaton_ isAcceptWithInt:state]) {
              [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(output)) setLengthWithInt:idx];
              return [output get];
            }
            if ([stack size] == 0) {
              return nil;
            }
            else {
              state = [((JavaLangInteger *) nil_chk([stack removeWithInt:[stack size] - 1])) intValue];
              idx--;
              label = IOSByteArray_Get(input->bytes_, input->offset_ + idx) & (jint) 0xff;
            }
          }
          else {
            break;
          }
        }
      }
      return OrgApacheLuceneUtilAutomatonCompiledAutomaton_addTailWithInt_withOrgApacheLuceneUtilBytesRefBuilder_withInt_withInt_(self, state, output, idx, label);
    }
    else {
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(output)) growWithInt:1 + idx];
      [output setByteAtWithInt:idx withByte:(jbyte) label];
      [stack addWithId:JavaLangInteger_valueOfWithInt_(state)];
      state = nextState;
      idx++;
    }
  }
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 1;
  result = prime * result + ((runAutomaton_ == nil) ? 0 : ((jint) [runAutomaton_ hash]));
  result = prime * result + ((term_ == nil) ? 0 : ((jint) [term_ hash]));
  result = prime * result + ((type_ == nil) ? 0 : ((jint) [type_ hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return YES;
  if (obj == nil) return NO;
  if ([self getClass] != [nil_chk(obj) getClass]) return NO;
  OrgApacheLuceneUtilAutomatonCompiledAutomaton *other = (OrgApacheLuceneUtilAutomatonCompiledAutomaton *) check_class_cast(obj, [OrgApacheLuceneUtilAutomatonCompiledAutomaton class]);
  if (type_ != other->type_) return NO;
  if (type_ == JreLoadStatic(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum, SINGLE)) {
    if (![((OrgApacheLuceneUtilBytesRef *) nil_chk(term_)) isEqual:other->term_]) return NO;
  }
  else if (type_ == JreLoadStatic(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum, NORMAL)) {
    if (![((OrgApacheLuceneUtilAutomatonByteRunAutomaton *) nil_chk(runAutomaton_)) isEqual:other->runAutomaton_]) return NO;
  }
  return YES;
}

- (void)dealloc {
  RELEASE_(type_);
  RELEASE_(term_);
  RELEASE_(runAutomaton_);
  RELEASE_(automaton_);
  RELEASE_(commonSuffixRef_);
  RELEASE_(finite_);
  RELEASE_(transition_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilAutomatonAutomaton:", "CompiledAutomaton", NULL, 0x1, NULL, NULL },
    { "findSinkStateWithOrgApacheLuceneUtilAutomatonAutomaton:", "findSinkState", "I", 0xa, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAutomatonAutomaton:withJavaLangBoolean:withBoolean:", "CompiledAutomaton", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAutomatonAutomaton:withJavaLangBoolean:withBoolean:withInt:withBoolean:", "CompiledAutomaton", NULL, 0x1, NULL, NULL },
    { "addTailWithInt:withOrgApacheLuceneUtilBytesRefBuilder:withInt:withInt:", "addTail", "Lorg.apache.lucene.util.BytesRef;", 0x2, NULL, NULL },
    { "getTermsEnumWithOrgApacheLuceneIndexTerms:", "getTermsEnum", "Lorg.apache.lucene.index.TermsEnum;", 0x1, "Ljava.io.IOException;", NULL },
    { "floorWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRefBuilder:", "floor", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "type_", NULL, 0x11, "Lorg.apache.lucene.util.automaton.CompiledAutomaton$AUTOMATON_TYPE;", NULL, NULL, .constantValue.asLong = 0 },
    { "term_", NULL, 0x11, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "runAutomaton_", NULL, 0x11, "Lorg.apache.lucene.util.automaton.ByteRunAutomaton;", NULL, NULL, .constantValue.asLong = 0 },
    { "automaton_", NULL, 0x11, "Lorg.apache.lucene.util.automaton.Automaton;", NULL, NULL, .constantValue.asLong = 0 },
    { "commonSuffixRef_", NULL, 0x11, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "finite_", NULL, 0x11, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "sinkState_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "transition_", NULL, 0x2, "Lorg.apache.lucene.util.automaton.Transition;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.automaton.CompiledAutomaton$AUTOMATON_TYPE;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonCompiledAutomaton = { 2, "CompiledAutomaton", "org.apache.lucene.util.automaton", NULL, 0x1, 9, methods, 8, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilAutomatonCompiledAutomaton;
}

@end

void OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonCompiledAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *automaton) {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_(self, automaton, nil, YES);
}

OrgApacheLuceneUtilAutomatonCompiledAutomaton *new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *automaton) {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton *self = [OrgApacheLuceneUtilAutomatonCompiledAutomaton alloc];
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(self, automaton);
  return self;
}

jint OrgApacheLuceneUtilAutomatonCompiledAutomaton_findSinkStateWithOrgApacheLuceneUtilAutomatonAutomaton_(OrgApacheLuceneUtilAutomatonAutomaton *automaton) {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_initialize();
  jint numStates = [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(automaton)) getNumStates];
  OrgApacheLuceneUtilAutomatonTransition *t = [new_OrgApacheLuceneUtilAutomatonTransition_init() autorelease];
  jint foundState = -1;
  for (jint s = 0; s < numStates; s++) {
    if ([automaton isAcceptWithInt:s]) {
      jint count = [automaton initTransitionWithInt:s withOrgApacheLuceneUtilAutomatonTransition:t];
      jboolean isSinkState = NO;
      for (jint i = 0; i < count; i++) {
        [automaton getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:t];
        if (t->dest_ == s && t->min_ == 0 && t->max_ == (jint) 0xff) {
          isSinkState = YES;
          break;
        }
      }
      if (isSinkState) {
        foundState = s;
        break;
      }
    }
  }
  return foundState;
}

void OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_(OrgApacheLuceneUtilAutomatonCompiledAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *automaton, JavaLangBoolean *finite, jboolean simplify) {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_withInt_withBoolean_(self, automaton, finite, simplify, OrgApacheLuceneUtilAutomatonOperations_DEFAULT_MAX_DETERMINIZED_STATES, NO);
}

OrgApacheLuceneUtilAutomatonCompiledAutomaton *new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_(OrgApacheLuceneUtilAutomatonAutomaton *automaton, JavaLangBoolean *finite, jboolean simplify) {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton *self = [OrgApacheLuceneUtilAutomatonCompiledAutomaton alloc];
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_(self, automaton, finite, simplify);
  return self;
}

void OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_withInt_withBoolean_(OrgApacheLuceneUtilAutomatonCompiledAutomaton *self, OrgApacheLuceneUtilAutomatonAutomaton *automaton, JavaLangBoolean *finite, jboolean simplify, jint maxDeterminizedStates, jboolean isBinary) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->transition_, new_OrgApacheLuceneUtilAutomatonTransition_init());
  if ([((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(automaton)) getNumStates] == 0) {
    automaton = [new_OrgApacheLuceneUtilAutomatonAutomaton_init() autorelease];
    [automaton createState];
  }
  if (simplify) {
    if (OrgApacheLuceneUtilAutomatonOperations_isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton_(automaton)) {
      JreStrongAssign(&self->type_, JreLoadStatic(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum, NONE));
      JreStrongAssign(&self->term_, nil);
      JreStrongAssign(&self->commonSuffixRef_, nil);
      JreStrongAssign(&self->runAutomaton_, nil);
      JreStrongAssign(&self->automaton_, nil);
      JreStrongAssign(&self->finite_, nil);
      self->sinkState_ = -1;
      return;
    }
    jboolean isTotal;
    if (isBinary) {
      isTotal = OrgApacheLuceneUtilAutomatonOperations_isTotalWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withInt_(automaton, 0, (jint) 0xff);
    }
    else {
      isTotal = OrgApacheLuceneUtilAutomatonOperations_isTotalWithOrgApacheLuceneUtilAutomatonAutomaton_(automaton);
    }
    if (isTotal) {
      JreStrongAssign(&self->type_, JreLoadStatic(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum, ALL));
      JreStrongAssign(&self->term_, nil);
      JreStrongAssign(&self->commonSuffixRef_, nil);
      JreStrongAssign(&self->runAutomaton_, nil);
      JreStrongAssign(&self->automaton_, nil);
      JreStrongAssign(&self->finite_, nil);
      self->sinkState_ = -1;
      return;
    }
    automaton = OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(automaton, maxDeterminizedStates);
    OrgApacheLuceneUtilIntsRef *singleton = OrgApacheLuceneUtilAutomatonOperations_getSingletonWithOrgApacheLuceneUtilAutomatonAutomaton_(automaton);
    if (singleton != nil) {
      JreStrongAssign(&self->type_, JreLoadStatic(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum, SINGLE));
      JreStrongAssign(&self->commonSuffixRef_, nil);
      JreStrongAssign(&self->runAutomaton_, nil);
      JreStrongAssign(&self->automaton_, nil);
      JreStrongAssign(&self->finite_, nil);
      if (isBinary) {
        JreStrongAssign(&self->term_, OrgApacheLuceneUtilStringHelper_intsRefToBytesRefWithOrgApacheLuceneUtilIntsRef_(singleton));
      }
      else {
        JreStrongAssignAndConsume(&self->term_, new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(OrgApacheLuceneUtilUnicodeUtil_newStringWithIntArray_withInt_withInt_(singleton->ints_, singleton->offset_, singleton->length_)));
      }
      self->sinkState_ = -1;
      return;
    }
  }
  JreStrongAssign(&self->type_, JreLoadStatic(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum, NORMAL));
  JreStrongAssign(&self->term_, nil);
  if (finite == nil) {
    JreStrongAssign(&self->finite_, JavaLangBoolean_valueOfWithBoolean_(OrgApacheLuceneUtilAutomatonOperations_isFiniteWithOrgApacheLuceneUtilAutomatonAutomaton_(automaton)));
  }
  else {
    JreStrongAssign(&self->finite_, finite);
  }
  OrgApacheLuceneUtilAutomatonAutomaton *binary;
  if (isBinary) {
    binary = automaton;
  }
  else {
    binary = [((OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *) [new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init() autorelease]) convertWithOrgApacheLuceneUtilAutomatonAutomaton:automaton];
  }
  if ([((JavaLangBoolean *) nil_chk(self->finite_)) booleanValue]) {
    JreStrongAssign(&self->commonSuffixRef_, nil);
  }
  else {
    OrgApacheLuceneUtilBytesRef *suffix = OrgApacheLuceneUtilAutomatonOperations_getCommonSuffixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(binary, maxDeterminizedStates);
    if (((OrgApacheLuceneUtilBytesRef *) nil_chk(suffix))->length_ == 0) {
      JreStrongAssign(&self->commonSuffixRef_, nil);
    }
    else {
      JreStrongAssign(&self->commonSuffixRef_, suffix);
    }
  }
  JreStrongAssignAndConsume(&self->runAutomaton_, new_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(binary, YES, maxDeterminizedStates));
  JreStrongAssign(&self->automaton_, self->runAutomaton_->automaton_);
  self->sinkState_ = OrgApacheLuceneUtilAutomatonCompiledAutomaton_findSinkStateWithOrgApacheLuceneUtilAutomatonAutomaton_(self->automaton_);
}

OrgApacheLuceneUtilAutomatonCompiledAutomaton *new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_withInt_withBoolean_(OrgApacheLuceneUtilAutomatonAutomaton *automaton, JavaLangBoolean *finite, jboolean simplify, jint maxDeterminizedStates, jboolean isBinary) {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton *self = [OrgApacheLuceneUtilAutomatonCompiledAutomaton alloc];
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_withInt_withBoolean_(self, automaton, finite, simplify, maxDeterminizedStates, isBinary);
  return self;
}

OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilAutomatonCompiledAutomaton_addTailWithInt_withOrgApacheLuceneUtilBytesRefBuilder_withInt_withInt_(OrgApacheLuceneUtilAutomatonCompiledAutomaton *self, jint state, OrgApacheLuceneUtilBytesRefBuilder *term, jint idx, jint leadLabel) {
  jint maxIndex = -1;
  jint numTransitions = [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(self->automaton_)) initTransitionWithInt:state withOrgApacheLuceneUtilAutomatonTransition:self->transition_];
  for (jint i = 0; i < numTransitions; i++) {
    [self->automaton_ getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:self->transition_];
    if (((OrgApacheLuceneUtilAutomatonTransition *) nil_chk(self->transition_))->min_ < leadLabel) {
      maxIndex = i;
    }
    else {
      break;
    }
  }
  JreAssert((maxIndex != -1), (@"org/apache/lucene/util/automaton/CompiledAutomaton.java:279 condition failed: assert maxIndex != -1;"));
  [self->automaton_ getTransitionWithInt:state withInt:maxIndex withOrgApacheLuceneUtilAutomatonTransition:self->transition_];
  jint floorLabel;
  if (((OrgApacheLuceneUtilAutomatonTransition *) nil_chk(self->transition_))->max_ > leadLabel - 1) {
    floorLabel = leadLabel - 1;
  }
  else {
    floorLabel = self->transition_->max_;
  }
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(term)) growWithInt:1 + idx];
  [term setByteAtWithInt:idx withByte:(jbyte) floorLabel];
  state = self->transition_->dest_;
  idx++;
  while (YES) {
    numTransitions = [self->automaton_ getNumTransitionsWithInt:state];
    if (numTransitions == 0) {
      JreAssert(([((OrgApacheLuceneUtilAutomatonByteRunAutomaton *) nil_chk(self->runAutomaton_)) isAcceptWithInt:state]), (@"org/apache/lucene/util/automaton/CompiledAutomaton.java:303 condition failed: assert runAutomaton.isAccept(state);"));
      [term setLengthWithInt:idx];
      return [term get];
    }
    else {
      [self->automaton_ getTransitionWithInt:state withInt:numTransitions - 1 withOrgApacheLuceneUtilAutomatonTransition:self->transition_];
      [term growWithInt:1 + idx];
      [term setByteAtWithInt:idx withByte:(jbyte) self->transition_->max_];
      state = self->transition_->dest_;
      idx++;
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonCompiledAutomaton)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum)

OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum *OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values_[4];

@implementation OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values() {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values_ count:4 type:OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values();
}

+ (OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum *OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initialize();
  for (int i = 0; i < 4; i++) {
    OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum *e = OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum class]) {
    OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_NONE = new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(@"NONE", 0);
    OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_ALL = new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(@"ALL", 1);
    OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_SINGLE = new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(@"SINGLE", 2);
    OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_NORMAL = new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(@"NORMAL", 3);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "NONE", "NONE", 0x4019, "Lorg.apache.lucene.util.automaton.CompiledAutomaton$AUTOMATON_TYPE;", &OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_NONE, NULL, .constantValue.asLong = 0 },
    { "ALL", "ALL", 0x4019, "Lorg.apache.lucene.util.automaton.CompiledAutomaton$AUTOMATON_TYPE;", &OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_ALL, NULL, .constantValue.asLong = 0 },
    { "SINGLE", "SINGLE", 0x4019, "Lorg.apache.lucene.util.automaton.CompiledAutomaton$AUTOMATON_TYPE;", &OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_SINGLE, NULL, .constantValue.asLong = 0 },
    { "NORMAL", "NORMAL", 0x4019, "Lorg.apache.lucene.util.automaton.CompiledAutomaton$AUTOMATON_TYPE;", &OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_NORMAL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.util.automaton.CompiledAutomaton$AUTOMATON_TYPE;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum = { 2, "AUTOMATON_TYPE", "org.apache.lucene.util.automaton", "CompiledAutomaton", 0x4019, 0, NULL, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/util/automaton/CompiledAutomaton$AUTOMATON_TYPE;>;" };
  return &_OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum;
}

@end

void OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum *new_OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum *self = [OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum alloc];
  OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum)