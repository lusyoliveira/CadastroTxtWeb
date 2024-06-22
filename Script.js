function Pessoa(nome, idade, email) {
    this.Nome = nome;
    this.Idade = idade;
    this.Email = email;
}

function Enviar() {
    var pessoa = new Pessoa(
        document.getElementById("nome").value,
        document.getElementById("idade").value,
        document.getElementById("email").value
        );

    if (pessoa.Nome == "") {
        alert("Preencha o campo nome!");
        return true
    }
    else if (pessoa.Idade == "" || isNaN(pessoa.Idade)) {
        alert("Preencha o campo idade!");
        return true
    }
    else if (pessoa.Email == "") {
        alert("Preencha o campo email!");
        return true
    }
    else {
        //confirm("deseja continuar?");
    }

    var onSuccess = function (result) {
        alert(result);
        window.location = window.location;
    }
    var onError = function () {
        alert("Erro ao requisitar o servidor.");
    }
    PageMethods.GravaDados(pessoa, onSuccess, onError);

    return false;

}

