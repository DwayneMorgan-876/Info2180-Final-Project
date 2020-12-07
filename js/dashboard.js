window.onload = function(){
    var httprequest = new this.XMLHttpRequest();
    var container = document.getElementById('container')
    httprequest.open('Get','dashboard.php',true);
    httprequest.onload = function(){
        if(this.status == 200){
            
            console.log(this.response)
        }
    }
    httprequest.send()
}