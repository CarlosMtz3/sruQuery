<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="xs xd">


	<xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8" media-type="text/xml"/>

	<!--

		Template iso-639-1-converter
		Parameter:	languageCode - string
		Returns:	String with ISO 639-2/B language code corresponding to $languageCode.
					Input string, if there is no match.
	-->
	<xsl:template name="iso-639-1-converter">
		<xsl:param name="languageCode"/>
		<xsl:variable name="lowerCaseLanguageCode" select="lower-case($languageCode)"/>
		<!--Strip regional part from language code, e.g. de_DE => de-->
		<xsl:variable name="myLanguageCode">
			<xsl:choose>
				<xsl:when test="contains($lowerCaseLanguageCode, '_')">
					<xsl:value-of select="substring-before($lowerCaseLanguageCode, '_')"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$lowerCaseLanguageCode"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>

		<xsl:variable name="resultCode">
			<xsl:choose>
				<xsl:when test="string-length($myLanguageCode) = 3 and contains(text(),$myLanguageCode)">
					<xsl:value-of select="$myLanguageCode"/>
				</xsl:when>
				<xsl:when test="$myLanguageCode = 'ab'">abk</xsl:when>
				<xsl:when test="$myLanguageCode = 'aa'">aar</xsl:when>
				<xsl:when test="$myLanguageCode = 'af'">afr</xsl:when>
				<xsl:when test="$myLanguageCode = 'ak'">aka</xsl:when>
				<xsl:when test="$myLanguageCode = 'sq'">alb</xsl:when>
				<xsl:when test="$myLanguageCode = 'am'">amh</xsl:when>
				<xsl:when test="$myLanguageCode = 'ar'">ara</xsl:when>
				<xsl:when test="$myLanguageCode = 'an'">arg</xsl:when>
				<xsl:when test="$myLanguageCode = 'hy'">arm</xsl:when>
				<xsl:when test="$myLanguageCode = 'as'">asm</xsl:when>
				<xsl:when test="$myLanguageCode = 'av'">ava</xsl:when>
				<xsl:when test="$myLanguageCode = 'ae'">ave</xsl:when>
				<xsl:when test="$myLanguageCode = 'ay'">aym</xsl:when>
				<xsl:when test="$myLanguageCode = 'az'">aze</xsl:when>
				<xsl:when test="$myLanguageCode = 'bm'">bam</xsl:when>
				<xsl:when test="$myLanguageCode = 'ba'">bak</xsl:when>
				<xsl:when test="$myLanguageCode = 'eu'">baq</xsl:when>
				<xsl:when test="$myLanguageCode = 'be'">bel</xsl:when>
				<xsl:when test="$myLanguageCode = 'bn'">ben</xsl:when>
				<xsl:when test="$myLanguageCode = 'bh'">bih</xsl:when>
				<xsl:when test="$myLanguageCode = 'bi'">bis</xsl:when>
				<xsl:when test="$myLanguageCode = 'bs'">bos</xsl:when>
				<xsl:when test="$myLanguageCode = 'br'">bre</xsl:when>
				<xsl:when test="$myLanguageCode = 'bg'">bul</xsl:when>
				<xsl:when test="$myLanguageCode = 'my'">bur</xsl:when>
				<xsl:when test="$myLanguageCode = 'ca'">cat</xsl:when>
				<xsl:when test="$myLanguageCode = 'ch'">cha</xsl:when>
				<xsl:when test="$myLanguageCode = 'ce'">che</xsl:when>
				<xsl:when test="$myLanguageCode = 'ny'">nya</xsl:when>
				<xsl:when test="$myLanguageCode = 'zh'">chi</xsl:when>
				<xsl:when test="$myLanguageCode = 'cv'">chv</xsl:when>
				<xsl:when test="$myLanguageCode = 'kw'">cor</xsl:when>
				<xsl:when test="$myLanguageCode = 'co'">cos</xsl:when>
				<xsl:when test="$myLanguageCode = 'cr'">cre</xsl:when>
				<xsl:when test="$myLanguageCode = 'hr'">hrv</xsl:when>
				<xsl:when test="$myLanguageCode = 'cs'">cze</xsl:when>
				<xsl:when test="$myLanguageCode = 'da'">dan</xsl:when>
				<xsl:when test="$myLanguageCode = 'dv'">div</xsl:when>
				<xsl:when test="$myLanguageCode = 'nl'">dut</xsl:when>
				<xsl:when test="$myLanguageCode = 'dz'">dzo</xsl:when>
				<xsl:when test="$myLanguageCode = 'en'">eng</xsl:when>
				<xsl:when test="$myLanguageCode = 'eo'">epo</xsl:when>
				<xsl:when test="$myLanguageCode = 'et'">est</xsl:when>
				<xsl:when test="$myLanguageCode = 'ee'">ewe</xsl:when>
				<xsl:when test="$myLanguageCode = 'fo'">fao</xsl:when>
				<xsl:when test="$myLanguageCode = 'fj'">fij</xsl:when>
				<xsl:when test="$myLanguageCode = 'fi'">fin</xsl:when>
				<xsl:when test="$myLanguageCode = 'fr'">fre</xsl:when>
				<xsl:when test="$myLanguageCode = 'ff'">ful</xsl:when>
				<xsl:when test="$myLanguageCode = 'gl'">glg</xsl:when>
				<xsl:when test="$myLanguageCode = 'ka'">geo</xsl:when>
				<xsl:when test="$myLanguageCode = 'de'">ger</xsl:when>
				<xsl:when test="$myLanguageCode = 'el'">gre</xsl:when>
				<xsl:when test="$myLanguageCode = 'gn'">grn</xsl:when>
				<xsl:when test="$myLanguageCode = 'gu'">guj</xsl:when>
				<xsl:when test="$myLanguageCode = 'ht'">hat</xsl:when>
				<xsl:when test="$myLanguageCode = 'ha'">hau</xsl:when>
				<xsl:when test="$myLanguageCode = 'he'">heb</xsl:when>
				<xsl:when test="$myLanguageCode = 'hz'">her</xsl:when>
				<xsl:when test="$myLanguageCode = 'hi'">hin</xsl:when>
				<xsl:when test="$myLanguageCode = 'ho'">hmo</xsl:when>
				<xsl:when test="$myLanguageCode = 'hu'">hun</xsl:when>
				<xsl:when test="$myLanguageCode = 'ia'">ina</xsl:when>
				<xsl:when test="$myLanguageCode = 'id'">ind</xsl:when>
				<xsl:when test="$myLanguageCode = 'ie'">ile</xsl:when>
				<xsl:when test="$myLanguageCode = 'ga'">gle</xsl:when>
				<xsl:when test="$myLanguageCode = 'ig'">ibo</xsl:when>
				<xsl:when test="$myLanguageCode = 'ik'">ipk</xsl:when>
				<xsl:when test="$myLanguageCode = 'io'">ido</xsl:when>
				<xsl:when test="$myLanguageCode = 'is'">ice</xsl:when>
				<xsl:when test="$myLanguageCode = 'it'">ita</xsl:when>
				<xsl:when test="$myLanguageCode = 'iu'">iku</xsl:when>
				<xsl:when test="$myLanguageCode = 'ja'">jpn</xsl:when>
				<xsl:when test="$myLanguageCode = 'jv'">jav</xsl:when>
				<xsl:when test="$myLanguageCode = 'kl'">kal</xsl:when>
				<xsl:when test="$myLanguageCode = 'kn'">kan</xsl:when>
				<xsl:when test="$myLanguageCode = 'kr'">kau</xsl:when>
				<xsl:when test="$myLanguageCode = 'ks'">kas</xsl:when>
				<xsl:when test="$myLanguageCode = 'kk'">kaz</xsl:when>
				<xsl:when test="$myLanguageCode = 'km'">khm</xsl:when>
				<xsl:when test="$myLanguageCode = 'ki'">kik</xsl:when>
				<xsl:when test="$myLanguageCode = 'rw'">kin</xsl:when>
				<xsl:when test="$myLanguageCode = 'ky'">kir</xsl:when>
				<xsl:when test="$myLanguageCode = 'kv'">kom</xsl:when>
				<xsl:when test="$myLanguageCode = 'kg'">kon</xsl:when>
				<xsl:when test="$myLanguageCode = 'ko'">kor</xsl:when>
				<xsl:when test="$myLanguageCode = 'ku'">kur</xsl:when>
				<xsl:when test="$myLanguageCode = 'kj'">kua</xsl:when>
				<xsl:when test="$myLanguageCode = 'la'">lat</xsl:when>
				<xsl:when test="$myLanguageCode = 'lb'">ltz</xsl:when>
				<xsl:when test="$myLanguageCode = 'lg'">lug</xsl:when>
				<xsl:when test="$myLanguageCode = 'li'">lim</xsl:when>
				<xsl:when test="$myLanguageCode = 'ln'">lin</xsl:when>
				<xsl:when test="$myLanguageCode = 'lo'">lao</xsl:when>
				<xsl:when test="$myLanguageCode = 'lt'">lit</xsl:when>
				<xsl:when test="$myLanguageCode = 'lu'">lub</xsl:when>
				<xsl:when test="$myLanguageCode = 'lv'">lav</xsl:when>
				<xsl:when test="$myLanguageCode = 'gv'">glv</xsl:when>
				<xsl:when test="$myLanguageCode = 'mk'">mac</xsl:when>
				<xsl:when test="$myLanguageCode = 'mg'">mlg</xsl:when>
				<xsl:when test="$myLanguageCode = 'ms'">may</xsl:when>
				<xsl:when test="$myLanguageCode = 'ml'">mal</xsl:when>
				<xsl:when test="$myLanguageCode = 'mt'">mlt</xsl:when>
				<xsl:when test="$myLanguageCode = 'mi'">mao</xsl:when>
				<xsl:when test="$myLanguageCode = 'mr'">mar</xsl:when>
				<xsl:when test="$myLanguageCode = 'mh'">mah</xsl:when>
				<xsl:when test="$myLanguageCode = 'mn'">mon</xsl:when>
				<xsl:when test="$myLanguageCode = 'na'">nau</xsl:when>
				<xsl:when test="$myLanguageCode = 'nv'">nav</xsl:when>
				<xsl:when test="$myLanguageCode = 'nb'">nob</xsl:when>
				<xsl:when test="$myLanguageCode = 'nd'">nde</xsl:when>
				<xsl:when test="$myLanguageCode = 'ne'">nep</xsl:when>
				<xsl:when test="$myLanguageCode = 'ng'">ndo</xsl:when>
				<xsl:when test="$myLanguageCode = 'nn'">nno</xsl:when>
				<xsl:when test="$myLanguageCode = 'no'">nor</xsl:when>
				<xsl:when test="$myLanguageCode = 'ii'">iii</xsl:when>
				<xsl:when test="$myLanguageCode = 'nr'">nbl</xsl:when>
				<xsl:when test="$myLanguageCode = 'oc'">oci</xsl:when>
				<xsl:when test="$myLanguageCode = 'oj'">oji</xsl:when>
				<xsl:when test="$myLanguageCode = 'cu'">chu</xsl:when>
				<xsl:when test="$myLanguageCode = 'om'">orm</xsl:when>
				<xsl:when test="$myLanguageCode = 'or'">ori</xsl:when>
				<xsl:when test="$myLanguageCode = 'os'">oss</xsl:when>
				<xsl:when test="$myLanguageCode = 'pa'">pan</xsl:when>
				<xsl:when test="$myLanguageCode = 'pi'">pli</xsl:when>
				<xsl:when test="$myLanguageCode = 'fa'">per</xsl:when>
				<xsl:when test="$myLanguageCode = 'pl'">pol</xsl:when>
				<xsl:when test="$myLanguageCode = 'ps'">pus</xsl:when>
				<xsl:when test="$myLanguageCode = 'pt'">por</xsl:when>
				<xsl:when test="$myLanguageCode = 'qu'">que</xsl:when>
				<xsl:when test="$myLanguageCode = 'rm'">roh</xsl:when>
				<xsl:when test="$myLanguageCode = 'rn'">run</xsl:when>
				<xsl:when test="$myLanguageCode = 'ro'">rum</xsl:when>
				<xsl:when test="$myLanguageCode = 'ru'">rus</xsl:when>
				<xsl:when test="$myLanguageCode = 'sa'">san</xsl:when>
				<xsl:when test="$myLanguageCode = 'sc'">srd</xsl:when>
				<xsl:when test="$myLanguageCode = 'sd'">snd</xsl:when>
				<xsl:when test="$myLanguageCode = 'se'">sme</xsl:when>
				<xsl:when test="$myLanguageCode = 'sm'">smo</xsl:when>
				<xsl:when test="$myLanguageCode = 'sg'">sag</xsl:when>
				<xsl:when test="$myLanguageCode = 'sr'">srp</xsl:when>
				<xsl:when test="$myLanguageCode = 'gd'">gla</xsl:when>
				<xsl:when test="$myLanguageCode = 'sn'">sna</xsl:when>
				<xsl:when test="$myLanguageCode = 'si'">sin</xsl:when>
				<xsl:when test="$myLanguageCode = 'sk'">slo</xsl:when>
				<xsl:when test="$myLanguageCode = 'sl'">slv</xsl:when>
				<xsl:when test="$myLanguageCode = 'so'">som</xsl:when>
				<xsl:when test="$myLanguageCode = 'st'">sot</xsl:when>
				<xsl:when test="$myLanguageCode = 'es'">spa</xsl:when>
				<xsl:when test="$myLanguageCode = 'su'">sun</xsl:when>
				<xsl:when test="$myLanguageCode = 'sw'">swa</xsl:when>
				<xsl:when test="$myLanguageCode = 'ss'">ssw</xsl:when>
				<xsl:when test="$myLanguageCode = 'sv'">swe</xsl:when>
				<xsl:when test="$myLanguageCode = 'ta'">tam</xsl:when>
				<xsl:when test="$myLanguageCode = 'te'">tel</xsl:when>
				<xsl:when test="$myLanguageCode = 'tg'">tgk</xsl:when>
				<xsl:when test="$myLanguageCode = 'th'">tha</xsl:when>
				<xsl:when test="$myLanguageCode = 'ti'">tir</xsl:when>
				<xsl:when test="$myLanguageCode = 'bo'">tib</xsl:when>
				<xsl:when test="$myLanguageCode = 'tk'">tuk</xsl:when>
				<xsl:when test="$myLanguageCode = 'tl'">tgl</xsl:when>
				<xsl:when test="$myLanguageCode = 'tn'">tsn</xsl:when>
				<xsl:when test="$myLanguageCode = 'to'">ton</xsl:when>
				<xsl:when test="$myLanguageCode = 'tr'">tur</xsl:when>
				<xsl:when test="$myLanguageCode = 'ts'">tso</xsl:when>
				<xsl:when test="$myLanguageCode = 'tt'">tat</xsl:when>
				<xsl:when test="$myLanguageCode = 'tw'">twi</xsl:when>
				<xsl:when test="$myLanguageCode = 'ty'">tah</xsl:when>
				<xsl:when test="$myLanguageCode = 'ug'">uig</xsl:when>
				<xsl:when test="$myLanguageCode = 'uk'">ukr</xsl:when>
				<xsl:when test="$myLanguageCode = 'ur'">urd</xsl:when>
				<xsl:when test="$myLanguageCode = 'uz'">uzb</xsl:when>
				<xsl:when test="$myLanguageCode = 've'">ven</xsl:when>
				<xsl:when test="$myLanguageCode = 'vi'">vie</xsl:when>
				<xsl:when test="$myLanguageCode = 'vo'">vol</xsl:when>
				<xsl:when test="$myLanguageCode = 'wa'">wln</xsl:when>
				<xsl:when test="$myLanguageCode = 'cy'">wel</xsl:when>
				<xsl:when test="$myLanguageCode = 'wo'">wol</xsl:when>
				<xsl:when test="$myLanguageCode = 'fy'">fry</xsl:when>
				<xsl:when test="$myLanguageCode = 'xh'">xho</xsl:when>
				<xsl:when test="$myLanguageCode = 'yi'">yid</xsl:when>
				<xsl:when test="$myLanguageCode = 'yo'">yor</xsl:when>
				<xsl:when test="$myLanguageCode = 'za'">zha</xsl:when>
				<xsl:when test="$myLanguageCode = 'zu'">zul</xsl:when>
				<xsl:when test="$myLanguageCode = 'ab'">abk</xsl:when>
				<xsl:when test="$myLanguageCode = 'aa'">aar</xsl:when>
				<xsl:when test="$myLanguageCode = 'af'">afr</xsl:when>
				<xsl:when test="$myLanguageCode = 'ak'">aka</xsl:when>
				<xsl:when test="$myLanguageCode = 'sq'">alb</xsl:when>
				<xsl:when test="$myLanguageCode = 'am'">amh</xsl:when>
				<xsl:when test="$myLanguageCode = 'ar'">ara</xsl:when>
				<xsl:when test="$myLanguageCode = 'an'">arg</xsl:when>
				<xsl:when test="$myLanguageCode = 'hy'">arm</xsl:when>
				<xsl:when test="$myLanguageCode = 'as'">asm</xsl:when>
				<xsl:when test="$myLanguageCode = 'av'">ava</xsl:when>
				<xsl:when test="$myLanguageCode = 'ae'">ave</xsl:when>
				<xsl:when test="$myLanguageCode = 'ay'">aym</xsl:when>
				<xsl:when test="$myLanguageCode = 'az'">aze</xsl:when>
				<xsl:when test="$myLanguageCode = 'bm'">bam</xsl:when>
				<xsl:when test="$myLanguageCode = 'ba'">bak</xsl:when>
				<xsl:when test="$myLanguageCode = 'eu'">baq</xsl:when>
				<xsl:when test="$myLanguageCode = 'be'">bel</xsl:when>
				<xsl:when test="$myLanguageCode = 'bn'">ben</xsl:when>
				<xsl:when test="$myLanguageCode = 'bh'">bih</xsl:when>
				<xsl:when test="$myLanguageCode = 'bi'">bis</xsl:when>
				<xsl:when test="$myLanguageCode = 'bs'">bos</xsl:when>
				<xsl:when test="$myLanguageCode = 'br'">bre</xsl:when>
				<xsl:when test="$myLanguageCode = 'bg'">bul</xsl:when>
				<xsl:when test="$myLanguageCode = 'my'">bur</xsl:when>
				<xsl:when test="$myLanguageCode = 'ca'">cat</xsl:when>
				<xsl:when test="$myLanguageCode = 'ch'">cha</xsl:when>
				<xsl:when test="$myLanguageCode = 'ce'">che</xsl:when>
				<xsl:when test="$myLanguageCode = 'ny'">nya</xsl:when>
				<xsl:when test="$myLanguageCode = 'zh'">chi</xsl:when>
				<xsl:when test="$myLanguageCode = 'cv'">chv</xsl:when>
				<xsl:when test="$myLanguageCode = 'kw'">cor</xsl:when>
				<xsl:when test="$myLanguageCode = 'co'">cos</xsl:when>
				<xsl:when test="$myLanguageCode = 'cr'">cre</xsl:when>
				<xsl:when test="$myLanguageCode = 'hr'">hrv</xsl:when>
				<xsl:when test="$myLanguageCode = 'cs'">cze</xsl:when>
				<xsl:when test="$myLanguageCode = 'da'">dan</xsl:when>
				<xsl:when test="$myLanguageCode = 'dv'">div</xsl:when>
				<xsl:when test="$myLanguageCode = 'nl'">dut</xsl:when>
				<xsl:when test="$myLanguageCode = 'dz'">dzo</xsl:when>
				<xsl:when test="$myLanguageCode = 'en'">eng</xsl:when>
				<xsl:when test="$myLanguageCode = 'eo'">epo</xsl:when>
				<xsl:when test="$myLanguageCode = 'et'">est</xsl:when>
				<xsl:when test="$myLanguageCode = 'ee'">ewe</xsl:when>
				<xsl:when test="$myLanguageCode = 'fo'">fao</xsl:when>
				<xsl:when test="$myLanguageCode = 'fj'">fij</xsl:when>
				<xsl:when test="$myLanguageCode = 'fi'">fin</xsl:when>
				<xsl:when test="$myLanguageCode = 'fr'">fre</xsl:when>
				<xsl:when test="$myLanguageCode = 'ff'">ful</xsl:when>
				<xsl:when test="$myLanguageCode = 'gl'">glg</xsl:when>
				<xsl:when test="$myLanguageCode = 'ka'">geo</xsl:when>
				<xsl:when test="$myLanguageCode = 'de'">ger</xsl:when>
				<xsl:when test="$myLanguageCode = 'el'">gre</xsl:when>
				<xsl:when test="$myLanguageCode = 'gn'">grn</xsl:when>
				<xsl:when test="$myLanguageCode = 'gu'">guj</xsl:when>
				<xsl:when test="$myLanguageCode = 'ht'">hat</xsl:when>
				<xsl:when test="$myLanguageCode = 'ha'">hau</xsl:when>
				<xsl:when test="$myLanguageCode = 'he'">heb</xsl:when>
				<xsl:when test="$myLanguageCode = 'hz'">her</xsl:when>
				<xsl:when test="$myLanguageCode = 'hi'">hin</xsl:when>
				<xsl:when test="$myLanguageCode = 'ho'">hmo</xsl:when>
				<xsl:when test="$myLanguageCode = 'hu'">hun</xsl:when>
				<xsl:when test="$myLanguageCode = 'ia'">ina</xsl:when>
				<xsl:when test="$myLanguageCode = 'id'">ind</xsl:when>
				<xsl:when test="$myLanguageCode = 'ie'">ile</xsl:when>
				<xsl:when test="$myLanguageCode = 'ga'">gle</xsl:when>
				<xsl:when test="$myLanguageCode = 'ig'">ibo</xsl:when>
				<xsl:when test="$myLanguageCode = 'ik'">ipk</xsl:when>
				<xsl:when test="$myLanguageCode = 'io'">ido</xsl:when>
				<xsl:when test="$myLanguageCode = 'is'">ice</xsl:when>
				<xsl:when test="$myLanguageCode = 'it'">ita</xsl:when>
				<xsl:when test="$myLanguageCode = 'iu'">iku</xsl:when>
				<xsl:when test="$myLanguageCode = 'ja'">jpn</xsl:when>
				<xsl:when test="$myLanguageCode = 'jv'">jav</xsl:when>
				<xsl:when test="$myLanguageCode = 'kl'">kal</xsl:when>
				<xsl:when test="$myLanguageCode = 'kn'">kan</xsl:when>
				<xsl:when test="$myLanguageCode = 'kr'">kau</xsl:when>
				<xsl:when test="$myLanguageCode = 'ks'">kas</xsl:when>
				<xsl:when test="$myLanguageCode = 'kk'">kaz</xsl:when>
				<xsl:when test="$myLanguageCode = 'km'">khm</xsl:when>
				<xsl:when test="$myLanguageCode = 'ki'">kik</xsl:when>
				<xsl:when test="$myLanguageCode = 'rw'">kin</xsl:when>
				<xsl:when test="$myLanguageCode = 'ky'">kir</xsl:when>
				<xsl:when test="$myLanguageCode = 'kv'">kom</xsl:when>
				<xsl:when test="$myLanguageCode = 'kg'">kon</xsl:when>
				<xsl:when test="$myLanguageCode = 'ko'">kor</xsl:when>
				<xsl:when test="$myLanguageCode = 'ku'">kur</xsl:when>
				<xsl:when test="$myLanguageCode = 'kj'">kua</xsl:when>
				<xsl:when test="$myLanguageCode = 'la'">lat</xsl:when>
				<xsl:when test="$myLanguageCode = 'lb'">ltz</xsl:when>
				<xsl:when test="$myLanguageCode = 'lg'">lug</xsl:when>
				<xsl:when test="$myLanguageCode = 'li'">lim</xsl:when>
				<xsl:when test="$myLanguageCode = 'ln'">lin</xsl:when>
				<xsl:when test="$myLanguageCode = 'lo'">lao</xsl:when>
				<xsl:when test="$myLanguageCode = 'lt'">lit</xsl:when>
				<xsl:when test="$myLanguageCode = 'lu'">lub</xsl:when>
				<xsl:when test="$myLanguageCode = 'lv'">lav</xsl:when>
				<xsl:when test="$myLanguageCode = 'gv'">glv</xsl:when>
				<xsl:when test="$myLanguageCode = 'mk'">mac</xsl:when>
				<xsl:when test="$myLanguageCode = 'mg'">mlg</xsl:when>
				<xsl:when test="$myLanguageCode = 'ms'">may</xsl:when>
				<xsl:when test="$myLanguageCode = 'ml'">mal</xsl:when>
				<xsl:when test="$myLanguageCode = 'mt'">mlt</xsl:when>
				<xsl:when test="$myLanguageCode = 'mi'">mao</xsl:when>
				<xsl:when test="$myLanguageCode = 'mr'">mar</xsl:when>
				<xsl:when test="$myLanguageCode = 'mh'">mah</xsl:when>
				<xsl:when test="$myLanguageCode = 'mn'">mon</xsl:when>
				<xsl:when test="$myLanguageCode = 'na'">nau</xsl:when>
				<xsl:when test="$myLanguageCode = 'nv'">nav</xsl:when>
				<xsl:when test="$myLanguageCode = 'nb'">nob</xsl:when>
				<xsl:when test="$myLanguageCode = 'nd'">nde</xsl:when>
				<xsl:when test="$myLanguageCode = 'ne'">nep</xsl:when>
				<xsl:when test="$myLanguageCode = 'ng'">ndo</xsl:when>
				<xsl:when test="$myLanguageCode = 'nn'">nno</xsl:when>
				<xsl:when test="$myLanguageCode = 'no'">nor</xsl:when>
				<xsl:when test="$myLanguageCode = 'ii'">iii</xsl:when>
				<xsl:when test="$myLanguageCode = 'nr'">nbl</xsl:when>
				<xsl:when test="$myLanguageCode = 'oc'">oci</xsl:when>
				<xsl:when test="$myLanguageCode = 'oj'">oji</xsl:when>
				<xsl:when test="$myLanguageCode = 'cu'">chu</xsl:when>
				<xsl:when test="$myLanguageCode = 'om'">orm</xsl:when>
				<xsl:when test="$myLanguageCode = 'or'">ori</xsl:when>
				<xsl:when test="$myLanguageCode = 'os'">oss</xsl:when>
				<xsl:when test="$myLanguageCode = 'pa'">pan</xsl:when>
				<xsl:when test="$myLanguageCode = 'pi'">pli</xsl:when>
				<xsl:when test="$myLanguageCode = 'fa'">per</xsl:when>
				<xsl:when test="$myLanguageCode = 'pl'">pol</xsl:when>
				<xsl:when test="$myLanguageCode = 'ps'">pus</xsl:when>
				<xsl:when test="$myLanguageCode = 'pt'">por</xsl:when>
				<xsl:when test="$myLanguageCode = 'qu'">que</xsl:when>
				<xsl:when test="$myLanguageCode = 'rm'">roh</xsl:when>
				<xsl:when test="$myLanguageCode = 'rn'">run</xsl:when>
				<xsl:when test="$myLanguageCode = 'ro'">rum</xsl:when>
				<xsl:when test="$myLanguageCode = 'ru'">rus</xsl:when>
				<xsl:when test="$myLanguageCode = 'sa'">san</xsl:when>
				<xsl:when test="$myLanguageCode = 'sc'">srd</xsl:when>
				<xsl:when test="$myLanguageCode = 'sd'">snd</xsl:when>
				<xsl:when test="$myLanguageCode = 'se'">sme</xsl:when>
				<xsl:when test="$myLanguageCode = 'sm'">smo</xsl:when>
				<xsl:when test="$myLanguageCode = 'sg'">sag</xsl:when>
				<xsl:when test="$myLanguageCode = 'sr'">srp</xsl:when>
				<xsl:when test="$myLanguageCode = 'gd'">gla</xsl:when>
				<xsl:when test="$myLanguageCode = 'sn'">sna</xsl:when>
				<xsl:when test="$myLanguageCode = 'si'">sin</xsl:when>
				<xsl:when test="$myLanguageCode = 'sk'">slo</xsl:when>
				<xsl:when test="$myLanguageCode = 'sl'">slv</xsl:when>
				<xsl:when test="$myLanguageCode = 'so'">som</xsl:when>
				<xsl:when test="$myLanguageCode = 'st'">sot</xsl:when>
				<xsl:when test="$myLanguageCode = 'es'">spa</xsl:when>
				<xsl:when test="$myLanguageCode = 'su'">sun</xsl:when>
				<xsl:when test="$myLanguageCode = 'sw'">swa</xsl:when>
				<xsl:when test="$myLanguageCode = 'ss'">ssw</xsl:when>
				<xsl:when test="$myLanguageCode = 'sv'">swe</xsl:when>
				<xsl:when test="$myLanguageCode = 'ta'">tam</xsl:when>
				<xsl:when test="$myLanguageCode = 'te'">tel</xsl:when>
				<xsl:when test="$myLanguageCode = 'tg'">tgk</xsl:when>
				<xsl:when test="$myLanguageCode = 'th'">tha</xsl:when>
				<xsl:when test="$myLanguageCode = 'ti'">tir</xsl:when>
				<xsl:when test="$myLanguageCode = 'bo'">tib</xsl:when>
				<xsl:when test="$myLanguageCode = 'tk'">tuk</xsl:when>
				<xsl:when test="$myLanguageCode = 'tl'">tgl</xsl:when>
				<xsl:when test="$myLanguageCode = 'tn'">tsn</xsl:when>
				<xsl:when test="$myLanguageCode = 'to'">ton</xsl:when>
				<xsl:when test="$myLanguageCode = 'tr'">tur</xsl:when>
				<xsl:when test="$myLanguageCode = 'ts'">tso</xsl:when>
				<xsl:when test="$myLanguageCode = 'tt'">tat</xsl:when>
				<xsl:when test="$myLanguageCode = 'tw'">twi</xsl:when>
				<xsl:when test="$myLanguageCode = 'ty'">tah</xsl:when>
				<xsl:when test="$myLanguageCode = 'ug'">uig</xsl:when>
				<xsl:when test="$myLanguageCode = 'uk'">ukr</xsl:when>
				<xsl:when test="$myLanguageCode = 'ur'">urd</xsl:when>
				<xsl:when test="$myLanguageCode = 'uz'">uzb</xsl:when>
				<xsl:when test="$myLanguageCode = 've'">ven</xsl:when>
				<xsl:when test="$myLanguageCode = 'vi'">vie</xsl:when>
				<xsl:when test="$myLanguageCode = 'vo'">vol</xsl:when>
				<xsl:when test="$myLanguageCode = 'wa'">wln</xsl:when>
				<xsl:when test="$myLanguageCode = 'cy'">wel</xsl:when>
				<xsl:when test="$myLanguageCode = 'wo'">wol</xsl:when>
				<xsl:when test="$myLanguageCode = 'fy'">fry</xsl:when>
				<xsl:when test="$myLanguageCode = 'xh'">xho</xsl:when>
				<xsl:when test="$myLanguageCode = 'yi'">yid</xsl:when>
				<xsl:when test="$myLanguageCode = 'yo'">yor</xsl:when>
				<xsl:when test="$myLanguageCode = 'za'">zha</xsl:when>
				<xsl:when test="$myLanguageCode = 'zu'">zul</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$myLanguageCode"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>

		<xsl:if test="$resultCode != ''">
			<xsl:value-of select="$resultCode"/>
		</xsl:if>
	</xsl:template>

	<!--  purpose:
		 template:  show-language
		parameter:	languageCode as=xs:string
		   result:	English tranlsated word for corresponding iso-639-1 $languageCode.
		            If there is no match, returns: Unknown ($languageCode).
	-->



	<xsl:template name="show-language">
		<xsl:param name="languageCode"/>
		<xsl:variable name="lowerCaseLanguageCode" select="lower-case($languageCode)"/>
		<xsl:variable name="myLanguageCode">
			<xsl:choose>
				<xsl:when test="contains($lowerCaseLanguageCode, '_')">
					<xsl:value-of select="substring-before($lowerCaseLanguageCode, '_')"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$lowerCaseLanguageCode"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>


			<xsl:variable name="resultCode">
					<xsl:if test="contains($myLanguageCode, text())">
						<xsl:value-of select="$myLanguageCode"/>
					</xsl:if>
						<xsl:choose>
					<xsl:when test="$myLanguageCode = 'aa'">Afar</xsl:when>
					<xsl:when test="$myLanguageCode = 'ab'">Abkhazian</xsl:when>
					<xsl:when test="$myLanguageCode = 'af'">Afrikaans</xsl:when>
					<xsl:when test="$myLanguageCode = 'ak'">Akan</xsl:when>
					<xsl:when test="$myLanguageCode = 'sq'">Albanian</xsl:when>
					<xsl:when test="$myLanguageCode = 'sq'">Albanian</xsl:when>
					<xsl:when test="$myLanguageCode = 'am'">Amharic</xsl:when>
					<xsl:when test="$myLanguageCode = 'ar'">Arabic</xsl:when>
					<xsl:when test="$myLanguageCode = 'an'">Aragonese</xsl:when>
					<xsl:when test="$myLanguageCode = 'hy'">Armenian</xsl:when>
					<xsl:when test="$myLanguageCode = 'hy'">Armenian</xsl:when>
					<xsl:when test="$myLanguageCode = 'as'">Assamese</xsl:when>
					<xsl:when test="$myLanguageCode = 'av'">Avaric</xsl:when>
					<xsl:when test="$myLanguageCode = 'ae'">Avestan</xsl:when>
					<xsl:when test="$myLanguageCode = 'ay'">Aymara</xsl:when>
					<xsl:when test="$myLanguageCode = 'az'">Azerbaijani</xsl:when>
					<xsl:when test="$myLanguageCode = 'ba'">Bashkir</xsl:when>
					<xsl:when test="$myLanguageCode = 'bm'">Bambara</xsl:when>
					<xsl:when test="$myLanguageCode = 'eu'">Basque</xsl:when>
					<xsl:when test="$myLanguageCode = 'eu'">Basque</xsl:when>
					<xsl:when test="$myLanguageCode = 'be'">Belarusian</xsl:when>
					<xsl:when test="$myLanguageCode = 'bn'">Bengali</xsl:when>
					<xsl:when test="$myLanguageCode = 'bh'">Bihari languages</xsl:when>
					<xsl:when test="$myLanguageCode = 'bi'">Bislama</xsl:when>
					<xsl:when test="$myLanguageCode = 'bs'">Bosnian</xsl:when>
					<xsl:when test="$myLanguageCode = 'br'">Breton</xsl:when>
					<xsl:when test="$myLanguageCode = 'bg'">Bulgarian</xsl:when>
					<xsl:when test="$myLanguageCode = 'my'">Burmese</xsl:when>
					<xsl:when test="$myLanguageCode = 'my'">Burmese</xsl:when>
					<xsl:when test="$myLanguageCode = 'ca'">Catalan; Valencian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ch'">Chamorro</xsl:when>
					<xsl:when test="$myLanguageCode = 'ce'">Chechen</xsl:when>
					<xsl:when test="$myLanguageCode = 'zh'">Chinese</xsl:when>
					<xsl:when test="$myLanguageCode = 'zh'">Chinese</xsl:when>
					<xsl:when test="$myLanguageCode = 'cu'">Church Slavic; Old Slavonic; Church Slavonic; Old Bulgarian; Old Church Slavonic</xsl:when>
					<xsl:when test="$myLanguageCode = 'cv'">Chuvash</xsl:when>
					<xsl:when test="$myLanguageCode = 'kw'">Cornish</xsl:when>
					<xsl:when test="$myLanguageCode = 'co'">Corsican</xsl:when>
					<xsl:when test="$myLanguageCode = 'cr'">Cree</xsl:when>
					<xsl:when test="$myLanguageCode = 'cs'">Czech</xsl:when>
					<xsl:when test="$myLanguageCode = 'cs'">Czech</xsl:when>
					<xsl:when test="$myLanguageCode = 'da'">Danish</xsl:when>
					<xsl:when test="$myLanguageCode = 'dv'">Divehi; Dhivehi; Maldivian</xsl:when>
					<xsl:when test="$myLanguageCode = 'nl'">Dutch; Flemish</xsl:when>
					<xsl:when test="$myLanguageCode = 'nl'">Dutch; Flemish</xsl:when>
					<xsl:when test="$myLanguageCode = 'dz'">Dzongkha</xsl:when>
					<xsl:when test="$myLanguageCode = 'en'">English</xsl:when>
					<xsl:when test="$myLanguageCode = 'eo'">Esperanto</xsl:when>
					<xsl:when test="$myLanguageCode = 'et'">Estonian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ee'">Ewe</xsl:when>
					<xsl:when test="$myLanguageCode = 'fo'">Faroese</xsl:when>
					<xsl:when test="$myLanguageCode = 'fj'">Fijian</xsl:when>
					<xsl:when test="$myLanguageCode = 'fi'">Finnish</xsl:when>
					<xsl:when test="$myLanguageCode = 'fr'">French</xsl:when>
					<xsl:when test="$myLanguageCode = 'fr'">French</xsl:when>
					<xsl:when test="$myLanguageCode = 'fy'">Western Frisian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ff'">Fulah</xsl:when>
					<xsl:when test="$myLanguageCode = 'ka'">Georgian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ka'">Georgian</xsl:when>
					<xsl:when test="$myLanguageCode = 'de'">German</xsl:when>
					<xsl:when test="$myLanguageCode = 'de'">German</xsl:when>
					<xsl:when test="$myLanguageCode = 'gd'">Gaelic; Scottish Gaelic</xsl:when>
					<xsl:when test="$myLanguageCode = 'ga'">Irish</xsl:when>
					<xsl:when test="$myLanguageCode = 'gl'">Galician</xsl:when>
					<xsl:when test="$myLanguageCode = 'gv'">Manx</xsl:when>
					<xsl:when test="$myLanguageCode = 'el'">Greek, Modern (1453-)</xsl:when>
					<xsl:when test="$myLanguageCode = 'el'">Greek, Modern (1453-)</xsl:when>
					<xsl:when test="$myLanguageCode = 'gn'">Guarani</xsl:when>
					<xsl:when test="$myLanguageCode = 'gu'">Gujarati</xsl:when>
					<xsl:when test="$myLanguageCode = 'ht'">Haitian; Haitian Creole</xsl:when>
					<xsl:when test="$myLanguageCode = 'ha'">Hausa</xsl:when>
					<xsl:when test="$myLanguageCode = 'he'">Hebrew</xsl:when>
					<xsl:when test="$myLanguageCode = 'hz'">Herero</xsl:when>
					<xsl:when test="$myLanguageCode = 'hi'">Hindi</xsl:when>
					<xsl:when test="$myLanguageCode = 'ho'">Hiri Motu</xsl:when>
					<xsl:when test="$myLanguageCode = 'hr'">Croatian</xsl:when>
					<xsl:when test="$myLanguageCode = 'hu'">Hungarian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ig'">Igbo</xsl:when>
					<xsl:when test="$myLanguageCode = 'is'">Icelandic</xsl:when>
					<xsl:when test="$myLanguageCode = 'is'">Icelandic</xsl:when>
					<xsl:when test="$myLanguageCode = 'io'">Ido</xsl:when>
					<xsl:when test="$myLanguageCode = 'ii'">Sichuan Yi; Nuosu</xsl:when>
					<xsl:when test="$myLanguageCode = 'iu'">Inuktitut</xsl:when>
					<xsl:when test="$myLanguageCode = 'ie'">Interlingue; Occidental</xsl:when>
					<xsl:when test="$myLanguageCode = 'ia'">Interlingua (International Auxiliary Language Association)</xsl:when>
					<xsl:when test="$myLanguageCode = 'id'">Indonesian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ik'">Inupiaq</xsl:when>
					<xsl:when test="$myLanguageCode = 'it'">Italian</xsl:when>
					<xsl:when test="$myLanguageCode = 'jv'">Javanese</xsl:when>
					<xsl:when test="$myLanguageCode = 'ja'">Japanese</xsl:when>
					<xsl:when test="$myLanguageCode = 'kl'">Kalaallisut; Greenlandic</xsl:when>
					<xsl:when test="$myLanguageCode = 'kn'">Kannada</xsl:when>
					<xsl:when test="$myLanguageCode = 'ks'">Kashmiri</xsl:when>
					<xsl:when test="$myLanguageCode = 'kr'">Kanuri</xsl:when>
					<xsl:when test="$myLanguageCode = 'kk'">Kazakh</xsl:when>
					<xsl:when test="$myLanguageCode = 'km'">Central Khmer</xsl:when>
					<xsl:when test="$myLanguageCode = 'ki'">Kikuyu; Gikuyu</xsl:when>
					<xsl:when test="$myLanguageCode = 'rw'">Kinyarwanda</xsl:when>
					<xsl:when test="$myLanguageCode = 'ky'">Kirghiz; Kyrgyz</xsl:when>
					<xsl:when test="$myLanguageCode = 'kv'">Komi</xsl:when>
					<xsl:when test="$myLanguageCode = 'kg'">Kongo</xsl:when>
					<xsl:when test="$myLanguageCode = 'ko'">Korean</xsl:when>
					<xsl:when test="$myLanguageCode = 'kj'">Kuanyama; Kwanyama</xsl:when>
					<xsl:when test="$myLanguageCode = 'ku'">Kurdish</xsl:when>
					<xsl:when test="$myLanguageCode = 'lo'">Lao</xsl:when>
					<xsl:when test="$myLanguageCode = 'la'">Latin</xsl:when>
					<xsl:when test="$myLanguageCode = 'lv'">Latvian</xsl:when>
					<xsl:when test="$myLanguageCode = 'li'">Limburgan; Limburger;Limburgish</xsl:when>
					<xsl:when test="$myLanguageCode = 'ln'">Lingala</xsl:when>
					<xsl:when test="$myLanguageCode = 'lt'">Lithuanian</xsl:when>
					<xsl:when test="$myLanguageCode = 'lb'">Luxembourgish; Letzeburgesch</xsl:when>
					<xsl:when test="$myLanguageCode = 'lu'">Luba-Katanga</xsl:when>
					<xsl:when test="$myLanguageCode = 'lg'">Ganda</xsl:when>
					<xsl:when test="$myLanguageCode = 'mk'">Macedonian</xsl:when>
					<xsl:when test="$myLanguageCode = 'mk'">Macedonian</xsl:when>
					<xsl:when test="$myLanguageCode = 'mh'">Marshallese</xsl:when>
					<xsl:when test="$myLanguageCode = 'ml'">Malayalam</xsl:when>
					<xsl:when test="$myLanguageCode = 'mi'">Maori</xsl:when>
					<xsl:when test="$myLanguageCode = 'mi'">Maori</xsl:when>
					<xsl:when test="$myLanguageCode = 'mr'">Marathi</xsl:when>
					<xsl:when test="$myLanguageCode = 'ms'">Malay</xsl:when>
					<xsl:when test="$myLanguageCode = 'ms'">Malay</xsl:when>
					<xsl:when test="$myLanguageCode = 'mg'">Malagasy</xsl:when>
					<xsl:when test="$myLanguageCode = 'mt'">Maltese</xsl:when>
					<xsl:when test="$myLanguageCode = 'mn'">Mongolian</xsl:when>
					<xsl:when test="$myLanguageCode = 'na'">Nauru</xsl:when>
					<xsl:when test="$myLanguageCode = 'nv'">Navajo; Navaho</xsl:when>
					<xsl:when test="$myLanguageCode = 'nr'">Ndebele, South; South Ndebele</xsl:when>
					<xsl:when test="$myLanguageCode = 'nd'">Ndebele, North; North Ndebele</xsl:when>
					<xsl:when test="$myLanguageCode = 'ng'">Ndonga</xsl:when>
					<xsl:when test="$myLanguageCode = 'ne'">Nepali</xsl:when>
					<xsl:when test="$myLanguageCode = 'nn'">Norwegian Nynorsk; Nynorsk,Norwegian</xsl:when>
					<xsl:when test="$myLanguageCode = 'nb'">Bokmål, Norwegian; Norwegian, Bokmål</xsl:when>
					<xsl:when test="$myLanguageCode = 'no'">Norwegian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ny'">Chichewa; Chewa; Nyanja</xsl:when>
					<xsl:when test="$myLanguageCode = 'oc'">Occitan (post 1500)</xsl:when>
					<xsl:when test="$myLanguageCode = 'oj'">Ojibwa</xsl:when>
					<xsl:when test="$myLanguageCode = 'or'">Oriya</xsl:when>
					<xsl:when test="$myLanguageCode = 'om'">Oromo</xsl:when>
					<xsl:when test="$myLanguageCode = 'os'">Ossetian; Ossetic</xsl:when>
					<xsl:when test="$myLanguageCode = 'pa'">Panjabi; Punjabi</xsl:when>
					<xsl:when test="$myLanguageCode = 'fa'">Persian</xsl:when>
					<xsl:when test="$myLanguageCode = 'fa'">Persian</xsl:when>
					<xsl:when test="$myLanguageCode = 'pi'">Pali</xsl:when>
					<xsl:when test="$myLanguageCode = 'pl'">Polish</xsl:when>
					<xsl:when test="$myLanguageCode = 'pt'">Portuguese</xsl:when>
					<xsl:when test="$myLanguageCode = 'ps'">Pushto; Pashto</xsl:when>
					<xsl:when test="$myLanguageCode = 'qu'">Quechua</xsl:when>
					<xsl:when test="$myLanguageCode = 'rm'">Romansh</xsl:when>
					<xsl:when test="$myLanguageCode = 'ro'">Romanian; Moldavian; Moldovan</xsl:when>
					<xsl:when test="$myLanguageCode = 'ro'">Romanian; Moldavian; Moldovan</xsl:when>
					<xsl:when test="$myLanguageCode = 'rn'">Rundi</xsl:when>
					<xsl:when test="$myLanguageCode = 'ru'">Russian</xsl:when>
					<xsl:when test="$myLanguageCode = 'sg'">Sango</xsl:when>
					<xsl:when test="$myLanguageCode = 'sa'">Sanskrit</xsl:when>
					<xsl:when test="$myLanguageCode = 'si'">Sinhala; Sinhalese</xsl:when>
					<xsl:when test="$myLanguageCode = 'sk'">Slovak</xsl:when>
					<xsl:when test="$myLanguageCode = 'sk'">Slovak</xsl:when>
					<xsl:when test="$myLanguageCode = 'sl'">Slovenian</xsl:when>
					<xsl:when test="$myLanguageCode = 'se'">Northern Sami</xsl:when>
					<xsl:when test="$myLanguageCode = 'sm'">Samoan</xsl:when>
					<xsl:when test="$myLanguageCode = 'sn'">Shona</xsl:when>
					<xsl:when test="$myLanguageCode = 'sd'">Sindhi</xsl:when>
					<xsl:when test="$myLanguageCode = 'so'">Somali</xsl:when>
					<xsl:when test="$myLanguageCode = 'st'">Sotho, Southern</xsl:when>
					<xsl:when test="$myLanguageCode = 'es'">Spanish; Castilian</xsl:when>
					<xsl:when test="$myLanguageCode = 'sc'">Sardinian</xsl:when>
					<xsl:when test="$myLanguageCode = 'sr'">Serbian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ss'">Swati</xsl:when>
					<xsl:when test="$myLanguageCode = 'su'">Sundanese</xsl:when>
					<xsl:when test="$myLanguageCode = 'sw'">Swahili</xsl:when>
					<xsl:when test="$myLanguageCode = 'sv'">Swedish</xsl:when>
					<xsl:when test="$myLanguageCode = 'ty'">Tahitian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ta'">Tamil</xsl:when>
					<xsl:when test="$myLanguageCode = 'tt'">Tatar</xsl:when>
					<xsl:when test="$myLanguageCode = 'te'">Telugu</xsl:when>
					<xsl:when test="$myLanguageCode = 'tg'">Tajik</xsl:when>
					<xsl:when test="$myLanguageCode = 'tl'">Tagalog</xsl:when>
					<xsl:when test="$myLanguageCode = 'th'">Thai</xsl:when>
					<xsl:when test="$myLanguageCode = 'bo'">Tibetan</xsl:when>
					<xsl:when test="$myLanguageCode = 'bo'">Tibetan</xsl:when>
					<xsl:when test="$myLanguageCode = 'ti'">Tigrinya</xsl:when>
					<xsl:when test="$myLanguageCode = 'to'">Tonga (Tonga Islands)</xsl:when>
					<xsl:when test="$myLanguageCode = 'tn'">Tswana</xsl:when>
					<xsl:when test="$myLanguageCode = 'ts'">Tsonga</xsl:when>
					<xsl:when test="$myLanguageCode = 'tk'">Turkmen</xsl:when>
					<xsl:when test="$myLanguageCode = 'tr'">Turkish</xsl:when>
					<xsl:when test="$myLanguageCode = 'tw'">Twi</xsl:when>
					<xsl:when test="$myLanguageCode = 'ug'">Uighur; Uyghur</xsl:when>
					<xsl:when test="$myLanguageCode = 'uk'">Ukrainian</xsl:when>
					<xsl:when test="$myLanguageCode = 'ur'">Urdu</xsl:when>
					<xsl:when test="$myLanguageCode = 'uz'">Uzbek</xsl:when>
					<xsl:when test="$myLanguageCode = 've'">Venda</xsl:when>
					<xsl:when test="$myLanguageCode = 'vi'">Vietnamese</xsl:when>
					<xsl:when test="$myLanguageCode = 'vo'">Volapük</xsl:when>
					<xsl:when test="$myLanguageCode = 'cy'">Welsh</xsl:when>
					<xsl:when test="$myLanguageCode = 'cy'">Welsh</xsl:when>
					<xsl:when test="$myLanguageCode = 'wa'">Walloon</xsl:when>
					<xsl:when test="$myLanguageCode = 'wo'">Wolof</xsl:when>
					<xsl:when test="$myLanguageCode = 'xh'">Xhosa</xsl:when>
					<xsl:when test="$myLanguageCode = 'yi'">Yiddish</xsl:when>
					<xsl:when test="$myLanguageCode = 'yo'">Yoruba</xsl:when>
					<xsl:when test="$myLanguageCode = 'za'">Zhuang; Chuang</xsl:when>
					<xsl:when test="$myLanguageCode = 'zu'">Zulu</xsl:when>
					<xsl:when test="$myLanguageCode = 'zu'">Zulu</xsl:when>
					<xsl:when test="$myLanguageCode = 'zun'">Zuni</xsl:when>
					<xsl:when test="$myLanguageCode = 'zxx'">No linguistic content; Not applicable</xsl:when>
					<xsl:when test="$myLanguageCode = 'zza'">Zaza; Dimili; Dimli; Kirdki; Kirmanjki;
						Zazaki</xsl:when>
					<xsl:otherwise>Unknown (<xsl:value-of select="$myLanguageCode"/>)</xsl:otherwise>

						</xsl:choose>
			</xsl:variable>

		<xsl:if test="$resultCode != ''">
			<xsl:value-of select="$resultCode"/>
		</xsl:if>
	</xsl:template>



</xsl:stylesheet>
