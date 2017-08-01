// window.onload = function() {
    // query -> array
    // document.querySelectorAll("button")[0].onclick = function() {
    //     window.alert("Clicked!");
    // }

    // function customAlert() {
    //     window.alert("Clicked");
    // }

    // document.querySelectorAll("button")[0].addEventListener('click', function() {
    //     window.alert("Clicked!");
    // })
// }

// selector has same behaviour with css-like
$("button:nth-child(2)").click(function() {
    window.alert("hello world!");
});