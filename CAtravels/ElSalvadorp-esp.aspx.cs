﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data.SqlClient;

namespace CAtravels
{
    public partial class ElSalvadorp_esp : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=catravels; Uid=root; pwd=;");
        protected void Page_Load(object sender, EventArgs e)
        {
            string pais = "El Salvador";
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from empresa WHERE Ubicacion_Empresa ='" + pais + "';";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }

        protected void LBinicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio-esp.aspx");
        }

        protected void LBpromociones_Click(object sender, EventArgs e)
        {
            Response.Redirect("Promociones-esp.aspx");
        }

        protected void LBpaquetes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Paquetes1-esp.aspx");
        }

        protected void LBvuelos_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Vuelos-esp.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TxtU.Text != "" && TxtP.Text != "")
            {
                string contra, username;
                contra = EncryptString(TxtP.Text, initVector);
                username = TxtU.Text;
                valores.valorGlobal = username;

                //int retorno = 0;
                MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= catravels; Uid=root; pwd=;");
                var cmd = "SELECT Id_usuarios from usuarios WHERE User_name='" + username + "' AND Password='" + contra + "';";
                MySqlCommand comando = new MySqlCommand(cmd, conexion);
                conexion.Open();
                int retorno = Convert.ToInt32(comando.ExecuteScalar());
                if (retorno != 0)
                {
                    Session["usermane"] = TxtU;
                    alerta.Text = "<script>Swal.fire('Credenciales correctas', 'Puede Escoger el Paquete', 'success') </script>";

                }
                else
                {

                    alerta.Text = "<script>Swal.fire('Error de Credenciales, 'Su Nombre o Usuario estan incorrectos', 'error') </script>";
                    TxtU.Text = "";
                    TxtP.Text = "";
                }


            }
            else
            {
                alerta.Text = "<script>Swal.fire('Cuidado', 'Rellene todos los espacios', 'error') </script>";
            }
        }
        private const string initVector = "pemgail9uzpgzl88";
        private const int keysize = 256;
        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = conexionBD.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM empresa WHERE Id_empresa=@ID", conexion);
                comand.Parameters.AddWithValue("@ID", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Se ha seleccionado con exito.', '', 'success'); </script>";

                    //TxtEname.Text = registro["Nombre_empresa"].ToString();
                    //TxtUempresa.Text = registro["Ubicacion_Empresa"].ToString();
                    //TxtDempresa.Text = registro["Descripcion_empresa"].ToString();
                    //TxtPempresa.Text = registro["Promocion_mes"].ToString();
                    //TxtTempresa.Text = registro["Telefono_contacto"].ToString();
                    //TxtEempresa.Text = registro["Email_contacto"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal Intentalo otra vez', 'Verifique que ID se correcto', 'error') </script>";

            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Promociones-esp.aspx");
        }

        protected void LBvuelos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vuelos-esp.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("login.aspx");
        }
    }
}