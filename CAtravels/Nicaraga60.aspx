﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nicaraga60.aspx.cs" Inherits="CAtravels.Nicaraga60" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NICARAGUA</title>
    <!-- Bootstrap -->
<link href="css/mi-estilo.css" rel="stylesheet">
	  
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="css/materialize.css" rel="stylesheet">
	  <link href="VUELOS.html" rel="stylesheet">
	   <link href="PAQUETES.html" rel="stylesheet">
	   <link href="PAQUETES-2.html" rel="stylesheet">
	   <link href="HOME.html" rel="stylesheet">
	   <link rel="stylesheet" href="css/css.css">
	
  </head>
  <body onLoad="MM_preloadImages('botones/cr45a.png','botones/n70a.png','botones/es60a.png')">
  	  <form id="form1" runat="server">
  	<!-- body code goes here -->


	  <div class="conftainer" id="fondo">
	
	
      
  <div class="contdainer" id="menuprincipal1">
	  <nav class="nav-main">

		  <ul class="nav-menu">
                 <li>
					
                  <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LBinicio_Click" >HOME</asp:LinkButton></li>
				  <li>
					  
                      <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LBvuelos_Click">FLIGHTS</asp:LinkButton></li>
					<li>
						
						<asp:LinkButton ID="LinkButton8" runat="server" OnClick="LBpaquetes_Click">PACKAGES</asp:LinkButton></li>
				   <li>
					   
                       <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton2_Click">OFFERS</asp:LinkButton>
                    </li>
		   </ul>
		  <ul class="nav-menu-right">
			  <li>
				  <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton5_Click">Log Out</asp:LinkButton>
			  </li>
		  </ul>
	  </nav>
  </div>

		  <table width="1631" border="0" cellpadding="0" cellspacing="10">
  <tbody>
    <tr>
      <td width="1302" align="center"><strong style="color: #000000">Ha Seleccionado vuelo con destino a Nicaragua
        <br>
        Con un 60% de Descuento.</strong></td>
    </tr>
    <tr>
      <td align="center"><p style="color: #000000">Este Incluye:</p>
        <p><strong><em>-Opciones/sugerencias de </em></strong></p>
        <p><strong><em>Alimentación y Recreación.</em></strong></p>
      <p style="color: #FFC600">&nbsp;</p></td>
    </tr>
    <tr>
      <td align="center"><p style="color: #000000">Seleccione Método de Pago:</p>
        <p>
            <asp:ImageButton ID="IBmastercard" runat="server" Height="158px" ImageUrl="~/botones/mastercard-logo-e1572361966389.jpg" Width="402px" OnClick="IBmastercard_Click" />
          </p>
        <p>&nbsp;</p>
        <p>
            <asp:ImageButton ID="IBVisa" runat="server" Height="126px" ImageUrl="~/botones/visa.jpg" Width="374px" OnClick="IBVisa_Click" />
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
