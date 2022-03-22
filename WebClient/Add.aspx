<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="WebClient.Add" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
                
        body {
            background-image: url('images/abbc.png');
            background-repeat: no-repeat;
            background-attachment: fixed; 
            background-size: 100% 100%;
            font-family:Bahnschrift;
            font-style:normal;
            color:white !important;
        }
        .center{
             text-align: center;
        }
        .auto-style3 {
            width: 300px;
            font-size: large;
            color: #000099;
            font-weight: bold;
            text-align: center;
        }
        .auto-style4 {
            color: #000099;
        }
        .auto-style5 {
            color: #000066;
        }
        .auto-style6 {
            color: #000099;
            font-size: large;
        }
        .auto-style7 {
            width: 354px;
            text-align: center;
        }
        .auto-style8 {
            font-weight: normal;
            font-size: small;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
           <h1 style="font-size: xx-large" class="center"> &nbsp;</h1>
            <h1 style="font-size: xx-large" class="center"> &nbsp;</h1>
            <h1 style="font-size: xx-large" class="center"> &nbsp;</h1>
            <h1 style="font-size: xx-large" class="center"> <span class="auto-style5">Add New Criminal</span><br /></h1>
            
        </div>
        <table align="center" >
            <%--<tr>
                <td class="auto-style3">Product Id              <td class="auto-style7"><asp:TextBox ID="id" runat="server" Width="346px" Height="23px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>--%>
            <tr>
                <td class="auto-style3">Criminal Name</td>
                <td class="auto-style7"><asp:TextBox ID="name" runat="server" Width="346px" Height="23px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
             <tr>
                <td class="auto-style3">Type</td>
                <td class="auto-style7"><asp:TextBox ID="type" runat="server" Width="346px" Height="23px"></asp:TextBox>
                    <br />
                    <br />
                 </td>
            </tr>
             <tr>
                <td class="auto-style3">Age
                    <br />
                    <span class="auto-style8"></span></td>
                <td class="auto-style7"><asp:TextBox ID="age" runat="server" Width="346px" Height="23px"></asp:TextBox>
                    <br />
                    <br />
                 </td>
            </tr>
             <tr>
                <td class="auto-style3">Gender<br />
                    <span class="auto-style8"></span></td>
                <td class="auto-style7"><asp:TextBox ID="gender" runat="server" Width="346px" Height="23px"></asp:TextBox>
                    <br />
                    <br />
                 </td>
            </tr>
             <tr>
                <td class="auto-style3">Crime Address</td>
                <td class="auto-style7"><asp:TextBox ID="address" runat="server" Width="346px" Height="23px"></asp:TextBox><br />
                 <br />
                    <br /></td>
            </tr>
            <tr>
                <td class="auto-style3">Complaint Name</td>
                <td class="auto-style7"><asp:TextBox ID="Cname" runat="server" Width="346px" Height="23px"></asp:TextBox><br />
                <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Crime Date</td>
                <td class="auto-style7"><asp:TextBox ID="cdate" TextMode="DateTime" Placeholder="DD/MM/YYYY" runat="server" Width="346px" Height="23px"></asp:TextBox><br />
                 <br />
                    <br /></td>
            </tr>
            </table>
            <div class="center">
            <br />
            </div>
        <div class="center">
                <asp:Button ID="btnSave" runat="server"  Text="Save" OnClick="BtnSave_Click" style="color: #000066; background-color: white; text-align: center; border-radius: 10px" Width="206px" Height="30px"/>  
                <br/><br />
                <asp:Button ID="bntReset" runat="server" Text="Reset" style="color: #000066; background-color: white; border-radius: 10px" Width="206px" Height="30px" OnClick="BntReset_Click" />  
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="" style="color: #000066; font-size: medium"></asp:Label>
            <br />
            <br />
           <asp:Button ID="Button2" runat="server" Text="Add Another Criminal" style="color: #000066; background-color: white; border-radius: 10px" Width="206px" Height="30px" OnClick="BtnCancel_Click1" />
            <br class="auto-style6" />
            <br />
        
            <asp:Button ID="Button1" runat="server" Text="Home" style="color: #000066; background-color: white; border-radius: 10px" Width="206px" Height="30px" OnClick="BtnCancel_Click" />
    </form>
</body>
</html>
