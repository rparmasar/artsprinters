//Select the modal and OS instructions
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
}