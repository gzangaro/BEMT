<html>
    <head>
        <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
        <meta content="utf-8" http-equiv="encoding">
        <g:if test="${session.user}">
            <meta name="layout" content="../layouts/default"/>
        </g:if>
        <g:else>
            <meta name="layout" content="../layouts/public"/>
        </g:else>
        <title>Home</title>
    </head>
    <body>
        <br/>
        <div class="row">
            <div class="small-12 columns">
                <div class="right" style="color:#777">Existing User? <g:link controller="public" class="button success bemtbutton radius" action="login">Login</g:link></div>
                    <h3><i class="fa fa-bar-chart-o"></i> Biobank Economic Modeling Tool</h3>
                </div>			
            </div>
            <div class="row">
                <div class="small-8 columns">
                <g:render template="../components/flashmessage" model="[flash: flash]"/>
                <g:render template="../components/validationerrormessage"/>
            </div>
        </div>			
        <br/>
    <browser:choice>
        <browser:isMsie versionLower="9">
            <div class="staticmessage error">
                <p>
<%-- The BEMT requires the use of Firefox, Chrome, Safari, or Internet Explorer 9 or higher.  If you are not using one of these browsers, please try a different browser.   If you are getting this message and using Internet Explorer 9 or higher, it is possible your browser’s compatibility settings are restricting access to the BEMT site.  Please check with your system administrator about correcting this. --%>
The BEMT requires the use of Firefox, Chrome, or Safari. If you are not using one of these browsers, please try a different browser. 
                </p>
            </div>
        </browser:isMsie>
        <browser:otherwise>
            <browser:isMsie>
                <div class="row">
                    <div class="small-12 columns">
                        <div class="staticmessage error">
                            <p>You are currently using Internet Explorer (IE).  Certain configurations of IE may cause issues while performing certain functions on this site.  We recommend using Firefox, Chrome or Safari if possible.  Thank you.</p>
                        </div>
                    </div>
                </div>
            </browser:isMsie>
            <div class="row">
                <div class="small-5 columns">
                    <h5>Welcome!</h5>
                    <font color="red">
                    <p>The BEMT website will be retired on or close to April 15th, 2019.  We hope you have received value from the project.  
                    Please contact <a href="mailto:ncibbrb@nih.gov">ncibbrb@nih.gov</a> for any questions.</p>
                    </font>
                    <p>You have reached the United States National Institutes of Health, National Cancer Institute’s Biorepositories and Biospecimen Research Branch (US NIH/NCI BBRB) Biobank Economic Modeling Tool (BEMT) Website.</p>
                    <p>The BEMT is designed to support cost recovery and financial planning activities for biobanks. </p>
                    <h5>New &amp; existing biobanks can use this tool to:</h5>
                    <p>							
                    <ul>
                        <li><i>Develop a 3 year financial plan / forecast</i></li>
                        <li><i>Conduct direct cost analysis for specimens/products and services</i></li>
                        <li><i>Measure percent of costs recovered</i></li>
                        <li><i>Produce Fee Schedules</i></li>
                        <li><i>Review resources, fees, volumes, and products/services from other biobanks</i></li>
                    </ul>
                    </p>
                </div>							
                <div class="small-7 columns">
                    <g:form controller="public" action="createuser">
                        <fieldset>
                            <legend>New Biobanks</legend>
                            <p>Provide your information below and start using BEMT for your biobank.</p>
                            <div class="row">
                                <div class="small-6 columns">
                                    <label>Email Address (this will be your Username)</label>
                                    <label>email addresses are case sensitive in this system so you are strongly encouraged to use all lower case</label>
                                    <input id="email"  name="email" type="text" placeholder="Email address…" value="${params.email}">
                                    <label>First Name</label>
                                    <input id="nameFirst" maxlength="20" type="text" name="nameFirst" placeholder="First Name…" value="${params.nameFirst}">
                                    <label>Last Name</label>
                                    <input id="nameLast" maxlength="20" type="text" name="nameLast" placeholder="Last Name…" value="${params.nameLast}">
                                </div>
                                <div class="small-6 columns">
                                    <label>Password</label>
                                    <input id="password"  name="password" type="password" placeholder="Your password…" autocomplete="off">
                                    <label>Confirm Password</label>
                                    <input id="password_check"   name="password_check" type="password" placeholder="Confirm password…" autocomplete="off">
                                    <p style="margin-bottom:2px;"><i class="fa fa-question-circle"></i> Password must be least 8 characters in length and contain three of the following:</p>
                                    <ul>
                                        <li>uppercase character</li>
                                        <li>lowercase character</li>
                                        <li>numeric character</li>
                                        <li>special character (e.g. !@#$%/)</li>
                                    </ul>
                                </div>
                            </div>
                            <button type="submit" class="button bemtbutton radius">Sign up</button>
                            <button type="reset" class="button bemtbutton secondary radius">Reset</button>						
                        </fieldset>
                    </g:form>					
                </div>
            </div>
            <div class="row">
                <div class="small-12 columns">
                    <p style="font-size:0.85em;line-height:1.2em">
                        <b><i class="fa fa-info-circle"></i> Privacy Notice:</b> Thank you for using the Biobank Economic Modeling Tool (BEMT) provided by the National Cancer Institute's Biorepository and Biospecimen Research Branch (BBRB). Using the BEMT involves recording information about your biobank. This information may or may not be considered sensitive information by you. The BBRB will not use or access this information except for the following: a) User specific information as part of system maintenance or end user support; b) Usage information such as commonly used features to assist in improving the BEMT.
                    </p>
                </div>
            </div>

        </browser:otherwise>
    </browser:choice>
</body>
</html>