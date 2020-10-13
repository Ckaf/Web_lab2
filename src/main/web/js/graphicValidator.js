const plot = $("svg");

function getXFromSVG(x, r) {
    return (x - 150) / 60 / 2 * r;
}

function getYFromSVG(y, r) {
    return (y - 150) / 60 / 2 * -r;
}
function getRValue() {
    const rText =document.querySelector("select[name=r_btn]").value;
    let rValue = parseFloat(rText);

    // if there is answer page without form
    if (rText === undefined) {
        rValue = document.querySelector("select[name=r_btn]").value;
        // if somebody send get request to /controller then table will be empty
        if (isNaN(rValue)) {
            rValue = 1;
        }
    } else {
        if (!validateR()) {
            return null;
        }
    }
    return rValue;
}

function clickPlotHandler(e) {
    const offset = $(this).offset();
    const x = e.pageX - offset.left;
    const y = e.pageY - offset.top;
    const rValue = getRValue();

    if (rValue !== null) {
        const xValue = getXFromSVG(x, rValue);
        const yValue = getYFromSVG(y, rValue);

        let str = '?x=' + xValue + '&y=' + yValue + '&r=' + rValue;
        fetch("controller" + str, {
            method: "GET",
            headers: {"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"},
        }).then(response => response.text()).then(function (serverAnswer) {
            setPointer(xValue, yValue, rValue);
            document.getElementById("answer-table").innerHTML = serverAnswer;
        }).catch(err => createNotification("Ошибка HTTP. Повторите попытку позже." + err));
    }
}
plot.click(clickPlotHandler)

