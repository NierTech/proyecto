﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarEmpresaVuelos.aspx.cs" Inherits="CAtravels.EditarEmpresa_" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="./css/reset.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:400,900" rel="stylesheet">
	<link rel="stylesheet" href="./css/main.css">
	<link href="css/materialize.css" rel="stylesheet">
    <link href="css/mi-estilo.css" rel="stylesheet">
	<title>Vuelos</title>

    <script type="text/javascript">
        function validar(e) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            patron = /[A-Za-z\s]/; // 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>
    <script type="text/javascript">
        function numeros(nu) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            ppatron = /\d/; // Solo acepta números// 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>

    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                regexp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 46) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false

        }

    </script>

</head>
<body>






	<form id="form1" runat="server">

		<div class="contafiner"> 
 
		<div class="nav-wrapper" id="franja">       
          <a href="#" class="brand-logo"></a>
	       <img src="imagenes/Logo.png" width="6%" height="75%">
        </div>
	
	<div class="row" id="menuprincipal1">
		<div class="col-12">
			<div class="menudelapagina">
				<ul id="palabras">
				    <li>
                        <asp:LinkButton ID="LBvuelos" runat="server" OnClick="LBvuelos_Click1"  >Airline Flight Company</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LBturismo" runat="server" OnClick="LBturismo_Click1" >Tourism Company</asp:LinkButton>
                    </li>
					<li>
                        <asp:LinkButton ID="LBedit" runat="server" OnClick="LBedit_Click" >EDIT</asp:LinkButton>
                    </li>
					<li>
                        <asp:LinkButton ID="LBdelete" runat="server" OnClick="LBdelete_Click1" >DELETE</asp:LinkButton>
                    </li>
				</ul>
			</div>	
		</div>
	</div>

                
    <div class="container">
		&nbsp;<div class="form__top">
		  <h1><span>CA</span></h1><h2>Airline Flight Company</h2>
             <p>This form is directed only to tourism businesses, if you are going to promote flights go to the navbar at the top that says:&quot;Airline Flight Company&quot;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
		</div>
	
			<p>Airline Flight Name</p>
			<asp:TextBox ID="Txtvempresa" runat="server" Height="24px" Width="238px" onkeypress="return validar(event)"></asp:TextBox>
		<br />
		<p>Flight ID</p>
			<asp:TextBox ID="txtid" runat="server" Height="24px" Width="238px"></asp:TextBox>
&nbsp;<p>Departure Country Flight</p>
			<asp:TextBox ID="Txtvsalida" runat="server" Height="49px" Width="417px" onkeypress="return validar(event)"></asp:TextBox>
&nbsp;<br />
        <br />
        Arrival Country<br />
			<asp:TextBox ID="Txtvllegada" runat="server" Height="49px" Width="417px" onkeypress="return validar(event)"></asp:TextBox>
        <br />
        Departure Date<br />
        <asp:TextBox ID="TxtSalida" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        <br />
        Arrival Date<br />
        <asp:TextBox ID="Txtllegada" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;<p>Price</p>
			<asp:TextBox ID="Txtprecio" runat="server" ></asp:TextBox>
&nbsp;&nbsp;
&nbsp;&nbsp;<p>Currency</p>
			<asp:TextBox ID="Txtmoneda" runat="server" onkeypress="return validar(event)"></asp:TextBox>

<p>Phone Number</p>
			<asp:TextBox ID="Txttelefono" runat="server" Height="29px" Width="256px"  MaxLength="7" onkeypress="return NumCheck(event)"></asp:TextBox>
&nbsp;<p>Email</p>
			<asp:TextBox ID="Txtemail" runat="server" Height="29px" Width="256px"></asp:TextBox>
        <br />
&nbsp;<div class="btn__form">
            	&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="SELECT" CssClass="btn__reset" Height="25px" Width="293px" OnClick="Button1_Click" />
                &nbsp;&nbsp;<asp:Button ID="btnAgregar" runat="server" Height="25px" Text="EDIT" Width="323px" CssClass="btn__submit" OnClick="btnAgregar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            </div>
	</div>
			<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
            <br />
            <asp:GridView ID="gvdlista" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
		<AlternatingRowStyle BackColor="White" />
		 <Columns>
                    <asp:BoundField DataField="Id_Vempresa" HeaderText="ID" />
                    <asp:BoundField DataField="Nombre_Vempresa" HeaderText="Company Name" />
                    <asp:BoundField DataField="Pais_Salida" HeaderText="Departure Country" />
                    <asp:BoundField DataField="Pais_llegada" HeaderText="Arrival Country" />
                    <asp:BoundField DataField="Salida" HeaderText="Departure Date" />
                    <asp:BoundField DataField="Regreso" HeaderText="Return Date" />
                    <asp:BoundField DataField="Precio" HeaderText="Price" />
                    <asp:BoundField DataField="Moneda" HeaderText="Currency" />
			        <asp:BoundField DataField="Telefono" HeaderText="Phone Number" />
			        <asp:BoundField DataField="Email" HeaderText="Email" />
         </Columns>
		 <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
    </form>

</body>
</html>
