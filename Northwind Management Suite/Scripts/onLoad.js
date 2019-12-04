'use strict'

var windowLoads = 0; 

window.onload = function () {
    checkWindowLoads();
}


function userOnLoadWindowAlert() {
    alert("We now offer free shipping for orders over $1,000!");
    windowLoads++;
}

function checkWindowLoads() {
    if (windowLoads > 1) {
        userOnLoadWindowAlert();
    }
    else {
        return
    }
}
