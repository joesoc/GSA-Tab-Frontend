<!-- ************ Custom Template - Vinay Joseph -
	Edit only tabs variable XML to generate tab. DO NOT EDIT anything below html line 17. 
*********-->

<xsl:template name="gsa_custom_tabs">
	<xsl:variable name="activetab_background_color">#EFFBFB</xsl:variable>
	<xsl:variable name="tab_font_size">small</xsl:variable>
	<xsl:variable name="tab_border_color">#dddddd</xsl:variable>

		<xsl:variable name="tabs">
			<tabs>
				<tab name="App Script" href="/search?q={$space_normalized_query}&amp;site=AppScript&amp;client=wc_frontend&amp;proxystylesheet=wc_frontend" col="AppScript" ctype="All_tab"></tab>
				<tab name="Python" href="/search?q={$space_normalized_query}&amp;site=python_docs&amp;client=wc_frontend&amp;proxystylesheet=wc_frontend" col="python_docs" ctype="python_tabs"></tab>
			</tabs>
		</xsl:variable>

<html>
	<head>
		<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
		<script src="/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="template.css"></link>
	</head>
	<body>	

		<div class="container" style="margin-bottom:5px;">
			<ul class="nav nav-tabs" style="border-bottom-width: 0px; margin-top: 0px; list-style-type: none;">	
				<xsl:for-each select="$tabs/tabs/tab">
					<xsl:variable name="col" select="@col" />
					<xsl:choose>
						<xsl:when test="PARAM[(@name='site') and (@value=$col)]">
							<li class="active">
								<a href="{@href}" ctype="{@ctype}">									
									<xsl:value-of select="@name"></xsl:value-of>
								</a>
							</li>
						</xsl:when>
						<xsl:otherwise>
							<li>
								<a href="{@href}" ctype="{@ctype}">
									<xsl:value-of select="@name"></xsl:value-of>
								</a>
							</li>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</ul>
		</div>
	</body>
</html>
</xsl:template>
