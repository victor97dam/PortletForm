$(document).ready(function(){

$('#btnSubmit9').click(function(){
    validateForm();   
});
function validateForm(){

    var name = $('#name').val();
    var father = $('#father').val();
    var mother = $('#mother').val();
    var age = $('#age').val();

        if(father==""||name==""||mother==""||age==""){
            alert('lo isiste mal');
        } 
}   

});