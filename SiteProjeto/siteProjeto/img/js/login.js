function logar_sistema(){
    var email_user = email.value;
    var senha_user = senha.value;
    if(email_user == 'harbor@solutions.com.br' && senha_user == 'h123'){
        login_valido()
    } else{
        mensagem.innerHTML = "Login inválido!"
    }
};
function login_valido(){
    window.location.href = "../pages/dashboard.html";
}

