#!/bin/sh

set -e

root=$1

for f in $(find $root -name 'iform-p.dtd'); do
  sed -i 's/<!ATTLIST xref armarmref CDATA #REQUIRED>/<!ATTLIST xref linkend CDATA #REQUIRED>/' $f
  sed -i 's/<!ENTITY % formatted_words "instruction|literal|xref|b|arm-defined-word|parameter|sup|sub|binarynumber|hexnumber|syntax|field|value|function|enum|enumvalue|url">/<!ENTITY % formatted_words "instruction|literal|xref|b|arm-defined-word|parameter|sup|sub|binarynumber|hexnumber|syntax|field|value|function|enum|enumvalue|url|image">/' $f
  sed -i 's/<!ENTITY % formatted_text/<!ENTITY % formatted_text "(#PCDATA|para|list|note|%formatted_words;)*"><!ENTITY % NOTHINGTOSEEHERE/' $f
  sed -i 's/<!ELEMENT cu_type_text (#PCDATA)\*>/<!ELEMENT cu_type_text (#PCDATA|%formatted_words;)*>/' $f
  sed -i 's/<!ATTLIST pstext section CDATA #REQUIRED/<!ATTLIST pstext section CDATA #IMPLIED/' $f
  echo '<!ELEMENT note (#PCDATA|para|list|table)*>' >> $f
  echo '<!ELEMENT image EMPTY>' >> $f
  echo '<!ATTLIST image file CDATA #REQUIRED label CDATA #IMPLIED>' >> $f
  # probably a HaXml bug
  sed -i 's/<!ELEMENT listitem ((term\*|param\*), content)>/<!ELEMENT listitem (param*, content)>/' $f
done

for f in $(find $root -name 'sharedps.dtd'); do
  echo '<!ELEMENT txt (%inline;)*>' >> $f
  echo '<!ATTLIST txt class CDATA #IMPLIED>' >> $f
done

for f in $(find $root -name 'constraint_text_mappings.dtd'); do
  echo '<!ELEMENT constraint_id (#PCDATA)>' >> $f
  echo '<!ELEMENT constraint_text (#PCDATA)>' >> $f
done

# This file also needs the modifications made to all of the others, but that
# causes name clobbering issues. I will handle these cases when (if) a use for
# this file arises.
for f in $(find $root -name 'allinstrs.dtd'); do
  cat >> $f << EOF
    <!ELEMENT exceptions (exception_group*)>

    <!ELEMENT exception_group (exception+)>
    <!ATTLIST exception_group group_name CDATA #IMPLIED>

    <!ELEMENT exception EMPTY>
    <!ATTLIST exception register CDATA #IMPLIED
                        field CDATA #IMPLIED
                        value CDATA #IMPLIED
                        name CDATA #IMPLIED>

    <!ELEMENT txt (%inline;)*>
    <!ATTLIST txt class CDATA #IMPLIED>

    <!ELEMENT text (#PCDATA)>
EOF
done
