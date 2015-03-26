<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
   <html>
       <head>
               <title>UltraFest - Schedule</title>
               <link rel="icon" href="ultra.png" />
               <link rel="stylesheet" type="text/css" href="style_bands.css" />   
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


        <div class="page">
                   <img alt="bands" src="m.jpeg" />
                <xsl:apply-templates />

        <div class="footer">
                    <img alt="bands" src="white%20copy.png" />
            <p>copy; 2014 Ultra Enterprises, Inc.<br />
                Ticketing Terms of Service | Privacy Policy | Contact Us
            </p>


            <a href="bands_about.html"> About</a>     
            <a href="artist_profile.html"> Band profile</a>
            <a href="Skedule.html"> Skedule</a>
            <a href="bands_FAQ.html"> FAQ</a>     
            <a href="bands_contact.html"> contact</a><br/><br/><br/>
            <a href="https://www.facebook.com/"><img alt="bands" src="face1.png" height="40px" width="40px"/></a>
            <a href="https://vimeo.com/"><img alt="bands" src="vim.png" height="30px" width="30px"/></a>
            <a href="https://twitter.com/"><img alt="bands" src="twit1.png" height="30px" width="30px"/></a> 





             </div>

             </div>  

            </body>
       </html>
    </xsl:template>


       <xsl:template match="artist" >

                    <p>

             <xsl:apply-templates select="name" />    
             <xsl:apply-templates select="gig" />

                   </p>


        </xsl:template>


         <xsl:template match="name" >
            Artist: 
            <xsl:value-of select="." /><br />
        </xsl:template>


          <xsl:template match="gig" >

             Day:<xsl:value-of select="day" /><br />
             Start:  <xsl:value-of select="time/starts" />
                     <xsl:value-of select="time/start" />
              <br />
             End:    <xsl:value-of select="time/ends" />
                     <xsl:value-of select="time/end" /> 



          </xsl:template>








    </xsl:stylesheet>