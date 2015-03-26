<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    
    <xsl:template match="/">
        <lineup>
            <xsl:apply-templates select="bands/band" />
            
        </lineup>
    </xsl:template>
        
    <xsl:template match="bands/band">
        <artist>
            <xsl:attribute name="id">
                
                <xsl:value-of select="@id">
                
                </xsl:value-of>
                
            
            </xsl:attribute>
            <name>
                <xsl:value-of select="@name" /> 
            </name>
            <genres>
                <genre>
                    <xsl:value-of select="@genre" />
                </genre>    
            </genres>
            
             <writeup>
                <xsl:value-of select="description" />
             </writeup>
            
            <xsl:apply-templates select="timeslot" />
            
            <xsl:apply-templates select="image" />
            

            
        </artist>
        
    </xsl:template>
    
<xsl:template match="timeslot">  
    <gig>
        <day>
            <xsl:value-of select="@day" />
        
        </day>
        
        <time>
            <starts>
                
             <xsl:value-of select="time/@start" />:00
            </starts>  
            
            <ends>
            <xsl:value-of select="time/@end" />:00
            
            </ends>
        
        </time>
    </gig>
    
</xsl:template> 
    
<xsl:template match="image"> 
        
          <photo>
              <xsl:attribute name="format">
                 <xsl:value-of select="jpg" />
              </xsl:attribute>
                
                
            
          </photo>
 </xsl:template>
    
    
    
</xsl:stylesheet>