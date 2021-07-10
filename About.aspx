<%@ Page Title="Lista de Videojuegos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div> 
    <link href="StyleSheet1.css" rel="stylesheet" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="VIDEOGAMESID"
    OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
    AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
    <Columns>
    
        <asp:TemplateField HeaderText="Id" ItemStyle-Width="150" Visible="False">
        
            <ItemTemplate>
                <asp:Label ID="lblId" runat="server" Text='<%# Eval("VIDEOGAMESID") %>'></asp:Label>
            </ItemTemplate>
        
            <EditItemTemplate>
                <asp:TextBox ID="txtId" runat="server" Text='<%# Eval("VIDEOGAMESID") %>'></asp:TextBox>
            </EditItemTemplate>
        


        </asp:TemplateField>
    
        <asp:TemplateField HeaderText="Nombre" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblname" runat="server" Text='<%# Eval("VIDEOGAMESNAME") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("VIDEOGAMESNAME") %>'></asp:TextBox>
            </EditItemTemplate>
    
        </asp:TemplateField>

    
        <asp:TemplateField HeaderText="Precio" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblpre" runat="server" Text='<%# Eval("VIDEOGAMESPRICE") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtpre" runat="server" Text='<%# Eval("VIDEOGAMESPRICE") %>'></asp:TextBox>
            </EditItemTemplate>
    
        </asp:TemplateField>
    



        <asp:TemplateField HeaderText="Portada" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblpor" runat="server" Text='<%# Eval("VIDEOGAMESPHOTO") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtpor" runat="server" Text='<%# Eval("VIDEOGAMESPHOTO") %>'></asp:TextBox>
            </EditItemTemplate>




        </asp:TemplateField>
        <asp:TemplateField HeaderText="Fecha" ItemStyle-Width="150" Visible="False">
            <ItemTemplate>
                <asp:Label ID="lblfecha" runat="server" Text='<%# Eval("VIDEOGAMESDATE") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtfecha" runat="server" Text='<%# Eval("VIDEOGAMESDATE") %>'></asp:TextBox>
            </EditItemTemplate>



        </asp:TemplateField>
        <asp:TemplateField HeaderText="Genero" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblgen" runat="server" Text='<%# Eval("GENEROV_GENEROID") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtgen" runat="server" Text='<%# Eval("GENEROV_GENEROID") %>'></asp:TextBox>

            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Gen_name" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblgen_nam" runat="server" Text='<%# Eval("GENERONAME") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtgen_name" runat="server" Text='<%# Eval("GENERONAME") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Desarrollador" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lbldesa" runat="server" Text='<%# Eval("DESARROLLADOR_DESARROLLADORID") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtdesa" runat="server" Text='<%# Eval("DESARROLLADOR_DESARROLLADORID") %>'></asp:TextBox>
            </EditItemTemplate>



        </asp:TemplateField>


         <asp:TemplateField HeaderText="Desa_name" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="Labeldesa_name" runat="server" Text='<%# Eval("DESARROLLADORNAME") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtdesa_name" runat="server" Text='<%# Eval("DESARROLLADORNAME") %>'></asp:TextBox>
            </EditItemTemplate>



        </asp:TemplateField>


        <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"/>

    </Columns>
       
    </asp:GridView>




<br>
        <br>
        <br>

<link href="StyleSheet1.css" rel="stylesheet" type="text/css">

<table style="margin: 0 auto;" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"  >

<tr>
    <td style="width: 150px">
        <b>ID:<b/><br />
        <asp:TextBox ID="txtId" runat="server" Width="140" />
    </td>

    <td style="width: 150px">
        <b>Nombre:<b/><br />
        <asp:TextBox ID="txtName" runat="server" Width="140" />
    </td>
    
    <td style="width: 150px">
        <b>Precio:<b/><br />
        <asp:TextBox ID="txtPrecio" runat="server" Width="140" />
    </td>

    <td style="width: 150px">
        <b>Portada:<b/><br />
        <asp:TextBox ID="txtPortada" runat="server" Width="140" />
    </td>

    <td style="width: 150px">
        <b>Fecha:<b/><br />
        <asp:TextBox ID="txtFecha" runat="server" Width="140" />
    </td>

    <td style="width: 150px">
        <b>Genero:<b/><br />
        <asp:TextBox ID="txtGenero" runat="server" Width="140" />
    </td>

    <td style="width: 150px">
        <b>Desarrollador:<b/><br />
        <asp:TextBox ID="txtDesarrollador" runat="server" Width="140" />
    </td>
    

    <td style="width: 100px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" class="boton" />
    </td>
</tr>
</table>


     </div> 



</asp:Content>