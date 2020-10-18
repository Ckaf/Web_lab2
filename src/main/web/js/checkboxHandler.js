const form = document.getElementById("checkForm");
form.onclick = delegateFormClick;

addChangeHandlers(form);

function addChangeHandlers(form) {
    for (let i = 0; i < form.elements.length; i++) {
        const element = form.elements[i];
        if (element.tagName === "INPUT" && element.type === "checkbox") {
            if (!element.onchange) {
                element.onchange = checkBoxChanged;
            }
        }
    }
}

function delegateFormClick(evt) {
    let target;
    if (!evt) {
        //Microsoft DOM
        target = window.event.srcElement;
    } else if (evt) {
        //w3c DOM
        target = evt.target;
    }
    if (target.nodeType === 1 && target.tagName === "INPUT" && target.type === "checkbox") {
        if (target.checked) {
            disableCheckBoxes(target.id, document.getElementById("checkForm"));
        } else if (!target.checked) {
            enableCheckBoxes(document.getElementById("checkForm"));
        }
    }
}

function checkBoxChanged() {
    if (this.checked) {
        disableCheckBoxes(this.id);
        // document.getElementById("checkForm"));
    } else if (!this.checked) {
        enableCheckBoxes(document.getElementById("checkForm"));
    }
}

function disableCheckBoxes(id) {
    let blacklist = [];
    if (id) {
        switch (id) {
            case "cb1":
                blacklist = ["cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", "cb9"];
                break;
            case "cb2":
                blacklist = ["cb1", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", "cb9"];
                break;
            case "cb3":
                blacklist = ["cb1", "cb2", "cb4", "cb5", "cb6", "cb7", "cb8", "cb9"];
                break;
            case "cb4":
                blacklist = ["cb1", "cb2", "cb3", "cb5", "cb6", "cb7", "cb8", "cb9"];
                break;
            case "cb5":
                blacklist = ["cb1", "cb2", "cb3", "cb4", "cb6", "cb7", "cb8", "cb9"];
                break;
            case "cb6":
                blacklist = ["cb1", "cb2", "cb3", "cb4", "cb5", "cb7", "cb8", "cb9"];
                break;
            case "cb7":
                blacklist = ["cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb8", "cb9"];
                break;
            case "cb8":
                blacklist = ["cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb9"];
                break;
            case "cb9":
                blacklist = ["cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8"];
                break;
        }
    } else {
        throw new Error("id is needed to hard-wire input blacklist");
    }
    for (let i = 0; i < blacklist.length; i++) {
        const element = document.getElementById(blacklist[i]);
        if (element && element.nodeType === 1) {
            //check for element
            if (element.tagName === "INPUT" && element.type === "checkbox" && !element.checked) {
                element.disabled = "disabled";
            }
        } else if (!element || element.nodeType !== 1) {
            throw new Error("input blacklist item does not exist or is not an element");
        }
    }
}

function enableCheckBoxes(form) {
    for (let i = 0; i < form.elements.length; i++) {
        const element = form.elements[i];
        if (element.tagName === "INPUT" && element.type === "checkbox" && !element.checked) {
            element.disabled = "";
        }
    }
}

function resetCheckBoxes() {
    const uncheck = document.getElementsByName('x_in');
    for (let i = 0; i < uncheck.length; i++) {
        if (uncheck[i].type === 'checkbox') {
            uncheck[i].checked = false;
        }
    }
}
