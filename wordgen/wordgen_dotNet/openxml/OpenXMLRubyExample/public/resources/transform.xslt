<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:n2="urn:hl7-org:v3"
    xmlns:map="urn:internal"
	exclude-result-prefixes="n2 xs xsi xsl map"
	>
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<w:document
			xmlns:ve="http://schemas.openxmlformats.org/markup-compatibility/2006"
			xmlns:o="urn:schemas-microsoft-com:office:office"
			xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
			xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math"
			xmlns:v="urn:schemas-microsoft-com:vml"
			xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"
			xmlns:w10="urn:schemas-microsoft-com:office:word"
			xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
			xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml">
			<w:body>
				<w:p w:rsidR="004A3019" w:rsidRDefault="004A3019" w:rsidP="004A3019">
					<w:pPr>
						<w:rPr>
							<w:b/>
							<w:sz w:val="52"/>
						</w:rPr>
					</w:pPr>
					<w:r>
						<w:rPr>
							<w:noProof/>
						</w:rPr>
						<w:pict>
							<v:shapetype id="_x0000_t144" coordsize="21600,21600" o:spt="144" adj="11796480" path="al10800,10800,10800,10800@2@14e">
								<v:formulas>
									<v:f eqn="val #1"/>
									<v:f eqn="val #0"/>
									<v:f eqn="sum 0 0 #0"/>
									<v:f eqn="sumangle #0 0 180"/>
									<v:f eqn="sumangle #0 0 90"/>
									<v:f eqn="prod @4 2 1"/>
									<v:f eqn="sumangle #0 90 0"/>
									<v:f eqn="prod @6 2 1"/>
									<v:f eqn="abs #0"/>
									<v:f eqn="sumangle @8 0 90"/>
									<v:f eqn="if @9 @7 @5"/>
									<v:f eqn="sumangle @10 0 360"/>
									<v:f eqn="if @10 @11 @10"/>
									<v:f eqn="sumangle @12 0 360"/>
									<v:f eqn="if @12 @13 @12"/>
									<v:f eqn="sum 0 0 @14"/>
									<v:f eqn="val 10800"/>
									<v:f eqn="cos 10800 #0"/>
									<v:f eqn="sin 10800 #0"/>
									<v:f eqn="sum @17 10800 0"/>
									<v:f eqn="sum @18 10800 0"/>
									<v:f eqn="sum 10800 0 @17"/>
									<v:f eqn="if @9 0 21600"/>
									<v:f eqn="sum 10800 0 @18"/>
								</v:formulas>
								<v:path textpathok="t" o:connecttype="custom" o:connectlocs="10800,@22;@19,@20;@21,@20"/>
								<v:textpath on="t" style="v-text-kern:t" fitpath="t"/>
								<v:handles>
									<v:h position="@16,#0" polar="10800,10800"/>
								</v:handles>
								<o:lock v:ext="edit" text="t" shapetype="t"/>
							</v:shapetype>
							<v:shape id="_x0000_s1026" type="#_x0000_t144" style="position:absolute;margin-left:0;margin-top:.85pt;width:440.25pt;height:65.25pt;z-index:251660288;mso-position-horizontal:center" o:borderbottomcolor="this" fillcolor="black">
								<v:shadow color="#868686"/>
								<xsl:variable name="organisationName" select="string(n2:ClinicalDocument/n2:custodian/n2:assignedCustodian/n2:representedCustodianOrganization/n2:name)"/>
								<v:textpath style="font-family:&quot;Arial Black&quot;" fitshape="t" trim="t" string="{$organisationName}"/>
							</v:shape>
						</w:pict>
					</w:r>
				</w:p>
				<w:p w:rsidR="00720332" w:rsidRPr="006078F7" w:rsidRDefault="00971BFB" w:rsidP="004A3019">
					<w:pPr>
						<w:jc w:val="center"/>
						<w:rPr>
							<w:color w:val="FF0000"/>
							<w:sz w:val="36"/>
							<w:szCs w:val="36"/>
						</w:rPr>
					</w:pPr>
					<w:r w:rsidRPr="006078F7">
						<w:rPr>
							<w:b/>
							<w:color w:val="FF0000"/>
							<w:sz w:val="36"/>
							<w:szCs w:val="36"/>
						</w:rPr>
						<w:t>
							<xsl:value-of select="string(n2:ClinicalDocument/n2:title)"/>
						</w:t>
					</w:r>
				</w:p>
				<w:p w:rsidR="007471DE" w:rsidRDefault="00D36188" w:rsidP="007B7CEB">
					<w:pPr>
						<w:pBdr>
							<w:top w:val="single" w:sz="4" w:space="1" w:color="auto"/>
							<w:left w:val="single" w:sz="4" w:space="4" w:color="auto"/>
							<w:bottom w:val="single" w:sz="4" w:space="1" w:color="auto"/>
							<w:right w:val="single" w:sz="4" w:space="4" w:color="auto"/>
						</w:pBdr>
						<w:tabs>
							<w:tab w:val="center" w:pos="4513"/>
							<w:tab w:val="right" w:pos="9026"/>
						</w:tabs>
					</w:pPr>
					<w:r w:rsidRPr="00EE558B">
						<w:rPr>
							<w:b/>
						</w:rPr>
						<w:t>Patient</w:t>
					</w:r>
					<w:r w:rsidR="00212BFD" w:rsidRPr="00EE558B">
						<w:t>
							: <xsl:value-of select="string(n2:ClinicalDocument/n2:recordTarget/n2:patientRole/n2:patientPatient/n2:name/n2:given)"/>&#xa0;<xsl:value-of select="string(n2:recordTarget/n2:patientRole/n2:patientPatient/n2:name/n2:family)"/>&#xa0;<xsl:value-of select="string(n2:recordTarget/n2:patientRole/n2:patientPatient/n2:name/n2:suffix)"/>
						</w:t>
					</w:r>
					<w:r w:rsidR="00212BFD">
						<w:tab/>
					</w:r>
					<w:r w:rsidR="00212BFD" w:rsidRPr="00EE558B">
						<w:rPr>
							<w:b/>
						</w:rPr>
						<w:t>DOB:&#xa0;</w:t>
						<w:t>
						</w:t>
					</w:r>
					<w:r w:rsidR="00212BFD">
						<w:t>
							<xsl:call-template name="dateTransformer">
								<xsl:with-param name="myDate" select="string(n2:ClinicalDocument/n2:recordTarget/n2:patientRole/n2:patientPatient/n2:birthTime/@value)"/>
							</xsl:call-template>
						</w:t>
					</w:r>
					<w:r w:rsidR="00212BFD">
						<w:tab/>
					</w:r>
					<w:r w:rsidR="00212BFD" w:rsidRPr="00EE558B">
						<w:rPr>
							<w:b/>
						</w:rPr>
						<w:t>Gender</w:t>
					</w:r>
					<w:r w:rsidR="00212BFD">
						<xsl:if test="string(n2:ClinicalDocument/n2:recordTarget/n2:patientRole/n2:patientPatient/n2:administrativeGenderCode/@code) ='M'">
							<w:t>: Male</w:t>
						</xsl:if>
						<xsl:if test="string(n2:ClinicalDocument/n2:recordTarget/n2:patientRole/n2:patientPatient/n2:administrativeGenderCode/@code) ='F'">
							<w:t>: Female</w:t>
						</xsl:if>
					</w:r>
				</w:p>
				<w:p w:rsidR="0061321A" w:rsidRPr="006078F7" w:rsidRDefault="00A814B9">
					<w:pPr>
						<w:rPr>
							<w:u w:val="single"/>
						</w:rPr>
					</w:pPr>
					<w:r>
						<w:t>
							Authenticator:&#xa0;<xsl:value-of select="string(n2:ClinicalDocument/n2:legalAuthenticator/n2:assignedEntity/n2:assignedPerson/n2:name/n2:given)"/>&#xa0;<xsl:value-of select="string(n2:legalAuthenticator/n2:assignedEntity/n2:assignedPerson/n2:name/n2:family)"/>&#xa0;<xsl:value-of select="string(n2:legalAuthenticator/n2:assignedEntity/n2:assignedPerson/n2:name/n2:suffix)"/>
						</w:t>
					</w:r>
				</w:p>
				<w:p w:rsidR="00AE02BB" w:rsidRDefault="001E7A7C">
					<w:r>
						<w:rPr>
							<w:b/>
						</w:rPr>
						<w:t>History of Present Illness</w:t>
					</w:r>
				</w:p>
				<w:p w:rsidR="001E7A7C" w:rsidRPr="001E7A7C" w:rsidRDefault="009F4C47" w:rsidP="00F81A0E">
					<w:pPr>
						<w:pStyle w:val="Quote"/>
					</w:pPr>
					<w:r>
						<w:t>
							<xsl:value-of select="string(n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component/n2:section/n2:text)"/>
						</w:t>
					</w:r>
				</w:p>
				<w:p w:rsidR="000120E3" w:rsidRDefault="00E05032">
					<w:r>
						<w:rPr>
							<w:b/>
							<w:noProof/>
							<w:lang w:eastAsia="en-NZ"/>
						</w:rPr>
						<w:pict>
							<v:shapetype id="_x0000_t202" coordsize="21600,21600" o:spt="202" path="m,l,21600r21600,l21600,xe">
								<v:stroke joinstyle="miter"/>
								<v:path gradientshapeok="t" o:connecttype="rect"/>
							</v:shapetype>
							<v:shape id="_x0000_s1030" type="#_x0000_t202" style="position:absolute;margin-left:229.35pt;margin-top:.6pt;width:216.85pt;height:102.35pt;z-index:251662336;mso-width-relative:margin;mso-height-relative:margin">
								<v:textbox style="mso-next-textbox:#_x0000_s1030">
									<w:txbxContent>
										<w:p w:rsidR="00E05032" w:rsidRDefault="00E05032" w:rsidP="00E05032">
											<w:r>
												<w:rPr>
													<w:b/>
												</w:rPr>
												<w:t>
													<xsl:value-of select="string(n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component[4]/n2:section/n2:title)"/>
												</w:t>
											</w:r>
										</w:p>
										<xsl:for-each select="n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component[4]/n2:section/n2:text/n2:list/n2:item">
											<w:p w:rsidR="00E05032" w:rsidRPr="00B741A8" w:rsidRDefault="00E05032" w:rsidP="00E05032">
												<w:pPr>
													<w:pStyle w:val="ListParagraph"/>
													<w:numPr>
														<w:ilvl w:val="0"/>
														<w:numId w:val="5"/>
													</w:numPr>
												</w:pPr>
												<w:r>
													<w:rPr>
														<w:noProof/>
													</w:rPr>
													<w:t>
														<xsl:value-of select="string(.)"/>
													</w:t>
												</w:r>
											</w:p>
										</xsl:for-each>
									</w:txbxContent>
								</v:textbox>
							</v:shape>
						</w:pict>
					</w:r>
					<w:r>
						<w:rPr>
							<w:b/>
							<w:noProof/>
							<w:lang w:eastAsia="en-NZ"/>
						</w:rPr>
						<w:pict>
							<v:shape id="_x0000_s1029" type="#_x0000_t202" style="position:absolute;margin-left:2.5pt;margin-top:.6pt;width:216.85pt;height:102.35pt;z-index:251661312;mso-width-relative:margin;mso-height-relative:margin">
								<v:textbox style="mso-next-textbox:#_x0000_s1029">
									<w:txbxContent>
										<w:p w:rsidR="00E05032" w:rsidRDefault="00E05032" w:rsidP="00E05032">
											<w:r>
												<w:rPr>
													<w:b/>
												</w:rPr>
												<w:t>
													<xsl:value-of select="string(n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component[2]/n2:section/n2:title)"/>
												</w:t>
											</w:r>
										</w:p>
										<xsl:for-each select="n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component/n2:section/n2:text/n2:list/n2:item/n2:content">
											<w:p w:rsidR="0061321A" w:rsidRDefault="00B3619C" w:rsidP="00EF5CA4">
												<w:pPr>
													<w:pStyle w:val="ListParagraph"/>
													<w:numPr>
														<w:ilvl w:val="0"/>
														<w:numId w:val="4"/>
													</w:numPr>
												</w:pPr>
												<w:r>
													<w:t>
														<xsl:value-of select="string(.)"/>
													</w:t>
												</w:r>
											</w:p>
										</xsl:for-each>
									</w:txbxContent>
								</v:textbox>
							</v:shape>
						</w:pict>
					</w:r>
				</w:p>
				<w:p w:rsidR="00B82B68" w:rsidRDefault="00B82B68" w:rsidP="00B82B68">
					<w:r>
						<w:rPr>
							<w:b/>
						</w:rPr>
						<w:t>
						</w:t>
					</w:r>
				</w:p>
				<w:p />
				<w:p />
				<w:p />
				<w:p w:rsidR="00B82B68" w:rsidRDefault="00B82B68" w:rsidP="00B82B68">
					<w:r>
						<w:rPr>
							<w:b/>
						</w:rPr>
						<w:t>
							<xsl:value-of select="string(n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component[7]/n2:section/n2:component[1]/n2:section/n2:title)"/>
						</w:t>
					</w:r>
				</w:p>
				<w:tbl>
					<w:tblPr>
						<w:tblStyle w:val="LightShading-Accent3"/>
						<w:tblW w:w="9041" w:type="dxa"/>
						<w:tblLook w:val="04A0"/>
					</w:tblPr>
					<w:tblGrid>
						<w:gridCol w:w="2456"/>
						<w:gridCol w:w="3456"/>
						<w:gridCol w:w="3129"/>
					</w:tblGrid>
					<w:tr w:rsidR="00B82B68" w:rsidRPr="00B82B68" w:rsidTr="00D3685C">
						<w:trPr>
							<w:cnfStyle w:val="100000000000"/>
							<w:trHeight w:val="285"/>
						</w:trPr>
						<w:tc>
							<w:tcPr>
								<w:cnfStyle w:val="001000000000"/>
								<w:tcW w:w="0" w:type="auto"/>
								<w:hideMark/>
							</w:tcPr>
							<w:p w:rsidR="00B82B68" w:rsidRPr="00B82B68" w:rsidRDefault="00B82B68" w:rsidP="00B82B68">
								<w:pPr>
									<w:jc w:val="center"/>
									<w:rPr>
										<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
										<w:sz w:val="24"/>
										<w:szCs w:val="24"/>
										<w:lang w:eastAsia="en-NZ"/>
									</w:rPr>
								</w:pPr>
								<w:r w:rsidRPr="00B82B68">
									<w:rPr>
										<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
										<w:sz w:val="24"/>
										<w:szCs w:val="24"/>
										<w:lang w:eastAsia="en-NZ"/>
									</w:rPr>
									<w:t>
										<xsl:value-of select="string(n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component[7]/n2:section/n2:component[1]/n2:section/n2:text/n2:table/n2:tr[1]/n2:th[1])"/>
									</w:t>
								</w:r>
							</w:p>
						</w:tc>
						<w:tc>
							<w:tcPr>
								<w:tcW w:w="0" w:type="auto"/>
								<w:hideMark/>
							</w:tcPr>
							<w:p w:rsidR="00B82B68" w:rsidRPr="00B82B68" w:rsidRDefault="00B82B68" w:rsidP="00B82B68">
								<w:pPr>
									<w:jc w:val="center"/>
									<w:cnfStyle w:val="100000000000"/>
									<w:rPr>
										<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
										<w:sz w:val="24"/>
										<w:szCs w:val="24"/>
										<w:lang w:eastAsia="en-NZ"/>
									</w:rPr>
								</w:pPr>
								<w:r w:rsidRPr="00B82B68">
									<w:rPr>
										<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
										<w:sz w:val="24"/>
										<w:szCs w:val="24"/>
										<w:lang w:eastAsia="en-NZ"/>
									</w:rPr>
									<w:t>
										<xsl:value-of select="string(n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component[7]/n2:section/n2:component[1]/n2:section/n2:text/n2:table/n2:tr[1]/n2:th[2])"/>
									</w:t>
								</w:r>
							</w:p>
						</w:tc>
						<w:tc>
							<w:tcPr>
								<w:tcW w:w="0" w:type="auto"/>
								<w:hideMark/>
							</w:tcPr>
							<w:p w:rsidR="00B82B68" w:rsidRPr="00B82B68" w:rsidRDefault="00B82B68" w:rsidP="00B82B68">
								<w:pPr>
									<w:jc w:val="center"/>
									<w:cnfStyle w:val="100000000000"/>
									<w:rPr>
										<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
										<w:sz w:val="24"/>
										<w:szCs w:val="24"/>
										<w:lang w:eastAsia="en-NZ"/>
									</w:rPr>
								</w:pPr>
								<w:r w:rsidRPr="00B82B68">
									<w:rPr>
										<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
										<w:sz w:val="24"/>
										<w:szCs w:val="24"/>
										<w:lang w:eastAsia="en-NZ"/>
									</w:rPr>
									<w:t>
										<xsl:value-of select="string(n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component[7]/n2:section/n2:component[1]/n2:section/n2:text/n2:table/n2:tr[1]/n2:th[3])"/>
									</w:t>
								</w:r>
							</w:p>
						</w:tc>
					</w:tr>
					<xsl:for-each select="n2:ClinicalDocument/n2:component/n2:StructuredBody/n2:component[7]/n2:section/n2:component[1]/n2:section/n2:text/n2:table/n2:tr">
						<xsl:if test="string(./n2:th[1]) != 'Date / Time'">
							<w:tr w:rsidR="00B82B68" w:rsidRPr="00B82B68" w:rsidTr="00D3685C">
								<w:trPr>
									<w:cnfStyle w:val="100000000000"/>
									<w:trHeight w:val="285"/>
								</w:trPr>
								<w:tc>
									<w:tcPr>
										<w:cnfStyle w:val="001000000000"/>
										<w:tcW w:w="0" w:type="auto"/>
										<w:hideMark/>
									</w:tcPr>
									<w:p w:rsidR="00B82B68" w:rsidRPr="00B82B68" w:rsidRDefault="00B82B68" w:rsidP="00B82B68">
										<w:pPr>
											<w:jc w:val="center"/>
											<w:rPr>
												<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
												<w:sz w:val="24"/>
												<w:szCs w:val="24"/>
												<w:lang w:eastAsia="en-NZ"/>
											</w:rPr>
										</w:pPr>
										<w:r w:rsidRPr="00B82B68">
											<w:rPr>
												<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
												<w:sz w:val="24"/>
												<w:szCs w:val="24"/>
												<w:lang w:eastAsia="en-NZ"/>
											</w:rPr>
											<w:t>
												<xsl:value-of select="string(./n2:th[1])"/>
											</w:t>
										</w:r>
									</w:p>
								</w:tc>
								<w:tc>
									<w:tcPr>
										<w:tcW w:w="0" w:type="auto"/>
										<w:hideMark/>
									</w:tcPr>
									<w:p w:rsidR="00B82B68" w:rsidRPr="00B82B68" w:rsidRDefault="00B82B68" w:rsidP="00B82B68">
										<w:pPr>
											<w:jc w:val="center"/>
											<w:cnfStyle w:val="100000000000"/>
											<w:rPr>
												<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
												<w:sz w:val="24"/>
												<w:szCs w:val="24"/>
												<w:lang w:eastAsia="en-NZ"/>
											</w:rPr>
										</w:pPr>
										<w:r w:rsidRPr="00B82B68">
											<w:rPr>
												<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
												<w:sz w:val="24"/>
												<w:szCs w:val="24"/>
												<w:lang w:eastAsia="en-NZ"/>
											</w:rPr>
											<w:t>
												<xsl:value-of select="string(./n2:td[1])"/>
											</w:t>
										</w:r>
									</w:p>
								</w:tc>
								<w:tc>
									<w:tcPr>
										<w:tcW w:w="0" w:type="auto"/>
										<w:hideMark/>
									</w:tcPr>
									<w:p w:rsidR="00B82B68" w:rsidRPr="00B82B68" w:rsidRDefault="00B82B68" w:rsidP="00B82B68">
										<w:pPr>
											<w:jc w:val="center"/>
											<w:cnfStyle w:val="100000000000"/>
											<w:rPr>
												<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
												<w:sz w:val="24"/>
												<w:szCs w:val="24"/>
												<w:lang w:eastAsia="en-NZ"/>
											</w:rPr>
										</w:pPr>
										<w:r w:rsidRPr="00B82B68">
											<w:rPr>
												<w:rFonts w:ascii="Times New Roman" w:eastAsia="Times New Roman" w:hAnsi="Times New Roman" w:cs="Times New Roman"/>
												<w:sz w:val="24"/>
												<w:szCs w:val="24"/>
												<w:lang w:eastAsia="en-NZ"/>
											</w:rPr>
											<w:t>
												<xsl:value-of select="string(./n2:td[2])"/>
											</w:t>
										</w:r>
									</w:p>
								</w:tc>
							</w:tr>
						</xsl:if>
					</xsl:for-each>
				</w:tbl>
				<w:p w:rsidR="0061321A" w:rsidRDefault="00AB315B" w:rsidP="00B82B68"/>
				<w:sectPr w:rsidR="007471DE">
					<w:headerReference w:type="default" r:id="rId8"/>
					<w:footerReference w:type="default" r:id="rId9"/>
					<w:pgSz w:w="11906" w:h="16838"/>
					<w:pgMar w:top="1440" w:right="1440" w:bottom="1440" w:left="1440" w:header="708" w:footer="708" w:gutter="0"/>
					<w:cols w:space="708"/>
					<w:docGrid w:linePitch="360"/>
				</w:sectPr>
			</w:body>
		</w:document>
	</xsl:template>

	<xsl:template name="dateTransformer">
		<xsl:param name="myDate"/>
		<xsl:variable name="year" select="substring($myDate, 0, 5)"/>
		<xsl:variable name="month" select="substring($myDate, 5, 2)"/>
		<xsl:variable name="day" select="substring($myDate, 7, 2)"/>
		<xsl:value-of select="$day"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="document('')//map:month[@id = $month]"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="$year"/>
	</xsl:template>

	<map:dates>
		<map:month id="1">Jan</map:month>
		<map:month id="2">Feb</map:month>
		<map:month id="3">Mar</map:month>
		<map:month id="4">Apr</map:month>
		<map:month id="5">May</map:month>
		<map:month id="6">Jun</map:month>
		<map:month id="7">Jul</map:month>
		<map:month id="8">Aug</map:month>
		<map:month id="9">Sep</map:month>
		<map:month id="01">Jan</map:month>
		<map:month id="02">Feb</map:month>
		<map:month id="03">Mar</map:month>
		<map:month id="04">Apr</map:month>
		<map:month id="05">May</map:month>
		<map:month id="06">Jun</map:month>
		<map:month id="07">Jul</map:month>
		<map:month id="08">Aug</map:month>
		<map:month id="09">Sep</map:month>
		<map:month id="10">Oct</map:month>
		<map:month id="11">Nov</map:month>
		<map:month id="12">Dec</map:month>
	</map:dates>

</xsl:stylesheet>
