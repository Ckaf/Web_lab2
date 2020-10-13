document.getElementById("clearTableButton").onclick = function() {
    $.ajax({
        url: 'controller',
        type: 'DELETE',
        success: function() {
            location.reload();
        }
    });
}