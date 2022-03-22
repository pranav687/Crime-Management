<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="WebClient.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-image: url('images/abbc.png');
            background-repeat: no-repeat;
            background-attachment: fixed; 
            background-size: 100% 100%;
            font-family:Bahnschrift
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
             <div style="text-align: center">
           <em style="font-size: xx-large"><h1 style="font-size: xx-large"> &nbsp;</h1>
                 <h1 style="font-size: xx-large"> &nbsp;</h1>
                 <h1 style="font-size: xx-large"> &nbsp;</h1>
                 <h1 style="font-size: xx-large"><span class="auto-style5">Delete Product</span></em><em style="color: #CC0066; font-size: xx-large"><br /></h1></em>
        </div>
        <table align="center" >
            <tr>
                <td class="auto-style3"><em class="auto-style6"></em></td>
                <td class="auto-style7"><asp:TextBox ID="id" Placeholder=" Id" runat="server" Width="346px" Height="23px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><em class="auto-style4"></em></td>
                <td class="auto-style7"><asp:TextBox ID="name" Placeholder="Name" runat="server" Width="346px" Height="23px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <center>
                <asp:Button ID="btnDelete" runat="server"  Text="Delete"  style="color: #000066; background-color: white; text-align: center; border-radius: 10px" Width="206px" Height="30px" OnClick="BtnDelete_Click"/>  
                <br/><br />
                <asp:Button ID="bntReset" runat="server" Text="Home" style="color: #000066; background-color: white; border-radius: 10px" Width="206px" Height="30px" onClick="BackHome" />  
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="" style="color: #000066; font-size: medium"></asp:Label>
            <div style="float:left" >  
                 <asp:GridView ID="grdEmployees" runat="server">  
                        <AlternatingRowStyle BackColor="White" />  
                        <HeaderStyle BackColor="#003300" Font-Bold="True" ForeColor="White" />  
                </asp:GridView>  
             </div>  
            </center>
    </form>
</body>
</html>