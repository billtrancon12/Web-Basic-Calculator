function updateEq(value){
    var eqInput = document.getElementById("eqInput");
    var cNum = "";
    if(eqInput.selectionStart < eqInput.value.length && eqInput.selectionStart == 0){
        eqInput.setSelectionRange(eqInput.value.length, eqInput.value.length);
    }
    if(eqInput.value === null) {
        cNum += value;
    }
    else{
        cNum = eqInput.value.substring(0, eqInput.selectionStart);
        cNum += value;
        cNum += eqInput.value.substring(eqInput.selectionStart, eqInput.length);
    }
    if(cNum.length <= 25)
        eqInput.value = cNum;
}
