//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/package-info.java
//

/*!
 @brief Code to maintain and access indices
 .
 <!-- TODO: add IndexWriter, IndexWriterConfig, DocValues, etc etc -->
 <h2>Table Of Contents</h2>
 <ol>
 <li><a href="#postings">Postings APIs</a>
 <ul>
 <li><a href="#fields">Fields</a></li>
 <li><a href="#terms">Terms</a></li>
 <li><a href="#documents">Documents</a></li>
 <li><a href="#positions">Positions</a></li>
 </ul>
 </li>
 <li><a href="#stats">Index Statistics</a>
 <ul>
 <li><a href="#termstats">Term-level</a></li>
 <li><a href="#fieldstats">Field-level</a></li>
 <li><a href="#segmentstats">Segment-level</a></li>
 <li><a href="#documentstats">Document-level</a></li>
 </ul>
 </li>
 </ol>
 <a name="postings"></a>
 <h2>Postings APIs</h2>
 <a name="fields"></a>
 <h3>
 Fields
 </h3>
 <p>
 <code>org.apache.lucene.index.Fields</code> is the initial entry point into the 
 postings APIs, this can be obtained in several ways:
 <pre class="prettyprint">
 // access indexed fields for an index segment
 Fields fields = reader.fields();
 // access term vector fields for a specified document
 Fields fields = reader.getTermVectors(docid);
 
@endcode
 Fields implements Java's Iterable interface, so it's easy to enumerate the
 list of fields:
 <pre class="prettyprint">
 // enumerate list of fields
 for (String field : fields) {
 // access the terms for this field
 Terms terms = fields.terms(field);
 }
 
@endcode
 <a name="terms"></a>
 <h3>
 Terms
 </h3>
 <p>
 <code>org.apache.lucene.index.Terms</code> represents the collection of terms
 within a field, exposes some metadata and <a href="#fieldstats">statistics</a>,
 and an API for enumeration.
 <pre class="prettyprint">
 // metadata about the field
 System.out.println("positions? " + terms.hasPositions());
 System.out.println("offsets? " + terms.hasOffsets());
 System.out.println("payloads? " + terms.hasPayloads());
 // iterate through terms
 TermsEnum termsEnum = terms.iterator(null);
 BytesRef term = null;
 while ((term = termsEnum.next()) != null) {
 doSomethingWith(termsEnum.term());
 }
 
@endcode
 <code>org.apache.lucene.index.TermsEnum</code> provides an iterator over the list
 of terms within a field, some <a href="#termstats">statistics</a> about the term,
 and methods to access the term's <a href="#documents">documents</a> and
 <a href="#positions">positions</a>.
 <pre class="prettyprint">
 // seek to a specific term
 boolean found = termsEnum.seekExact(new BytesRef("foobar"));
 if (found) {
 // get the document frequency
 System.out.println(termsEnum.docFreq());
 // enumerate through documents
 PostingsEnum docs = termsEnum.postings(null, null);
 // enumerate through documents and positions
 PostingsEnum docsAndPositions = termsEnum.postings(null, null, PostingsEnum.FLAG_POSITIONS);
 }
 
@endcode
 <a name="documents"></a>
 <h3>
 Documents
 </h3>
 <p>
 <code>org.apache.lucene.index.PostingsEnum</code> is an extension of
 <code>org.apache.lucene.search.DocIdSetIterator</code>that iterates over the list of
 documents for a term, along with the term frequency within that document.
 <pre class="prettyprint">
 int docid;
 while ((docid = docsEnum.nextDoc()) != DocIdSetIterator.NO_MORE_DOCS) {
 System.out.println(docid);
 System.out.println(docsEnum.freq());
 }
 
@endcode
 <a name="positions"></a>
 <h3>
 Positions
 </h3>
 <p>
 PostingsEnum also allows iteration
 of the positions a term occurred within the document, and any additional
 per-position information (offsets and payload).  The information available
 is controlled by flags passed to TermsEnum#postings
 <pre class="prettyprint">
 int docid;
 PostingsEnum postings = termsEnum.postings(null, null, PostingsEnum.FLAG_PAYLOADS | PostingsEnum.FLAG_OFFSETS);
 while ((docid = postings.nextDoc()) != DocIdSetIterator.NO_MORE_DOCS) {
 System.out.println(docid);
 int freq = postings.freq();
 for (int i = 0; i &lt; freq; i++) {
 System.out.println(postings.nextPosition());
 System.out.println(postings.startOffset());
 System.out.println(postings.endOffset());
 System.out.println(postings.getPayload());
 }
 }
 
@endcode
 <a name="stats"></a>
 <h2>Index Statistics</h2>
 <a name="termstats"></a>
 <h3>
 Term statistics
 </h3>
 <ul>
 <li><code>org.apache.lucene.index.TermsEnum.docFreq</code>: Returns the number of 
 documents that contain at least one occurrence of the term. This statistic 
 is always available for an indexed term. Note that it will also count 
 deleted documents, when segments are merged the statistic is updated as 
 those deleted documents are merged away.
 <li><code>org.apache.lucene.index.TermsEnum.totalTermFreq</code>: Returns the number 
 of occurrences of this term across all documents. Note that this statistic 
 is unavailable (returns <code>-1</code>) if term frequencies were omitted 
 from the index 
 (<code>DOCS</code>) 
 for the field. Like docFreq(), it will also count occurrences that appear in 
 deleted documents.
 </ul>
 <a name="fieldstats"></a>
 <h3>
 Field statistics
 </h3>
 <ul>
 <li><code>org.apache.lucene.index.Terms.size</code>: Returns the number of 
 unique terms in the field. This statistic may be unavailable 
 (returns <code>-1</code>) for some Terms implementations such as
 <code>org.apache.lucene.index.MultiTerms</code>, where it cannot be efficiently
 computed.  Note that this count also includes terms that appear only
 in deleted documents: when segments are merged such terms are also merged
 away and the statistic is then updated.
 <li><code>org.apache.lucene.index.Terms.getDocCount</code>: Returns the number of
 documents that contain at least one occurrence of any term for this field.
 This can be thought of as a Field-level docFreq(). Like docFreq() it will
 also count deleted documents.
 <li><code>org.apache.lucene.index.Terms.getSumDocFreq</code>: Returns the number of
 postings (term-document mappings in the inverted index) for the field. This
 can be thought of as the sum of <code>org.apache.lucene.index.TermsEnum.docFreq</code>
 across all terms in the field, and like docFreq() it will also count postings
 that appear in deleted documents.
 <li><code>org.apache.lucene.index.Terms.getSumTotalTermFreq</code>: Returns the number
 of tokens for the field. This can be thought of as the sum of 
 <code>org.apache.lucene.index.TermsEnum.totalTermFreq</code> across all terms in the
 field, and like totalTermFreq() it will also count occurrences that appear in
 deleted documents, and will be unavailable (returns <code>-1</code>) if term 
 frequencies were omitted from the index 
 (<code>DOCS</code>) 
 for the field.
 </ul>
 <a name="segmentstats"></a>
 <h3>
 Segment statistics
 </h3>
 <ul>
 <li><code>org.apache.lucene.index.IndexReader.maxDoc</code>: Returns the number of 
 documents (including deleted documents) in the index. 
 <li><code>org.apache.lucene.index.IndexReader.numDocs</code>: Returns the number 
 of live documents (excluding deleted documents) in the index.
 <li><code>org.apache.lucene.index.IndexReader.numDeletedDocs</code>: Returns the
 number of deleted documents in the index.
 <li><code>org.apache.lucene.index.Fields.size</code>: Returns the number of indexed
 fields.
 </ul>
 <a name="documentstats"></a>
 <h3>
 Document statistics
 </h3>
 <p>
 Document statistics are available during the indexing process for an indexed field: typically
 a <code>org.apache.lucene.search.similarities.Similarity</code> implementation will store some
 of these values (possibly in a lossy way), into the normalization value for the document in
 its <code>org.apache.lucene.search.similarities.Similarity.computeNorm</code> method.
 <ul>
 <li><code>org.apache.lucene.index.FieldInvertState.getLength</code>: Returns the number of 
 tokens for this field in the document. Note that this is just the number
 of times that <code>org.apache.lucene.analysis.TokenStream.incrementToken</code> returned
 true, and is unrelated to the values in 
 <code>org.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute</code>.
 <li><code>org.apache.lucene.index.FieldInvertState.getNumOverlap</code>: Returns the number
 of tokens for this field in the document that had a position increment of zero. This
 can be used to compute a document length that discounts artificial tokens
 such as synonyms.
 <li><code>org.apache.lucene.index.FieldInvertState.getPosition</code>: Returns the accumulated
 position value for this field in the document: computed from the values of
 <code>org.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute</code> and including
 <code>org.apache.lucene.analysis.Analyzer.getPositionIncrementGap</code>s across multivalued
 fields.
 <li><code>org.apache.lucene.index.FieldInvertState.getOffset</code>: Returns the total
 character offset value for this field in the document: computed from the values of
 <code>org.apache.lucene.analysis.tokenattributes.OffsetAttribute</code> returned by 
 <code>org.apache.lucene.analysis.TokenStream.end</code>, and including
 <code>org.apache.lucene.analysis.Analyzer.getOffsetGap</code>s across multivalued
 fields.
 <li><code>org.apache.lucene.index.FieldInvertState.getUniqueTermCount</code>: Returns the number
 of unique terms encountered for this field in the document.
 <li><code>org.apache.lucene.index.FieldInvertState.getMaxTermFrequency</code>: Returns the maximum
 frequency across all unique terms encountered for this field in the document. 
 </ul>
 <p>
 Additional user-supplied statistics can be added to the document as DocValues fields and
 accessed via <code>org.apache.lucene.index.LeafReader.getNumericDocValues</code>.
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexPackage_info")
#ifdef RESTRICT_OrgApacheLuceneIndexPackage_info
#define INCLUDE_ALL_OrgApacheLuceneIndexPackage_info 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexPackage_info 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexPackage_info

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexPackage_info")
