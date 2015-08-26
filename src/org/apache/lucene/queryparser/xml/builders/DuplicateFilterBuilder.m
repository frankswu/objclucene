//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/DuplicateFilterBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/DuplicateFilterBuilder.h"
#include "org/apache/lucene/sandbox/queries/DuplicateFilter.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/w3c/dom/Element.h"

@implementation OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *fieldName = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceOrFailWithOrgW3cDomElement_withNSString_(e, @"fieldName");
  OrgApacheLuceneSandboxQueriesDuplicateFilter *df = [new_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(fieldName) autorelease];
  NSString *keepMode = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withNSString_(e, @"keepMode", @"first");
  if ([((NSString *) nil_chk(keepMode)) equalsIgnoreCase:@"first"]) {
    [df setKeepModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum:JreLoadStatic(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum, KM_USE_FIRST_OCCURRENCE)];
  }
  else if ([keepMode equalsIgnoreCase:@"last"]) {
    [df setKeepModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum:JreLoadStatic(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum, KM_USE_LAST_OCCURRENCE)];
  }
  else {
    @throw [new_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", @"Illegal keepMode attribute in DuplicateFilter:", keepMode)) autorelease];
  }
  NSString *processingMode = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withNSString_(e, @"processingMode", @"full");
  if ([((NSString *) nil_chk(processingMode)) equalsIgnoreCase:@"full"]) {
    [df setProcessingModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum:JreLoadStatic(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum, PM_FULL_VALIDATION)];
  }
  else if ([processingMode equalsIgnoreCase:@"fast"]) {
    [df setProcessingModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum:JreLoadStatic(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum, PM_FAST_INVALIDATION)];
  }
  else {
    @throw [new_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$", @"Illegal processingMode attribute in DuplicateFilter:", processingMode)) autorelease];
  }
  return df;
}

- (instancetype)init {
  OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getFilterWithOrgW3cDomElement:", "getFilter", "Lorg.apache.lucene.search.Filter;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder = { 2, "DuplicateFilterBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder_init(OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder *self) {
  NSObject_init(self);
}

OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder *new_OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder_init() {
  OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder *self = [OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder alloc];
  OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersDuplicateFilterBuilder)