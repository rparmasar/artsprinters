﻿#Required Files to be created
#Opening HTML File with Header + Helpful links
$opening = '<!DOCTYPE html>
<html lang="en">
	<head>
        <meta charset="utf-8"/>
        <meta http-equiv="Content Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <title>Arts Printers | Arts Computing Office</title>
		<!--Link to JQuery Provider-->
		<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js">
		</script>
		<!--Link to js file-->
		<script type="text/javascript" src="ArtsPrintersFunctions.js" defer></script>
        <link rel="stylesheet" type="text/css" href="ArtsPrintersStyles.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="shortcut icon" href="https://uwaterloo.ca/favicon.ico" type="image/vnd.microsoft.icon">
	</head>
	<body>
		<header id="header">
			<div class="uw-section--inner">
                <div id="uw-header" class="uw-header">
                    <div id="uw-header-content" class="uw-header-content">
                        <div id="uw-header-logo" class="uw-header-logo">
                            <a id="uw-logo" class="uw-logo" href="https://uwaterloo.ca/" 
                            target="_blank"> University of Waterloo</a>
                        </div>
                        <nav class="nav-university uw-header--nav__university" aria-label="University">
        <ul class="global-menu">
          <li><a href="https://uwaterloo.ca/admissions/" target="_blank">Admissions</a></li>
          <li><a href="https://uwaterloo.ca/about/" target="_blank">About Waterloo</a></li>
          <li><a href="https://uwaterloo.ca/faculties-academics/" target="_blank">Faculties &amp; academics</a></li>
          <li><a href="https://uwaterloo.ca/offices-services/" target="_blank">Offices &amp; services</a></li>
          <li><a href="https://uwaterloo.ca/support/" target="_blank">Support Waterloo</a></li>
        </ul>
      </nav>
      <div id="uw-header-buttons" class="uw-header--buttons non_generic_header">
      </div>
                    </div>
                </div>
            </div>
        </header>
        <div id="site--offcanvas" class="uw-site--off-canvas non_generic_header">
            <div class="uw-section--inner">
                <div class="uw-site--cbar">
                    <div class="uw-site--c1 uw-cbar"></div>
                    <div class="uw-site--c2 uw-cbar"></div>
                    <div class="uw-site--c3 uw-cbar"></div>
                    <div class="uw-site--c4 uw-cbar"></div>
                </div>
            </div>
        </div>
        <div id="site-header" class="uw-site--header" role="region" aria-label="Site title">
            <div class="uw-section--inner">
                <a href="https://uwaterloo.ca/arts-computing/" title="Arts Computing Office" 
                rel="home">Arts Computing Office</a>
            </div>
        </div>
    <nav class="nav-university related-links">
        <ul class="related-links">
            <!--<li class="related-links-help-bar">Helpful Links</li>-->
            <li><a href="https://uwaterloo.ca/arts-computing/help-and-support/printing-scanning-copying" target="_blank">
                Printing, Scanning, Copying</a></li>
            <li><a href="https://uwaterloo.ca/arts-computing/faculty-and-staff/using-your-xerox-copierworkcentre" target="_blank">
                Department Printing</a></li>
            <li><a href="https://chat.uwaterloo.ca/phplive.php?token=9e34a3aeb0bb744f42d388454cdb6103&1471455478"
                target="_blank">Live Chat</a></li>
            <li><a href="https://uwaterloo.ca/arts-computing/about/people"
                target="_blank">Our People</a></li>
            
            <li><button id="install">Installation Help</button></li>
            <!--Modal (Pop-up)-->
            <div id="install--modal" class="modal">
                <!--Modal (Pop-up Content)-->
                <div class="install--modal--content">
                    <div class="install--modal--content--header">
                        <h1>Arts Printers Installation Help</h1>
                    </div>
                    <!--Choose an OS-->
                    <h2>Select an Operating System</h2>
                    <ul class="install--modal--content--osbar">
                        <li><button id="install--windows">Windows
                            <i class="fa fa-windows"></i>
                        </button></li>
                        <li><button id="install--mac">Mac OS
                            <i class="fa fa-apple"></i>
                        </button></li>
                    </ul>
                    <!--New Modal with relevant instructions-->
                    <div class="install--modal--instructions">
                        <div class="install--modal--instructions--windows">
                            <ol>
                                <h3>
                                    <li>Find desired printer using search bar</li>
                                    <li>Click on the printer and then button to copy the path</li>
                                    <li>Press "Windows Key + R"</li>
                                    <li>Paste path and click "Ok"</li>
                                    <li>Authenticate using nexus\USER ID and WatIAM password</li>
                                    <li id="windows--path"></li>
                                    <button id="copy--win">Copy</button>
                                </h3>
                            </ol> 
                        </div>
                        <div class="install--modal--instructions--macos">
                            <ol>
                                <h3>
                                    <li>Find desired printer using search bar</li>
                                    <li>Click on the printer and then button to copy the path</li>
                                    <li>Download the appropriate driver from the<a href="https://www.support.xerox.com/engb.html" target="_blank">Xerox Website</a>, if unsure check printer''s model from table</li>
                                    <li>Run the installer, you will be prompted for an admin passsword</li>
                                    <li>When it is looking for a printer just hit continue</li>
                                    <li>Use "Command Key + Space" to bring up Spotlight Search. Type "Printers and Scanners" and press "return" on the keyboard</li>
                                    <li>Click the + button to add. If the "Advanced" icon is not there, right click on the menu bar and drag it across</li>
                                    <li>Click "Advanced". Change the type to "Windows printer via spoolss"</li>
                                    <li>Paste the path into the URL field</li>
                                    <li>Click on "Use" and select the appropriate driver</li>
                                    <li>Click "Add" and then configure features of the device</li>
                                    <li>Click "Ok" and the printer should be added. You may need to authenticate with your WatIAM credentials</li>
                                    <li id="macos--path"></li>
                                    <button id="copy--mac">Copy</button>
                                </h3>
                            </ol> 
                        </div>
                    </div>
                <span id="close">&times;</span>
                </div>
            </div>
            </ul>
    </nav>
       <!--SEARCH BAR-->
    <form>
        <input type="text" id="search_input" placeholder="Search for printers...">
        <label for="search_input">Search for printers</label>
        <button onclick="jumptoTop()" id="btp">Top</button>	
    </form>
	</body>'

#CSS file
$styles = 'body{
	font-family: georgia, "droid serif", "Times New Roman", Times, serif;
	font-size: 1rem;
	line-height: 1.4;
	background-color: white;
	margin: 0;
	padding: 0;
}

/*First Band at the top*/
.uw-header--global{
	max-width: 100%;
	margin-left: auto;
	margin-right: auto;
}

.global-menu li{
	float: left;
	text-align: center;
	padding: 14px 16px;
	list-style-type: none;
}

ol, ul {
	list-style-type: none;
	padding-left: 2rem;
	margin-left: 1rem;
	overflow: hidden;
	zoom: 1;
}

ul{
	display: inline-block;
	position: relative;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

#uw-header-logo a{
	background-color: black;
	color: white;
}

.uw-header--global .global-menu li {
	display: inline-block;
	text-align: center;
	position: relative;
}

.uw-header-content{
	width: 100%;
	text-align: center;
}

.uw-header{
	background-color: black;
	text-align: center;
	min-height: 4.375rem;
	position: relative;
	margin-left: auto;
	margin-right: auto;
}

.uw-header a{
	color: white;
	text-decoration: none;
	font-family: "BureauGrotCond Book",impact,"Droid Sans",sans-serif;
	font-size: 15px;
	font-style: normal;
    letter-spacing: .045rem;
    text-transform: uppercase;
}

a:hover {
	text-decoration: underline;
}


.uw-logo{
	display: inline-block;
	width: 100%;
	height: 2.875rem;
	text-indent: -999rem;
	background: url(https://uwaterloo.ca/arts-computing/profiles/uw_base_profile/themes/uw_fdsu_theme_resp/images/rwd/uwaterloo-logo.svg)
	0 50% no-repeat;
	background-size: contain;
	max-width: 10.563rem;
	background-color: black;
	position: relative;
}

/*Colour bars*/
.uw-site--cbar{
	-webkit-box-align: start;
    box-align: start;
    -webkit-align-items: start;
    -moz-align-items: start;
    -ms-align-items: start;
    -o-align-items: start;
    align-items: start;
    -ms-flex-align: start;
    display: -webkit-box;
    display: box;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-direction: row;
    -moz-flex-direction: row;
    flex-direction: row;
    -ms-flex-direction: row;
    -webkit-justify-content: flex-start;
    -moz-justify-content: flex-start;
    -ms-justify-content: flex-start;
    -o-justify-content: flex-start;
    justify-content: flex-start;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -webkit-box-orient: horizontal;
    -moz-box-orient: horizontal;
    box-orient: horizontal;
    -webkit-box-pack: start;
    -moz-box-pack: start;
    box-pack: start;
    -ms-flex-pack: start;
    -webkit-box-lines: multiple;
    -moz-box-lines: multiple;
    box-lines: multiple;
    width: 100%;
}

.uw-site--cbar .uw-cbar{
	padding: 0;
	margin: 0;
	display: flex;
	height: 1rem;
	-webkit-box-flex: 1;
	box-flex: 1;
	-webkit-flex: 1;
	flex: 1;
}

.uw-site--c1{
	background-color: #FFD5a5;
}

.uw-site--c2{
	background-color: #fbaf00;
}

.uw-site--c3{
	background-color: #e78100;
}

.uw-site--c4{
	background-color: #d93f00;
}

.uw-site--colours::after{
	clear: both;
	content: "";
	display: table;
}

.uw-site--header {
    margin-right: auto;
    padding: .8rem 0 .5rem;
    text-align: center;
    min-height: 3.438rem;
    line-height: 1.4;
    height: auto;
    background-color: #eee;
    text-transform: uppercase;
}

.uw-site--header a {
    font-family: BureauGrotCond,impact,"avenir next condensed heavy","Droid Sans",sans-serif;
    text-transform: uppercase;
    font-size: 2.42383rem;
    line-height: 1.25;
	text-decoration: none;
	color: black;
}

/*Helpful Links*/
.related-links ul{
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 100%;
	position: relative;
}

/*.related-links .related-links-help-bar{
	background-color: black;
	color: #FFD5a5;
	height: 60px;
	width: 25%;
	text-align: center;
	vertical-align: middle;
	display: table-cell;
	font-size: 1.5rem;
} */

.related-links li{
	display: table-cell;
	vertical-align: middle;
	margin: 0;
	width: 10%;
	background-color: black;
	text-decoration: none;
	text-align: center;
	font-family: "BureauGrotCond Book",impact,"avenir next condensed heavy","Droid Sans",sans-serif;
    font-size: 1.4rem;
    letter-spacing: .05rem;
    padding: 20px;
	line-height: 1.2;
	color: #FFD5a5;
}

.related-links a{
	text-decoration: none;
	text-align: center;
	font-family: "BureauGrotCond Book",impact,"avenir next condensed heavy","Droid Sans",sans-serif;
	font-size: 1.2rem;
    letter-spacing: .05rem;
    padding: 0 .25rem .313rem;
	line-height: 1.2;
	color: #FFD5a5;
	text-transform: uppercase;
	width: -moz-max-content;
}

.related-links li:hover {
	text-decoration: underline;
}

/*Last Generated Time Style*/
#lgt{
	margin-bottom: 0;
	margin-top: 0;
	padding-top: 20px;
}

/*Button to return to top*/
#btp{
	position: fixed;
	display: none;
	right: 10px;
	bottom: 25%;
	padding: 15px;
	font-size: 20px;
	background-color:black; 
	border-radius: 5px;
	border: 0;
	z-index: 1;
	color: #FFD5a5;
}
#btp:hover{
	background: #e78100;
}

/*search bar*/
#search_input {
	padding: 10px;
	font-size: 14px;
	font-style: italic;
	border: 1px solid black;
	margin-left: 20px;
	margin: 0;
	margin-top: 50px; 
	width: 400px;
} 

tr:hover {background-color: #FFD5a5}

th{
	overflow: auto;
	height: 50px;
	width: 20%;
	background-color:black;
	color: white;
} 

label{
	visibility: hidden;
}

/*Installation Help Button*/
#install{
	text-decoration: none;
	text-align: center;
	font-family: "BureauGrotCond Book",impact,"avenir next condensed heavy","Droid Sans",sans-serif;
	font-size: 1.2rem;
    letter-spacing: .05rem;
    padding: 0 .25rem .313rem;
	line-height: 1.2;
	color: #FFD5a5;
	background-color: black;
	border: none;
	text-transform: uppercase;
}
#install:hover {text-decoration: underline;}

