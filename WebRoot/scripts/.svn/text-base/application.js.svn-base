function batchDelete(action,checkboxName,form){
    if (!hasOneCheck(checkboxName)){
            alert('请选择要操作的对象!');
            return;
    }
    if (confirm('确定执行[删除]操作?')){
        form.action = action;
        form.submit();
    }
}
function batchZhuxiao(action,checkboxName,form){
    if (!hasOneCheck(checkboxName)){
            alert('请选择要操作的对象!');
            return;
    }
    if (confirm('确定执行[注销]操作?')){
        form.action = action;
        form.submit();
    }
}
function batchShenbao(action,checkboxName,form){
    if (!hasOneCheck(checkboxName)){
            alert('请选择要上报的对象!');
            return;
    }
    if (confirm('确定执行[人员上报]操作?')){
        form.action = action;
        form.submit();
    }
}
function hasOneCheck(name){
    var items = document.getElementsByName(name);
    if (items.length > 0) {
        for (var i = 0; i < items.length; i++){
            if (items[i].checked == true){
                return true;
            }
        }
    } else {
        if (items.checked == true) {
            return true;
        }
    }
    return false;
}

function setAllCheckboxState(name,state) {
	var elms = document.getElementsByName(name);
	for(var i = 0; i < elms.length; i++) {
		elms[i].checked = state;
	}
}