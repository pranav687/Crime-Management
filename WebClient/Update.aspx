<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="WebClient.Update" %>

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
            font-family:Bahnschrift;
            font-size:25px;
        }
        .center{
            text-align: center;
        }
       
       /* .auto-style1 {
            width: 228px;
            color: #000099;
        }
        .auto-style2 {
            width: 356px;
        }
        .auto-style4 {
            width: 1170px;
        }
        .auto-style5 {
            width: 3058px;
            color: #000099;
            font-size: large;
            text-align: center;
        }
       
        .auto-style6 {
            color: #000099;
        }
        .auto-style7 {
            width: 1085px;
            color: #000066;
        }
        .auto-style8 {
            color: #000066;
        }
        .auto-style9 {
            color: #000099;

        }
       
        .auto-style10 {
            width: 290px;
        }
       
        .auto-style11 {
            width: 3058px;
            color: #000099;
           
            height: 36px;
            text-align: center;
        }
        .auto-style12 {
            width: 356px;
            height: 36px;
        }
        .auto-style13 {
            color: #000099;
          
            margin-left: 0px;
        }*/
       
    </style>
</head>
<body>
<div class="center">
    <center>
    <form id="form1" runat="server" class="center">
        <div style="text-align: center">
           <h1 style="font-size: xx-large"> &nbsp;</h1>
            
        </div>
        <div style="text-align: center">
            
            <h1 style="font-size: xx-large"> &nbsp;</h1>
            
        </div>
        <div style="text-align: center">
            
            <h1 style="font-size: xx-large"> &nbsp;</h1>
            
        </div>
        <div style="text-align: center">
            
            <h1 style="font-size: xx-large"> <span class="auto-style8">Update </span><span class="auto-style7">Criminal</span><br /></h1>
        </div>
        <div style="text-align:center">
            &nbsp;<table id="panSearch" runat="server">  
                <tr>  
               <td class="auto-style1">                     </td>
                <td><asp:TextBox ID="txtSearch" runat="server"  Placeholder="Enter Criminal Id" Width="515px" CssClass="auto-style9" ></asp:TextBox></td>  
                <td class="auto-style10"><asp:Button ID="btnSearch" runat="server" Text="Search"  Width="287px" CssClass="auto-style9" OnClick="BtnSearch_Click" ></asp:Button></td>  
                </tr>  
                <tr>  
                <td colspan="3" ><asp:Label ID="lblSearchResult" runat="server" Font-Size="Medium" CssClass="auto-style6" ></asp:Label>
                    <br />
                    </td></tr>   
                 <tr>  
                <td colspan="3" ><asp:Label ID="id" runat="server" Font-Size="Medium" CssClass="auto-style6" ></asp:Label>
                    <br />
                    </td></tr>   
            </table>

            <table id="panUpdate" runat="server"  width="100%">
                <tr>
                <td colspan="2"><asp:Label ID="lblMsg" runat="server" Font-Size="Medium" CssClass="auto-style6" ></asp:Label>
                    <br />
                    </td>  
                </tr>  
                            <tr>
                <td>Criminal Name</td>
                <td style="margin-left:0px; font-size:25px"><asp:TextBox ID="name" runat="server" Width="411px" Height="30px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
             <tr>
                <td class="auto-style3">Type</td>
                <td class="auto-style7"><asp:TextBox ID="type" runat="server" Width="411px" Height="30px"></asp:TextBox>
                    <br />
                    <br />
                 </td>
            </tr>
             <tr>
                <td class="auto-style3">Age
                    <br />
                    <span class="auto-style8"></span></td>
                <td class="auto-style7"><asp:TextBox ID="age" runat="server" Width="411px" Height="30px"></asp:TextBox>
                    <br />
                    <br />
                 </td>
            </tr>
             <tr>
                <td class="auto-style3">Gender<br />
                    <span class="auto-style8"></span></td>
                <td class="auto-style7"><asp:TextBox ID="gender" runat="server" Width="411px" Height="30px"></asp:TextBox>
                    <br />
                    <br />
                 </td>
            </tr>
             <tr>
                <td class="auto-style3">Crime Address</td>
                <td class="auto-style7"><asp:TextBox ID="address" runat="server" Width="411px" Height="30px"></asp:TextBox>
                    <br />
                    <br />
                 </td>
            </tr>
            <tr>
                <td class="auto-style3">Complaint Name</td>
                <td class="auto-style7"><asp:TextBox ID="Cname" runat="server" Width="411px" Height="30px"></asp:TextBox>
                 <br />
                    <br /> 
                </td>
               
            </tr>
            <tr>
                <td class="auto-style3">Crime Date</td>
                <td class="auto-style7"><asp:TextBox ID="cdate" TextMode="DateTime" Placeholder="DD/MM/YYYY"  runat="server" Width="411px" Height="30px" ></asp:TextBox>
                  <br />
                    <br />

                </td>

            </tr> 
                <tr>  
                <td colspan="2">  
         
                <asp:Button ID="bntUpdated" runat="server" Text="Update"  style="color: #000066; background-color: white; text-align: center; border-radius: 10px" Width="279px" Height="30px" OnClick="BntUpdated_Click"   />  
                <br /><br /> 
                    <asp:Button ID="btnCancel" runat="server" Text="Home"  style="color: #000066; background-color: white; text-align: center; border-radius: 10px" Width="279px" Height="30px" OnClick="BtnCancel_Click"   />  
                </td>  
                </tr>  
            </table>  
        </div>
    </form>
    </center>
    </div>
</body>
</html>