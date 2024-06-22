using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Cadastrotxtweb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static String urlArquivoTxt = "C:\\Users\\aluno\\Desktop\\Curso stefanini\\Cadastrotxtweb\\Cadastrotxtweb\\cadastro.txt";

        protected void Page_Load(object sender, EventArgs e)
        {
            LerDados();
        }

        [WebMethod]
        public static String GravaDados(PessoaParametro pessoa)
        {
            try
            {
                using (StreamWriter writer = new StreamWriter(urlArquivoTxt, true))
                     //true: caso o arquivo não exista cria um novo arquivo
                {
                    writer.WriteLine(pessoa.ToString());
                }
                return "Cadastro realizado com sucesso!";
            }
            catch (Exception)
            {
                return "Erro ao Cadastrar.";
            }
        }

        public void LerDados()
        {
            try
            {
                String line;
                //ínstâcia variavel line

                using (StreamReader file = new StreamReader(urlArquivoTxt, true))

                while ((line = file.ReadLine()) != null)
                {
                    HtmlTableRow row = new HtmlTableRow();
                    //linha de tabela

                    String[] dados = line.Split(',');
                    //array de string

                    HtmlTableCell cell = new HtmlTableCell();
                    cell.InnerText = dados[0];

                    row.Cells.Add(cell);

                    cell = new HtmlTableCell();
                    cell.InnerText = dados[1];

                    row.Cells.Add(cell);

                    cell = new HtmlTableCell();
                    cell.InnerText = dados[2];

                    row.Cells.Add(cell);

                    tbPessoas.Rows.Add(row);
                }
                //file.Close();

            }
            catch (Exception)
            {
            }
        }

    }

}