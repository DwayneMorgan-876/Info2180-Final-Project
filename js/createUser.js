window.onload = function(){
    var submit = document.getElementById("submit_createuser");

    submit.addEventListener('click',function(e){
        e.preventDefault();
        var first_name = document.getElementById('firstname').value
        var last_name = document.getElementById('lastname').value
        var email = document.getElementById('email').value
        var password = document.getElementById('password').value
        var user = {}

        user.firstname = first_name;
        user.lastname = last_name;
        user.email = email;
        user.password = password;

        var httprequest = new XMLHttpRequest();
        httprequest.open('POST','newUser.php',true)
        httprequest.onload = function(){
            if(this.status == 200){
                console.log(this.response)
            }
        }
        httprequest.send(JSON.stringify(user)); 

    })
}