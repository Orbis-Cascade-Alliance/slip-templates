<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="counter" select="0"/>


<xsl:include href="header.xsl" />
<xsl:include href="senderReceiver.xsl" />
<xsl:include href="mailReason.xsl" />
<xsl:include href="footer.xsl" />
<xsl:include href="style.xsl" />
<xsl:include href="recordTitle.xsl" />

<xsl:template name="id-info">
   <xsl:param name="line"/>
   <xsl:variable name="first" select="substring-before($line,'//')"/>
   <xsl:variable name="rest" select="substring-after($line,'//')"/>
    <xsl:if test="$first = '' and $rest = '' ">
          <!--br/-->
      </xsl:if>
   <xsl:if test="$rest != ''">
       <xsl:value-of select="$rest"/><br/>
   </xsl:if>
   <xsl:if test="$rest = ''">
       <xsl:value-of select="$line"/><br/>
   </xsl:if>

</xsl:template>

  <xsl:template name="id-info-hdr">
        <xsl:call-template name="id-info">
            <xsl:with-param name="line" select="notification_data/incoming_request/external_request_id"/>
            <xsl:with-param name="label" select="'Bibliographic Information:'"/>
         </xsl:call-template>
</xsl:template>

<xsl:template match="/">
	<html>
		<head>
		<xsl:call-template name="generalStyle" />
		</head>

			<body>
			<xsl:attribute name="style">
				<xsl:call-template name="bodyStyleCss" /> <!-- style.xsl -->
			</xsl:attribute>
   <xsl:if test="notification_data/partner_name != ''" >
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
   </xsl:if>
						<tr>
			<xsl:if test="notification_data/partner_name='CC'">
				<tr>			
					<td><h2><strong>Partner: Clark College</strong></h2></td>
				</tr>
			</xsl:if>
			<xsl:if test="notification_data/partner_name='CCC'">
				<tr>			
					<td><h2><strong>Partner: Clackamas Community College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='CHEMEK'">
				<tr>			
					<td><h2><strong>Partner: Chemeketa Community College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='COCC'">
				<tr>			
					<td><h2><strong>Partner: Central Oregon Community College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='CWU'">
				<tr>			
					<td><h2><strong>Partner: Central Washington University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='EOU'">
				<tr>			
					<td><h2><strong>Partner: Eastern Oregon University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='EVSC'">
				<tr>			
					<td><h2><strong>Partner: The Evergreen State College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='EWU JFK'">
				<tr>			
					<td><h2><strong>Partner: Eastern Washington University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='EWU_RIVER'">
				<tr>			
					<td><h2><strong>Partner: Spokane Academic - EWU</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='GFOX_MLRC'">
				<tr>			
					<td><h2><strong>Partner: George Fox University - Newberg</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='GFOX_PCL'">
				<tr>			
					<td><h2><strong>Partner: George Fox University - Portland</strong></h2></td>
				</tr>
			</xsl:if>
			<xsl:if test="notification_data/partner_name='LANECC'">
				<tr>			
					<td><h2><strong>Partner: Lane Community College</strong></h2></td>
				</tr>
			</xsl:if>		
			<xsl:if test="notification_data/partner_name='LCC'">
				<tr>			
					<td><h2><strong>Partner: Lewis &amp; Clark College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='LINF_MAC'">
				<tr>			
					<td><h2><strong>Partner: Linfield University - McMinnville</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='LINF_PDX'">
				<tr>			
					<td><h2><strong>Partner: Linfield University - Portland</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='MHCC'">
				<tr>			
					<td><h2><strong>Partner: Mount Hood Community College</strong></h2></td>
				</tr>
			</xsl:if>		
			<xsl:if test="notification_data/partner_name='OHSU'">
				<tr>			
					<td><h2><strong>Partner: Oregon Health and Science University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='OIT_KFLS'">
				<tr>			
					<td><h2><strong>Partner: Oregon Tech - Klamath Falls</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='OIT_WILS'">
				<tr>			
					<td><h2><strong>Partner: Oregon Tech - Wilsonville</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='OSU'">
				<tr>			
					<td><h2><strong>Partner: Oregon State University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='PCC'">
				<tr>			
					<td><h2><strong>Partner: Portland Community College</strong></h2></td>
				</tr>
			</xsl:if>		
			<xsl:if test="notification_data/partner_name='PSU'">
				<tr>			
					<td><h2><strong>Partner: Portland State University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='PU_FG'">
				<tr>			
					<td><h2><strong>Partner: Pacific University - Forest Grove</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='PU_HPC'">
				<tr>			
					<td><h2><strong>Partner: Pacific University - Hillsboro</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='REED'">
				<tr>			
					<td><h2><strong>Partner: Reed College</strong></h2></td>
				</tr>
			</xsl:if>		
			<xsl:if test="notification_data/partner_name='SEAU_LEMIEUX'">
				<tr>			
					<td><h2><strong>Partner: Seattle University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='SEAU_LAW'">
				<tr>			
					<td><h2><strong>Partner: Seattle University - Law</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='SOU_SOU'">
				<tr>			
					<td><h2><strong>Partner: Southern Oregon University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='SOU_RCCM'">
				<tr>			
					<td><h2><strong>Partner: Rogue Community College - SOU</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='SPU'">
				<tr>			
					<td><h2><strong>Partner: Seattle Pacific University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='STMU'">
				<tr>			
					<td><h2><strong>Partner: Saint Martin's University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='UID_MAIN'">
				<tr>			
					<td><h2><strong>Partner: University of Idaho</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='UID_LAW'">
				<tr>			
					<td><h2><strong>Partner: University of Idaho - Law</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='UO'">
				<tr>			
					<td><h2><strong>Partner: University of Oregon</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='UPORT'">
				<tr>			
					<td><h2><strong>Partner: University of Portland</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='UPUGS'">
				<tr>			
					<td><h2><strong>Partner: University of Puget Sound</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='UW'">
				<tr>			
					<td><h2><strong>Partner: University of Washington</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WALLA_PETERSON'">
				<tr>			
					<td><h2><strong>Partner: Walla Walla University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WALLA_PORTLAND'">
				<tr>			
					<td><h2><strong>Partner: Walla Walla University - Portland</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WHITC'">
				<tr>			
					<td><h2><strong>Partner: Whitman College</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WOU'">
				<tr>			
					<td><h2><strong>Partner: Western Oregon University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WPC'">
				<tr>			
					<td><h2><strong>Partner: Warner Pacific University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WSU_HOLLTERR'">
				<tr>			
					<td><h2><strong>Partner: Washington State University - Pullman</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WSU_RPOINT'">
				<tr>			
					<td><h2><strong>Partner: Washington State University - Spokane</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WSU_TRICITIES'">
				<tr>			
					<td><h2><strong>Partner: Washington State University - TriCities</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WSU_VANCOUVER'">
				<tr>			
					<td><h2><strong>Partner: Washington State University - Vancouver</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WU_MOH'">
				<tr>			
					<td><h2><strong>Partner: Willamette University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WU_LAW'">
				<tr>			
					<td><h2><strong>Partner: Willamette University - Law</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WU_PNCA'">
				<tr>			
					<td><h2><strong>Partner: Willamette University - PNCA</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WWO'">
				<tr>			
					<td><h2><strong>Partner: Whitworth University</strong></h2></td>
				</tr>
			</xsl:if>	
			<xsl:if test="notification_data/partner_name='WWU'">
				<tr>			
					<td><h2><strong>Partner: Western Washington University</strong></h2></td>
				</tr>
			</xsl:if>	
			
						</tr>

				<xsl:call-template name="head" /> <!-- header.xsl -->



			<div class="messageArea">
				<div class="messageBody">
					 <table cellspacing="0" cellpadding="5" border="0">


							<tr>
								<td><h3><b>@@location@@: </b><xsl:value-of select="notification_data/items/physical_item_display_for_printing/location_name"/></h3></td>
							</tr>

							<xsl:if  test="shelving_location/string" >
								<tr>
									<td><b>@@shelving_location_for_item@@: </b>
									 <xsl:for-each select="shelving_location/string">
										<xsl:value-of select="."/>
									 &#160;
									 </xsl:for-each>
									</td>
								</tr>
							</xsl:if>

								<tr>
									<td><h3><b>@@call_number@@: <xsl:value-of select="notification_data/items/physical_item_display_for_printing/call_number"/></b></h3></td>
								</tr>
