document.getElementById("clearTableButton").onclick = function () {
    $.ajax({
        url: 'controller',
        type: 'DELETE',
        success: function () {
            location.reload();
        }
    });
}

if (sessionStorage.getItem("is_reloaded")) {
    resetCheckBoxes()
    $.get("jsps/answer.jsp", function (data) {
        document.getElementById("answer-table").innerHTML = data;
        document.getElementById("outputContainer").innerHTML = "";
    });
}