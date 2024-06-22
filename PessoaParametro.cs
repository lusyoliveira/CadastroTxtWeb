using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cadastrotxtweb
{
    public class PessoaParametro
    {
        public string Nome { get; set; }
        public string Idade { get; set; }
        public string Email { get; set; }

        public override string ToString()
{
 	return this.Nome + "," + this.Idade + "," + this.Email;
}
    }
}