/*Background of Pop-up*/
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	right: 5%;
	top: 10%;
	bottom: 30%;
	width: 45%;
	height: 38%;
	/*overflow-y: auto; /* Enable scroll if needed */
	background-color: rgb(0,0,0); /* Fallback color */
	background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
 }

 .install--modal--content {
	position: fixed;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	border: 4px solid #888;
	overflow-y: scroll;
	height: 50%;
	width: 45%;
 }

 .install--modal--content--header h1 {
	text-decoration: none;
	text-align: center;
	font-family: "BureauGrotCond Book",impact,"avenir next condensed heavy","Droid Sans",sans-serif;
	font-weight: 100;
	font-size: 1.5rem;
    letter-spacing: .05rem;
	color: #FFD5a5;
	background-color: black;
	margin: 0;
	padding: 5%;
	border: none;
	text-transform: uppercase;
 }

 .install--modal--content--osbar {
	 display: inline-block;
 }

 .install--modal--content h2 {
	font-size: 1.0rem;
	padding: 5%;
	font-weight: 100;
	display: inline-block;
 }

 #install--windows, #install--mac{
	text-decoration: none;
	text-align: center;
	font-family: "BureauGrotCond Book",impact,"avenir next condensed heavy","Droid Sans",sans-serif;
	font-size: 1.2rem;
    letter-spacing: .05rem;
	color: #FFD5a5;
	background-color: black;
	margin: 0;
	padding: 5%;
	border: none;
	text-transform: uppercase;
	line-height: 10%;
 }

 .install--modal--instructions--windows ol{
	display: block;
	list-style-type: decimal;
	margin-left: 0;
	margin-right: 0;
	margin-top: 0;
	background-color: white;
	color: black;
}

.install--modal--instructions--windows li{
	display: list-item;
	text-align: left;
	list-style-type: decimal;
	margin-left: 1%;
	padding: 0;
	background-color: white;
	color: black;
	width: auto;
	font-family: "Times New Roman", Times, serif;
	font-size: 1.1rem;
	font-weight: normal;
	word-wrap: break-word;
 }

.install--modal--instructions--macos{
	display: block;
	list-style-type: decimal;
	margin-left: 0;
	margin-right: 0;
	margin-top: 0;
	padding-right: 10%;
	background-color: white;
	color: black;
}

.install--modal--instructions--macos ol{
	list-style-type: decimal;
	margin-left: 0;
	margin-right: 0;
	margin-top: 0;
	background-color: white;
	color: black;
	max-height: fit-content;
	max-width: fit-content;
	-webkit-overflow-scrolling: touch;
}

.install--modal--instructions--macos li {
	display: list-item;
	text-align: left;
	list-style-type: decimal;
	margin-left: 1%;
	padding: 0;
	background-color: white;
	color: black;
	width: auto;
	font-family: "Times New Roman", Times, serif;
	font-size: 1.1rem;
	font-weight: normal;
	word-wrap: break-word;
}

.install--modal--instructions--macos li a{
	text-align: left;
	background-color: white;
	color: black;
	font-family: "Times New Roman", Times, serif;
	font-size: 1.1rem;
	font-weight: normal;
	text-transform: none;
	font-style: italic;
	color: #e78100;
}


.install--modal--instructions--windows, .install--modal--instructions--macos {
	display: none;
}

#close{
	display: inline-block;
	color: red;
	font-size: 28px;
	font-weight: bold;
	cursor: pointer;
}'

#Javascript file
$functions = '//Select the modal and OS instructions
var modal = document.getElementById("install--modal");
var win_instr = document.getElementsByClassName("install--modal--instructions--windows")[0];
var mac_instr = document.getElementsByClassName("install--modal--instructions--macos")[0];

/*Call the fn on scrolling*/
window.onscroll = function() {showButton()};

/*Fn to hide button until scroll*/
function showButton() {
    if((document.body.scrollTop > 40) ||
    (document.documentElement.scrollTop > 40)) {
            document.getElementById("btp").style.display = "block";
        }
        else {
            document.getElementById("btp").style.display = "none";
        }
}

/*jumptoTop returns to the top of the page after scrolling*/
function jumptoTop() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0; 
}

