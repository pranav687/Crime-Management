<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAll.aspx.cs" Inherits="WebClient.ViewAll" %>

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
        .center{
             text-align: center;
              margin-left: auto;
              margin-right:auto;
              font-size:25px;
        }
        .auto-style1 {
            color: #000066;
        }
        .auto-style2 {
            text-align: center;
            font-size: large;
        }
        .auto-style3 {
            color: #000099;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
</head>
<body>
     <div style="text-align: center">
           
           <h1 style="font-size: xx-large"> <span class="auto-style1">All Product</span><span class="auto-style1">s</span><br /></h1>
           
        </div>
     <form id="form1" runat="server" class="center">
       
        
     <div >
         <asp:GridView CssClass="center" ID="grdEmployees" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="2" ForeColor="Black">  
             <FooterStyle BackColor="#CCCCCC" />
           <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="20px" />  
             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
             <RowStyle BackColor="White" Height="25px" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="Gray" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
       </asp:GridView>
         </div>
         <p class="center">
             &nbsp;</p>
         <p class="auto-style2">
         <asp:Button ID="bntReset" runat="server" Text="Home" style="color: #000066; background-color: white; border-radius: 10px" Width="206px" Height="30px" onClick="BackHome" />  

      </form>
</body>
</html>
