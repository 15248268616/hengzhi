var max = 3;
var now = 1;
var index = 1;
var team = 0;

function $(id) {
    return document.getElementById(id);
}

function show(flag) {
    if (flag) {
        now = flag;
    }

    for (var i = 1; i <= max; i++) {
        if (i == now) {
            $("listShow" + now).style.display = "block";
        } else {
            $("listShow" + i).style.display = "none";
        }
    }

    index = now;

    if (now == max) {
        now = 1;
    } else {
        now++;
    }
}

function last() {
    if (index == 1) {
        show(1);
    } else {
        show(index - 1);
    }

    // index = 0;
}

function next() {
    if(index == max){
        show(max);
    }else{
        show(index + 1);
    }

    // index = 0;
}

window.onload = function () {
    show();
}

function jump(){
    var jumpT = 1;
    jumpT = document.getElementById('jump');
    // console.log(jumpT);
    var jumpTo = parseInt(jumpT.value);
    // console.log(jumpTo);
    show(jumpTo);
}