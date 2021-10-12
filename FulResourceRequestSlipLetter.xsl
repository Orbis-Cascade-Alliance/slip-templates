<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:include href="header.xsl" />
<xsl:include href="senderReceiver.xsl" />
<xsl:include href="mailReason.xsl" />
<xsl:include href="footer.xsl" />
<xsl:include href="style.xsl" />
<xsl:include href="recordTitle.xsl" />
<xsl:template match="/">
	<html>
			<xsl:if test="notification_data/languages/string">
				<xsl:attribute name="lang">
					<xsl:value-of select="notification_data/languages/string"/>
				</xsl:attribute>
			</xsl:if>

		<head>
				<title>
					<xsl:value-of select="notification_data/general_data/subject"/>
				</title>

			<xsl:call-template name="generalStyle" />
		</head>

		<body>
			<xsl:if test="notification_data/user_for_printing/name != ''" >
				<h1><strong><xsl:value-of select="notification_data/user_for_printing/name"/></strong></h1>
			</xsl:if>
   <xsl:if test="notification_data/incoming_request/partner_name != ''" >

     <xsl:variable name="noteline" select="notification_data/incoming_request/note"/>

     <xsl:variable name="notepart1" select="substring-after($noteline, '||')"/>

     <xsl:variable name="fullname" select="substring-before($notepart1, '||')"/>

     <xsl:variable name="notepart2" select="substring-after($notepart1, '||')"/>

     <xsl:variable name="libraryname" select="substring-after($notepart2, '||')"/>

    <tr>

     <td><h1><strong><xsl:value-of select="$fullname"/></strong></h1></td>

    </tr>

    <tr>

     <td><h2><strong>Pickup at : <xsl:value-of select="$libraryname"/></strong></h2></td>

    </tr>

   </xsl:if>			<xsl:if test="notification_data/incoming_request/partner_name='CC'">
				<tr>			
					<td><h2><strong>Partner: Clark College</strong></h2></td>
				</tr>
			</xsl:if>
			<xsl:if test="notification_data/incoming_request/partner_name='CCC'">
				<tr>			
					<td><h2><strong>Partner: Clackamas Community College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='CHEMEK'">
				<tr>			
					<td><h2><strong>Partner: Chemeketa Community College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='COCC'">
				<tr>			
					<td><h2><strong>Partner: Central Oregon Community College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='CWU'">
				<tr>			
					<td><h2><strong>Partner: Central Washington University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='EOU'">
				<tr>			
					<td><h2><strong>Partner: Eastern Oregon University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='EVSC'">
				<tr>			
					<td><h2><strong>Partner: The Evergreen State College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='EWU JFK'">
				<tr>			
					<td><h2><strong>Partner: Eastern Washington University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='EWU_RIVER'">
				<tr>			
					<td><h2><strong>Partner: Spokane Academic - EWU</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='GFOX_MLRC'">
				<tr>			
					<td><h2><strong>Partner: George Fox University - Newberg</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='GFOX_PCL'">
				<tr>			
					<td><h2><strong>Partner: George Fox University - Portland</strong></h2></td>
				</tr>
			</xsl:if>
			<xsl:if test="notification_data/incoming_request/partner_name='LANECC'">
				<tr>			
					<td><h2><strong>Partner: Lane Community College</strong></h2></td>
				</tr>
			</xsl:if>		
			<xsl:if test="notification_data/incoming_request/partner_name='LCC'">
				<tr>			
					<td><h2><strong>Partner: Lewis &amp; Clark College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='LINF_MAC'">
				<tr>			
					<td><h2><strong>Partner: Linfield University - McMinnville</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='LINF_PDX'">
				<tr>			
					<td><h2><strong>Partner: Linfield University - Portland</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='MHCC'">
				<tr>			
					<td><h2><strong>Partner: Mount Hood Community College</strong></h2></td>
				</tr>
			</xsl:if>		
			<xsl:if test="notification_data/incoming_request/partner_name='OHSU'">
				<tr>			
					<td><h2><strong>Partner: Oregon Health and Science University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='OIT_KFLS'">
				<tr>			
					<td><h2><strong>Partner: Oregon Tech - Klamath Falls</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='OIT_WILS'">
				<tr>			
					<td><h2><strong>Partner: Oregon Tech - Wilsonville</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='OSU'">
				<tr>			
					<td><h2><strong>Partner: Oregon State University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='PCC'">
				<tr>			
					<td><h2><strong>Partner: Portland Community College</strong></h2></td>
				</tr>
			</xsl:if>		
			<xsl:if test="notification_data/incoming_request/partner_name='PSU'">
				<tr>			
					<td><h2><strong>Partner: Portland State University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='PU_FG'">
				<tr>			
					<td><h2><strong>Partner: Pacific University - Forest Grove</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='PU_HPC'">
				<tr>			
					<td><h2><strong>Partner: Pacific University - Hillsboro</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='REED'">
				<tr>			
					<td><h2><strong>Partner: Reed College</strong></h2></td>
				</tr>
			</xsl:if>		
			<xsl:if test="notification_data/incoming_request/partner_name='SEAU_LEMIEUX'">
				<tr>			
					<td><h2><strong>Partner: Seattle University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='SEAU_LAW'">
				<tr>			
					<td><h2><strong>Partner: Seattle University - Law</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='SOU_SOU'">
				<tr>			
					<td><h2><strong>Partner: Southern Oregon University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='SOU_RCCM'">
				<tr>			
					<td><h2><strong>Partner: Rogue Community College - SOU</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='SPU'">
				<tr>			
					<td><h2><strong>Partner: Seattle Pacific University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='STMU'">
				<tr>			
					<td><h2><strong>Partner: Saint Martin's University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='UID_MAIN'">
				<tr>			
					<td><h2><strong>Partner: University of Idaho</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='UID_LAW'">
				<tr>			
					<td><h2><strong>Partner: University of Idaho - Law</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='UO'">
				<tr>			
					<td><h2><strong>Partner: University of Oregon</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='UPORT'">
				<tr>			
					<td><h2><strong>Partner: University of Portland</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='UPUGS'">
				<tr>			
					<td><h2><strong>Partner: University of Puget Sound</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='UW'">
				<tr>			
					<td><h2><strong>Partner: University of Washington</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WALLA_PETERSON'">
				<tr>			
					<td><h2><strong>Partner: Walla Walla University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WALLA_PORTLAND'">
				<tr>			
					<td><h2><strong>Partner: Walla Walla University - Portland</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WHITC'">
				<tr>			
					<td><h2><strong>Partner: Whitman College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WOU'">
				<tr>			
					<td><h2><strong>Partner: Western Oregon University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WPC'">
				<tr>			
					<td><h2><strong>Partner: Warner Pacific University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WSU_HOLLTERR'">
				<tr>			
					<td><h2><strong>Partner: Washington State University - Pullman</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WSU_RPOINT'">
				<tr>			
					<td><h2><strong>Partner: Washington State University - Spokane</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WSU_TRICITIES'">
				<tr>			
					<td><h2><strong>Partner: Washington State University - TriCities</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WSU_VANCOUVER'">
				<tr>			
					<td><h2><strong>Partner: Washington State University - Vancouver</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WU_MOH'">
				<tr>			
					<td><h2><strong>Partner: Willamette University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WU_LAW'">
				<tr>			
					<td><h2><strong>Partner: Willamette University - Law</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WU_PNCA'">
				<tr>			
					<td><h2><strong>Partner: Willamette University - PNCA</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WWO'">
				<tr>			
					<td><h2><strong>Partner: Whitworth University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/incoming_request/partner_name='WWU'">
				<tr>			
					<td><h2><strong>Partner: Western Washington University</strong></h2></td>
				</tr>
			</xsl:if>	

			<xsl:call-template name="head" /> <!-- header.xsl -->

			<div class="messageArea">
				<div class="messageBody">
					 <table role='presentation'  cellspacing="0" cellpadding="5" border="0">
					 <strong></strong>

						<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
							<tr>
								<td><strong>@@note_item_specified_request@@.</strong></td>
							</tr>
						</xsl:if>
						
						<xsl:if  test="notification_data/request/manual_description != ''" >
							<tr>
								<td><strong>@@please_note@@: </strong>@@manual_description_note@@ - <xsl:value-of select="notification_data/request/manual_description"/></td>
							</tr>
						</xsl:if>
						<tr>
							<td><h3><strong>@@location@@: </strong><xsl:value-of select="notification_data/phys_item_display/location_name"/></h3></td>
						</tr>
							<xsl:if test="notification_data/phys_item_display/call_number != ''">
								<tr><td><h3><strong>@@call_number@@: </strong><xsl:value-of select="notification_data/phys_item_display/call_number"/></h3></td></tr>
							</xsl:if>
						<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
						<tr>
								<td><h3><strong>@@item_barcode@@: </strong><xsl:value-of select="notification_data/phys_item_display/available_items/available_item/barcode" /></h3></td>
							</tr>
						</xsl:if>
						
						<xsl:if  test="notification_data/incoming_request/external_request_id != ''" >
							<tr>
									<td><strong>@@external_id@@: </strong><img src="cid:externalId.png" alt="External Request ID"/></td>
							</tr>
						</xsl:if>
						
						<tr>
							<td><strong>Title:  </strong><xsl:call-template name="recordTitle" /></td>
						</tr>

						<xsl:if test="notification_data/phys_item_display/isbn != ''">
							<tr>
								<td><strong>@@isbn@@: </strong><xsl:value-of select="notification_data/phys_item_display/isbn"/></td>
							</tr>
						</xsl:if>
						
						<xsl:if test="notification_data/phys_item_display/issn != ''">
							<tr>
								<td><strong>@@issn@@: </strong><xsl:value-of select="notification_data/phys_item_display/issn"/></td>
							</tr>
						</xsl:if>
						
						<xsl:if test="notification_data/phys_item_display/edition != ''">
							<tr>
								<td><strong>@@edition@@: </strong><xsl:value-of select="notification_data/phys_item_display/edition"/></td>
							</tr>
						</xsl:if>
						
						<xsl:if test="notification_data/phys_item_display/imprint != ''">
							<tr>
								<td><strong>@@imprint@@: </strong><xsl:value-of select="notification_data/phys_item_display/imprint"/></td>
							</tr>
						</xsl:if>
						<tr>	
							<xsl:if test="notification_data/phys_item_display/accession_number != ''">
								<td><h3><strong>@@accession_number@@: </strong><xsl:value-of select="notification_data/phys_item_display/accession_number"/></h3></td>
							</xsl:if>
                        </tr>
						
						<xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
							<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
							<tr>
								<td><strong>@@shelving_location_for_item@@: </strong>
								 <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
									<xsl:value-of select="."/>
								 &#160;
								 </xsl:for-each>
								</td>
							</tr>
							</xsl:if>
							<xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
							<tr>
								<td><strong>@@shelving_locations_for_holding@@: </strong>
								<xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
									<xsl:value-of select="."/>
								&#160;
								 </xsl:for-each>
								</td>
							</tr>
							</xsl:if>
							<xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
							<tr>
								<td><strong>@@shelving_locations_for_holding@@: </strong>
								<xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
									<xsl:value-of select="."/>
								&#160;
								 </xsl:for-each>
								</td>
							</tr>
							</xsl:if>
						</xsl:if>
						
						<xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
							<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
							<tr>
								<td><strong>@@alt_call_number@@: </strong>
								 <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
									<xsl:value-of select="."/>
								 &#160;
								 </xsl:for-each>
								</td>
							</tr>
							</xsl:if>
							<xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
							<tr>
								<td><strong>@@alt_call_number@@: </strong>
								<xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
									<xsl:value-of select="."/>
								&#160;
								 </xsl:for-each>
								</td>
							</tr>
							</xsl:if>
							<xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
							<tr>
								<td><strong>@@alt_call_number@@: </strong>
								<xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
									<xsl:value-of select="."/>
								&#160;
								 </xsl:for-each>
								</td>
							</tr>
							</xsl:if>
						</xsl:if>

						<tr>
							<td><strong>@@move_to_library@@: </strong><xsl:value-of select="notification_data/destination"/></td>
						</tr>
						<tr>
							<td><strong>@@request_type@@: </strong><xsl:value-of select="notification_data/request_type"/></td>
						</tr>
						<xsl:if test="notification_data/request/chapter_article_title != ''">
							<tr>
								<td><strong>@@enum_h@@:  </strong><xsl:value-of select="notification_data/request/chapter_article_title"/>, pp. <xsl:value-of select="notification_data/request/pages"/></td>
							</tr>
						</xsl:if>
						<xsl:if test="notification_data/request/system_notes != ''">
							<tr>
								<td><strong>@@system_notes@@:</strong><xsl:value-of select="notification_data/request/system_notes"/></td>
							</tr>
						</xsl:if>
						
						<xsl:if test="notification_data/request/note != ''" >
							<tr>
							<td><strong>@@request_note@@:</strong> <xsl:value-of select="notification_data/request/note"/></td>
						</tr>
						</xsl:if>

					</table>
				</div>
			</div>




	<xsl:call-template name="lastFooter" /> <!-- footer.xsl -->





</body>
</html>


	</xsl:template>
</xsl:stylesheet>