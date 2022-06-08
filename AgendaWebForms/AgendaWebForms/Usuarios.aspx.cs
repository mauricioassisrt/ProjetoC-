using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgendaWebForms
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceUsuarios_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                lMsg.Text = "Erro não foi possivel inserir o dado";
                e.ExceptionHandled = true;
            }
        }

        protected void SqlDataSourceUsuarios_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSourceUsuarios_Updating(object sender, SqlDataSourceCommandEventArgs e)
        {
           
        }

        protected void SqlDataSourceUsuarios_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                lMsg.Text = "Erro não foi possivel atualizar o dado";
                e.ExceptionHandled = true;
            }
        }
    }
}