
function buttonsListener() {
    //Getting all buttons in the page
    let buttons = document.getElementsByTagName('button');
    for (let i = 0; i < buttons.length; i++) {
        let button = buttons[i];

        button.addEventListener('click', function () {

            //Extracting the type and index of the button
            [type, index] = this.id.split("-");

            if (type == "heard") {
                document.getElementById("album-" + index).className = "text-success";
            } else if (type == "unheard") {
                document.getElementById("album-" + index).className = "text-danger";
            } else if (type == "clean") {
                document.getElementById("album-" + index).className = "";
            } else if (type == "like") {

                //Toggle the icon between full heart and empty heart
                let icon = document.getElementById("icon-" + index)
                if (icon.className == "far fa-heart"){
                    icon.className = "fas fa-heart";
                }
                else if(icon.className == "fas fa-heart"){
                    icon.className = "far fa-heart";
                }

            }
        });
    }
}

buttonsListener()
//Turbolinks configuration
$(document).ready(buttonsListener())
$(document).on('turbolinks:load', buttonsListener())