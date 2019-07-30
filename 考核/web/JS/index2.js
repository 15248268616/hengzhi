window.onload = function () {
    new Vue({
        el: '#app',
        data: {

        },
        methods: {

        }
    })
}

var max = 4;
var now = 1;
var timer;

function $(id){
    return document.getElementById(id);
}

function run(){
    for(var i = 1;i <= max;i++){
        if(i == now){
            $("ad"+now).style.display="block";
        }else{
            $("ad"+i).style.display="none";
        }
    }
    if(now == max){
        now = 1;
    }else{
        now++;
    }
    timer = setTimeout(run,2000);
}

window.onload = function(){
    run();
}

function search() {
    alert("test");
}