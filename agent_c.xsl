<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
   <lineup>
       <xsl:apply-templates select="clientlist/client" />
   </lineup>
</xsl:template>    

    
    
    <xsl:template match="clientlist/client">
        <artist>
                <xsl:attribute name="id">
                    <xsl:value-of select="data[@key='id']/@value">
                    </xsl:value-of>              


                </xsl:attribute>

                <name>
                <xsl:value-of select="data[@key='name']/@value" />
                </name>

                
                <genres>
        
                    <genre><xsl:value-of select="substring-before(data[@key = 'genre']/@value,'/')" /></genre>
                    <genre><xsl:value-of select="substring-after(data[@key = 'genre']/@value,'/')" /></genre>

                </genres>    
                

                <writeup>
                    <xsl:value-of select="data[@key='description']/@value" />
                </writeup>


                 <gig>
                    <day><xsl:value-of select="data[@key='performanceday']/@value" /></day>
                     <xsl:apply-templates select="data[@key='performancetime']" />
                </gig>
            
                
                    <xsl:apply-templates select="data[@key='picture']" />
            
               
        </artist>
    </xsl:template>
    
    
    
    <xsl:template match="data[@key='performancetime']">
       <time>
           
           <xsl:if test="substring(@value, 3, 2) = 'PM'" >
               <start><xsl:value-of select="number(substring(@value,1,2)) +12" />:00</start>
           </xsl:if>
           
           <xsl:if test="substring(@value, 3, 2) = 'AM'" >
               <start><xsl:value-of select="number(substring(@value,1,2)) " />:00</start>
           </xsl:if>
           
          
             <xsl:if test="substring(@value, 8, 2) = 'PM'" >
               <end><xsl:value-of select="number(substring(@value,6,2)) +12" />:00</end>
           </xsl:if> 
           
           
           <xsl:if test="substring(@value, 8, 2) = 'AM'" >
               <end><xsl:value-of select="number(substring(@value,6,2))" />:00</end>
           </xsl:if> 
        
       </time>
    
    
    
    </xsl:template>
    
    
       
    <xsl:template match="data[@key='picture']">
        <photo>
                    <xsl:attribute name="format">
                    <xsl:value-of select="substring-after(@value, '.') "/>
                              
                    </xsl:attribute>
                    <xsl:value-of select="substring-before(@value, '.') "/>
        </photo>    
    </xsl:template>
    

     
 </xsl:stylesheet>

