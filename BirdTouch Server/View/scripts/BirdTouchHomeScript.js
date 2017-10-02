$(document).ready(function() {

    var openedPrivateContacts = false;
    var openedBusinessContacts = false;
                   
   
    $('#showPrivateContacts').on("click", function () {
        if (openedPrivateContacts)
        {
            $('#showPrivateContactsArrow').attr("src", 'img/details_down_arrow.png');
            
        }
        else
        {
            $('#showPrivateContactsArrow').attr("src", 'img/details_up_arrow.png');
        }
        openedPrivateContacts = !openedPrivateContacts;
    });

    $('#showBusinessContacts').on("click", function () {
        if (openedBusinessContacts) {
            $('#showBusinessContactsArrow').attr("src", 'img/details_down_arrow.png');

        }
        else {
            $('#showBusinessContactsArrow').attr("src", 'img/details_up_arrow.png');
        }
        openedBusinessContacts = !openedBusinessContacts;
    });

    var user = JSON.parse(sessionStorage['user']);
    if (user) {
    $("#helloUserNameDiv").html("Hello, 2" + user.FirstName);
    }

});