/*Search Fn*/
$(document).ready(function() {
    $("#search_input").on("keyup", function() {
        var val = $(this).val().toLowerCase();
        $("table tr:not(:first)").filter(function() {
            $(this).toggle(($(this).text().toLowerCase().indexOf(val) > -1));
        });
    });
    $("table tr").click(function(){
        $(this).addClass("selected").siblings().removeClass("selected");    
        var value=$(this).find("td:first").html();
        var win_path = "\\\\artsprint.nexus.uwaterloo.ca\\";
        var mac_path = "smb://artsprint.nexus.uwaterloo.ca/";
        //Get List Item to input Path
        var win_insert = document.getElementById("windows--path");
        var mac_insert = document.getElementById("macos--path");
        //Generate Path & Copy button
        win_insert.innerHTML = win_path + value;
        mac_insert.innerHTML = mac_path + value;
    });
    //Event Handling for clicks
    $(document)
        .on("click", "#copy--win", function() {
            copyPath("windows--path");
        })
        .on("click", "#copy--mac", function() {
            copyPath("macos--path");
        })
        .on("click", "#install", function() {
            //Set display to block so it can be shown
            modal.style.display = "block";
        })
        .on("click", "#install--windows", function() {
            win_instr.style.display = "block";
            mac_instr.style.display = "none";

        })
        .on("click", "#install--mac", function(){
            win_instr.style.display = "none";
            mac_instr.style.display = "block";
        })
        .on("click", "#close", function() {
            modal.style.display = "none";
            win_instr.style.display = "none";
            mac_instr.style.display = "none";
        });    
});


function copyPath(id){
     //Method for copying
     var temp = document.createElement("input");
     temp.setAttribute("value", document.getElementById(id).innerHTML);
     document.body.appendChild(temp);
     temp.select();
     document.execCommand("copy");
     document.body.removeChild(temp);
     console.log(id);
     //It Creates a temp element to hold the value, copies it then removes the element
}'

#Find Current Location
$current_location = Split-Path -parent $MyInvocation.MyCommand.Definition

#Important Variables for Switching Paths
if ($env:username -eq 'rparmasa') {
    $current_location = "N:\RParmasar\ArtsPrintersMain.html"
} elseif ($env:username -eq 'njbromle') {
    $current_location = "d:\temp\printerreport"
} elseif ($env:hostanme -eq 'NXSARTSWS') {
    $current_location = "E:\www-default-root\Reports"
}


####Create required files
#New-Item -Path $current_location -Name "ArtsPrintersHeader.html" -ItemType "file" -Value $opening
 
 #Main File
New-Item -Path $current_location -Name "ArtsPrintersMain.html" -ItemType "file" -Force

 #Styles
New-Item -Path $current_location -Name "ArtsPrintersStyles.css" -ItemType "file" -Value $styles -Force

 #Back-end Javascript
New-Item -Path $current_location -Name "ArtsPrintersFunctions.js" -ItemType "file" -Value $functions -Force
####End of file creation


#Variables for Last Gen Time
$date = Get-Date -Format f
$lgt = "<p id=`"lgt`">Last Generated: $date</p>"

#Header of Page
Set-Content -Path ($current_location + '\ArtsPrintersMain.html') -Value "$opening" #-Confirm

#Produces List of Printers
$printers = Get-Printer -ComputerName artsprint | Sort-Object -Property Comment

#Comment Extraction
$printers_comments = $printers| select -ExpandProperty Comment  

#Different Arrays for Each Field in Comment
$dept = @();
$desc = @();
$pmodel = @();

#Take each comment, split it into its components and then store them
for($ctr=0; $ctr -le $printers_comments.Length; ++$ctr) {        
        $temp_arr = $printers_comments[$ctr].split(":")
        $dept += $temp_arr[0]
        $desc += $temp_arr[1]
        $pmodel += $temp_arr[2]
        }

#Arrays for ShareName, Location, Path
$p_name = $printers | Select-Object -ExpandProperty ShareName 
$p_loc = $printers | Select-Object -ExpandProperty Location
#$paths = @();

#Construction of array for paths
#for($ctr=0; $ctr -le $printers_comments.Length; ++$ctr) {
#        $paths += ($macpath + $p_name[$ctr])
#        }

#Create table and populate the rows with printer objects
$p_table = @()

#For loop to populate table
for($ctr=0; $ctr -le ($printers_comments.Length - 1) ; ++$ctr) {
        $prntr = New-Object psobject -Property @{`
            "ShareName" = $p_name[$ctr];
            "Location" = $p_loc[$ctr];
            "Department" = $dept[$ctr];
            "Description" = $desc[$ctr];
            "Model" = $pmodel[$ctr] }
        $p_table += $prntr | select ShareName, Location, Department, Description, Model
        }

#Append table to main file
$p_table_html = $p_table | Sort-Object -Property ShareName | ConvertTo-Html -Fragment 
$p_table_html | Add-Content -Path ($current_location + '\ArtsPrintersMain.html')

#Append last gen time
Add-Content -Path ($current_location + '\ArtsPrintersMain.html') -Value "$lgt"
