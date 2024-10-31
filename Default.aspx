<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemplo_asp_pokemon.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola!</h1>
    <p>Llegaste al Pokedex Web,tu lugar pokemon...</p>




    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%-- Agregando foreach para que cree una card por cada pokemon en la base de datos --%>

        <% foreach (dominio.Pokemon poke in ListaPokemon)
            { %>
        <div class="col">
            <div class="card">
                <%-- Es relevante que despues del <% pongamos un ":" --%>
                <img src="<%: poke.UrlImagen %>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><%: poke.Nombre %></h5>
                    <p class="card-text"><%: poke.Descripcion %></p>
                </div>
            </div>
        </div>


        <%}%>


    </div>
</asp:Content>
