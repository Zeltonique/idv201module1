<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
   <html>
       <head>
           <link rel="styleheet" type="text/css" href="style_bands.css" />
       </head>   
       <body>
             <div class="header">    
    
         <span class="logo">
    <a  href="bands_home.html">
     <img alt="dragon" src="ultra.logo.png" width="376" height="83" />
     </a> 
         </span>
       
         <ul>
             
         <li><a href="bands_about.html"> About</a></li>     
         <li><a href="artist_profile.html"> Band profile</a></li>
         <li><a href="Skedule.html"> Skedule</a></li>
         <li><a href="bands_FAQ.html"> FAQ</a></li>     
         <li><a href="bands_contact.html"> contact</a></li>
        
             
              
         </ul>
    
           
     
     </div> 
           
            <div class="footer">
                <img alt="bands" src="white%20copy.png" />
        <p>copy; 2014 Ultra Enterprises, Inc.<br />
Ticketing Terms of Service | Privacy Policy | Contact Us</p>
                  
                  
        <a href="bands_about.html"> About</a>     
        <a href="artist_profile.html"> Band profile</a>
        <a href="Skedule.html"> Skedule</a>
        <a href="bands_FAQ.html"> FAQ</a>     
        <a href="bands_contact.html"> contact</a>
        
        
        </div>
        
            
            <xsl:apply-templates />
        </body>
       
   </html>
</xsl:template>
    
  <xsl:template match="lineup"> 
    <xsl:apply-templates select="artist" />
    </xsl:template>
    
    <xsl:template match="artist">
        <xsl:result-document method="html" href="output-{photo}.html">
         <p>
             <p><xsl:value-of select="name" /></p><br />
             <p><xsl:value-of select="genres" /></p>
             <p><xsl:value-of select="writeup" /></p>
             <p><xsl:value-of select="photo" /></p>
         </p>     
       </xsl:result-document> 
    </xsl:template>
    
    
    <xsl:template match="name" >
        Artist: 
        <xsl:value-of select="." />
        <br />
    </xsl:template>
    
    <xsl:template match="genres" >
        Genre: 
        <xsl:value-of select="." /><br />
    </xsl:template>
    
    
    
      <xsl:template match="writeup" >
        Writeup:
        <xsl:value-of select="." /><br />
    </xsl:template>
    
    
    <xsl:template match="photo" >
        Photo: 
        <xsl:value-of select="." /><br />
    </xsl:template>
    
    
</xsl:stylesheet>