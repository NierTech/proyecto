﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="costarica70-esp.aspx.cs" Inherits="CAtravels.costarica70_esp" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>COSTA RICA</title>
    <!-- Bootstrap -->
<link href="css/mi-estilo.css" rel="stylesheet">
	  
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="css/materialize.css" rel="stylesheet">
	  <link href="VUELOS.html" rel="stylesheet">
	   <link href="PAQUETES.html" rel="stylesheet">
	   <link href="PAQUETES-2.html" rel="stylesheet">
	   <link href="HOME.html" rel="stylesheet">
	   <link rel="stylesheet" href="css/css.css">
	<style>

</style>
  </head>
  <body onLoad="MM_preloadImages('botones/mc2.png','botones/visa2.png')"">
  	  <form id="form1" runat="server">
  	<!-- body code goes here -->


	  <div class="contaainer" id="fondo">
	
	
      
 <div class="contdainer" id="menuprincipal1">
	  <nav class="nav-main">

		  <ul class="nav-menu">
                 <li>
					
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LBinicio_Click" >INICIO</asp:LinkButton></li>
				  <li>
					  
                      <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LBvuelos_Click">VUELOS</asp:LinkButton></li>
					<li>
						
						<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LBpaquetes_Click">PAQUETES</asp:LinkButton></li>
				   <li>
					   
                       <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton2_Click">OFERTAS</asp:LinkButton>
                    </li>
		   </ul>
		  <ul class="nav-menu-right">
			  <li>
				  <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">CERRAR SESION</asp:LinkButton>
			  </li>
		  </ul>
	  </nav>
  </div>

		  <table width="1631" border="0" cellpadding="0" cellspacing="10">
  <tbody>
    <tr>
      <td width="1302" align="center"><strong style="color: #000000">Ha Seleccionado vuelo con destino a Costa Rica<br>
        Con un 70% de Descuento.</strong></td>
    </tr>
    <tr>
      <td align="center"><p style="color: #000000">Este Incluye:</p>
      <p style="color: #FFC600"><em><strong>-Elección opcional deGuías Turísticos.</strong><strong></strong></em></p></td>
    </tr>
    <tr>
      <td align="center"><p style="color: #000000">Seleccione Método de Pago:</p>
        <p>
            <asp:ImageButton ID="LBmastercard" runat="server" Height="129px" ImageUrl="~/botones/mastercard-logo-e1572361966389.jpg" Width="357px" OnClick="LBmastercard_Click" />
          </p>
        <p>&nbsp;</p>
        <p>
            <asp:ImageButton ID="Lbvisa" runat="server" Height="163px" ImageUrl="~/botones/visa2.png" OnClick="Lbvisa_Click" Width="351px" />
            <br>
        </p>
      <p>&nbsp;</p></td>
    </tr>
  </tbody>
</table>


<div class="nav-wrapper" id="franja">       
      <a href="#" class="brand-logo"></a>
	  <img src="imagenes/Logo.png" width="6%" height="75%">
    </div>
		  </div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script> 
	<script src="js/bootstrap-4.4.1.js"></script>
      </form>
  </body>
</html>
