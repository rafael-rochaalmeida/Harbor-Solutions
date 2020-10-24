function logar_sistema() {
    var email_user = email.value;
    var senha_user = senha.value;
<<<<<<< HEAD
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
=======
    if (email_user == 'harborsolutions.com.br' && senha_user == 'h123') {
        login_valido()
    } else {
        mensagem.innerHTML = "Login inválido!"
    }
};
>>>>>>> 13ed8ff7ed3a388a00d5f91afaf28f62d369901b

function login_valido() {
    window.location.href = "../pages/dashboard.html";
}