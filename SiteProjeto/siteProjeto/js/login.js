function logar_sistema(){
    var email_user = email.value;
    var senha_user = senha.value;
    var login_user = "haborsolutions.com.br";
    if(email_user == login_user && senha_user == 'h123'){
        login_valido();
    } else{
        alert('Senha ou login inválido')
    }
};
function login_valido(){
    window.location.href = "dashboard.html";
}

