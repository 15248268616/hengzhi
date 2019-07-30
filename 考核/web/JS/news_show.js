var max = 3;
var now = 1;

function $(id) {
    return document.getElementById(id);
}

function show(flag) {
    if (flag) {
        now = flag;
    }

    for (var i = 1; i <= max; i++) {
        if (i == now) {
            $("newShow" + now).style.display = "block";
        } else {
            $("newShow" + i).style.display = "none";
        }
    }

    if (now == max) {
        now = 1;
    } else {
        now++;
    }
}

window.onload = function () {
    show();
}