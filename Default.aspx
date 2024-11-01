<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemplo_asp_pokemon.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola!</h1>
    <p>Llegaste al Pokedex Web,tu lugar pokemon...</p>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>

                <div class="col">
                    <div class="card">
                        <%-- Con el repeater debemos usar #Eval(propiedad de la lista) --%>
                        <img src="<%#Eval("UrlImagen")%>" class="card-img-top" alt="...">

                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <%-- El CommandArgument recibe el Eval solo entre '' --%>
                            <asp:Button Text="Detalle" CssClass="btn btn-primary" runat="server" ID="btnDetalle" CommandArgument='<%#Eval("Id")%>' CommandName="PokemonId" OnClick="btnDetalle_Click" />
                        </div>

                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>



    </div>
</asp:Content>
