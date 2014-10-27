<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:decimal-format name="usa" NaN="Non-profit"/>
<xsl:template match="/tech-jobs">

<html>
	<head>
		<title>Easy Read TC Jobs</title>
		<link href="tech-jobs.css" rel="stylesheet" type="text/css" />
	</head>
	
	<body>
		<!--Navigation bar in header-->					
		<header>
			<ul class="navbar">
				<li class="bar"><a class="bar" href="java-table.html">Sortable Table</a></li>
				<li class="bar"><a class="bar" href="reflection_estrada.html">Reflection Paper</a></li>
				<li class="bar"><a class="bar" href="project_estrada.html">Project</a></li>
			</ul>
		</header>	

		<h3>Jobs for Technical Communicators</h3>

		<table>
			<tr>
				<th>The Position</th>
				<th>The Company</th>
				<th>The Perks</th>
			</tr>

	<!--Content selected by tag name for table, sorted by company name-->			
			<xsl:for-each select="job-info">
			<xsl:sort select="company" />
						
			<tr>
				<xsl:for-each select="position"><td class="post">
					<h4><xsl:value-of select="title" /></h4>
				
				<xsl:for-each select="requirements">			
					<h5 class="post">Experience</h5>
					<ul>
						<li><xsl:value-of select="education" /></li>
						<li><xsl:value-of select="experience" /></li>
					</ul>				
					<h5 class="post">Skills</h5>
						<ul>
							<xsl:for-each select="skills">
								<xsl:for-each select="skill">
									<li><xsl:value-of select="." /></li>
								</xsl:for-each>
							</xsl:for-each>
						</ul>
					<h5 class="post">Tools</h5>
						<ul>
							<xsl:for-each select="tools">
								<xsl:for-each select="tool">
									<li><xsl:value-of select="." /></li>
								</xsl:for-each>
							</xsl:for-each>
						</ul>
					<h5 class="post">Tasks</h5>
						<ul>
							<xsl:for-each select="tasks">
								<xsl:for-each select="task">
									<li><xsl:value-of select="." /></li>
								</xsl:for-each>
							</xsl:for-each>
						</ul>			
				</xsl:for-each>			
				</td></xsl:for-each>
				
				<xsl:for-each select="company"><td class="comp">			
					<h4><xsl:value-of select="name" /></h4>
					
					<xsl:for-each select="location">
						<xsl:value-of select="city" />, <xsl:value-of select="state" />
					</xsl:for-each>			
					
					<p class="comp">Est. <xsl:value-of select="founded" /></p>				
					<p class="comp">Industry: <xsl:value-of select="industry" /></p>
					<p class="comp">Employees: <xsl:value-of select="emp-size" /></p>
					<p class="comp">Revenue: <xsl:value-of select="format-number
					(revenue, '$###,###,###', 'usa')" /></p>
					
					<xsl:for-each select="career-link">
									<h5 class="link"><a class="career-link">
									<xsl:attribute name="href">
									<xsl:value-of select="url" /></xsl:attribute>
									<xsl:value-of select="description" /></a></h5>
					</xsl:for-each>
				</td></xsl:for-each>
				
				<xsl:for-each select="perks"><td class="perks">			
					<h5 class="perk">Culture</h5>
						<ul class="perk">
							<xsl:for-each select="fun-facts">
								<xsl:for-each select="fact">
									<li><xsl:value-of select="." /></li>
								</xsl:for-each>
							</xsl:for-each>
						</ul>
					<h5 class="perk">Benefits</h5>
						<ul class="perk">
							<xsl:for-each select="benefits">
								<xsl:for-each select="benefit">
									<li><xsl:value-of select="." /></li>
								</xsl:for-each>
							</xsl:for-each>
						</ul>
				</td></xsl:for-each>			
			</tr>
			</xsl:for-each>
		</table>
		<!--Navigation bar in footer-->					
		<footer>
			<ul class="navbar">
				<li class="bar"><a class="bar" href="java-table.html">Sortable Table</a></li>
				<li class="bar"><a class="bar" href="reflection_estrada.html">Reflection Paper</a></li>
				<li class="bar"><a class="bar" href="project_estrada.html">Project</a></li>
			</ul>	
		</footer>
	</body>
</html>

</xsl:template>
</xsl:stylesheet>