<xsl:choose>
<xsl:when test="count(notification_data/items/physical_item_display_for_printing/available_items/available_item) = 1">
<tr><td><h3><strong>@@item_barcode@@: <xsl:value-of select="notification_data/items/physical_item_display_for_printing/available_items/available_item/barcode" /></strong></h3></td></tr>
</xsl:when>
<xsl:otherwise>
<tr><td><strong>Multiple items may be available - check for volume or edition</strong></td></tr>
</xsl:otherwise>
</xsl:choose>
							<tr>
								<td><b>Title: </b><xsl:value-of select="notification_data/items/physical_item_display_for_printing/title"/></td>
							</tr>

<xsl:if test="notification_data/metadata/volume_bk != ''" >
				<tr><td><b>Volume: </b><xsl:value-of select="notification_data/metadata/volume_bk"/></td></tr>
			</xsl:if>
<xsl:if test="notification_data/metadata/edition != ''" >
				<tr><td><b>Edition: </b><xsl:value-of select="notification_data/metadata/edition"/></td></tr>
			</xsl:if>

						<tr>
			                                <td><b>@@borrower_reference@@: </b><xsl:call-template name="id-info-hdr"/></td>
			                        </tr>
			                        <tr>
						        <td><b>External ID: </b><img src="cid:externalId.png" alt="externalId" /></td>
				               </tr>

						<tr>
							<td>
								<b>@@format@@: </b>
								<xsl:value-of select="notification_data/incoming_request/format"/>
							</td>
						</tr>

						<xsl:if  test="notification_data/incoming_request/needed_by_dummy/full_date" >
							<tr>
								<td>
									<b>@@date_needed_by@@: </b>
									<xsl:value-of select="notification_data/incoming_request/needed_by"/>
								</td>
							</tr>
						</xsl:if>
<tr><td><b>@@request_note@@: </b><xsl:value-of select="notification_data/incoming_request/note"/></td></tr>
						<xsl:if  test="notification_data/incoming_request/requester_email" >
							<tr>
								<td>
									<b>@@requester_email@@: </b>
									<xsl:value-of select="notification_data/incoming_request/requester_email"/>
								</td>
							</tr>
						</xsl:if>

						<xsl:if  test="notification_data/assignee != ''" >
							<tr>
								<td>
									<b>@@assignee@@: </b>
									<xsl:value-of select="notification_data/assignee"/>
								</td>
							</tr>
						</xsl:if>

								<xsl:if test="notification_data/level_of_service !=''">
									<tr>
										<td>
											<b>@@level_of_service@@: </b>
											<xsl:value-of select="notification_data/level_of_service"/>
										</td>

									</tr>
								</xsl:if>

							<tr>
								<td>
									<b>@@library@@: </b>
									<xsl:value-of select="notification_data/items/physical_item_display_for_printing/library_name"/>
								</td>
							</tr>

					</table>
				</div>
			</div>




	<xsl:call-template name="lastFooter" /> <!-- footer.xsl -->





</body>
</html>


	</xsl:template>
</xsl:stylesheet>