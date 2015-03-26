<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    
    <xsl:template match="/">
        <lineup>
        
            <xsl:apply-templates select="artists/artist" />
                            
        </lineup>
    </xsl:template>    

            <xsl:template match="artists/artist">

                <artist>
                    <xsl:attribute name="id">
                        <xsl:value-of select='number(translate(id,"BCD","456")) +100 ' />
                    </xsl:attribute>
                    
                  
                    <name>
                        <xsl:value-of select="name" />
                    </name>   
                    
                    <genres>
                        <genre>
                            <xsl:value-of select="genres" />
                        </genre>
                    
                    </genres>
                    
                    <writeup>
                        
                            <xsl:value-of select="description" />
                    
                    </writeup>
                    
                    
                    <xsl:apply-templates select="time" />
                    
           
                    
                    <photo>
                    
                          <xsl:attribute name="format">
                         <xsl:value-of select="substring-after(image, '.') "/>
                              
                          </xsl:attribute>
                        <xsl:value-of select="substring-before(image, '.') "/>
                        
                        
                    
                    </photo>
                    
                
           
              
                </artist>
           </xsl:template>
    
    
           
        <xsl:template match="time">
            <gig>
                      <day>
                            <xsl:value-of select="day" />
                      </day>
                
                     <time>
                         <start>
                            <xsl:value-of select="substring(time,1,5)" />
                         </start>  
                         
                         <end>
                             <xsl:value-of select="substring(time,7,5)" />
                         </end>
                
                    </time>    

            </gig>
            
            
            
        </xsl:template>
    
  
  
        
   
    
    
    
</xsl:stylesheet>