<!-- ************ Custom Template - Vinay Joseph -
	Edit only tabs variable XML to generate tab. DO NOT EDIT anything below html line 17. 
*********-->

<xsl:template name="gsa_custom_tabs">
  <xsl:variable name="tabs">
    <tabs>
      <tab name="All" col="default_collection" ctype="All_tab"></tab>
      <tab name="Courses" col="file_system" ctype="file_system"></tab>
      <tab name="Policies" col="policy" ctype="policy"></tab>
      <tab name="Library" col="lib" ctype="lib"></tab>
      <tab name="Other Systems" col="other" ctype="other"></tab>
    </tabs>
  </xsl:variable>
<link rel="stylesheet" type="text/css" href="//collection_tabs.css"></link>
<div class="container" id="centeredmenu">
  <ul class="search-collection-list desktop"> 
      <xsl:variable name="tempcheck" select="/GSP/PARAM[@name='site']/@value" />
      <xsl:for-each select="$tabs/tabs/tab">
          <xsl:variable name="col" select="@col"></xsl:variable>
           <xsl:choose>
            <xsl:when test="$tempcheck=$col">
              <li class="search-collection-tab-item" id="active">
                <a href="{$gsa_search_root_path_prefix}?{$custom_tab_url}&amp;site={$col}" ctype="{@ctype}" class="Active">                 
                  <xsl:value-of select="@name"></xsl:value-of>
                </a>
              </li>
            </xsl:when>
            <xsl:otherwise>
              <li class="search-collection-tab-item">
                <a href="{$gsa_search_root_path_prefix}?{$custom_tab_url}&amp;site={$col}" ctype="{@ctype}">
                  <xsl:value-of select="@name"></xsl:value-of> 
                </a>
              </li>
            </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
  </ul>
</div>
</xsl:template>
