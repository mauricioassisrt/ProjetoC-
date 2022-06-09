<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="Contatos.aspx.cs" Inherits="AgendaWebForms.Contatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="Label3" runat="server" Text="Inserir novo contato"></asp:Label>
    <br />
    Nome<br />
    <asp:TextBox ID="txtNome" runat="server" OnTextChanged="TextBox1_TextChanged" Width="329px"></asp:TextBox>
    <br />
    Email<br />
    <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox1_TextChanged" Width="325px"></asp:TextBox>
    <br />
    telefone<br />
    <asp:TextBox ID="txtTelefone" runat="server" OnTextChanged="TextBox1_TextChanged" Width="324px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Inserir" runat="server" OnClick="Inserir_Click" Text="Salvar" Width="331px" />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Lista de Contatos"></asp:Label>
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceContatos" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<br />
<br />
<asp:SqlDataSource ID="SqlDataSourceContatos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contato] ([nome], [email], [telefone]) VALUES (@nome, @email, @telefone)" SelectCommand="SELECT [Id], [nome], [email], [telefone] FROM [Contato]" UpdateCommand="UPDATE [Contato] SET [nome] = @nome, [email] = @email, [telefone] = @telefone WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:Label ID="lMsgContato" runat="server"></asp:Label>
</asp:Content>
