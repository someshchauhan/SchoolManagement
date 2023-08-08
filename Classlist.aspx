<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Classlist.aspx.cs" Inherits="SchoolManagement.Classlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ClassList</title>
    <style>
        body
        {
            background: linear-gradient(to right, rgb(9, 243, 222), rgb(17, 115, 145));
            
        }

        .nav
        {
            border-bottom: 3px solid red;
            border-top: 3px solid red;
            border-radius: 30px;
        }

        .nav #Image1
        {
            margin-left:10px;
            border-radius:30px;
        }

        .nav .links
        {
            float:right;
            text-transform: uppercase;
            
        }

        .links a
        {
            text-decoration:none;
            padding-left: 40px;
            padding-right: 40px;
        }

        .links a:hover
        {
            letter-spacing:2px;
            color:red;
        }

        .container
        {
            display: flex;
            justify-content: center;
            align-items: center;
            padding:150px;
        }

        .main
        {
            padding: 100px;
            text-align:center;
            border: 3px solid rgba(255,255,255,0.1);
            border-bottom: 3px solid #8bf416;
            border-radius: 30px;
            box-shadow: 0 15px 15px rgba(0,0,0,0.3);
        }

        #Select1
        {
            border-radius: 30px;
            height:25px;
            width:243px;
        }

        .btn
        {
            margin-top: 20px;
            text-align: center;
            padding: 10px;
        }

        #Button1
        {
            padding: 10px;
            border-radius: 30px;
        }

        #GridView1
        {
            padding: 20px;
            background: #ffffff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="nav" style="background-color: #FFFFFF">
            
            <a href="School.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="dpslogo.jpg" Width="61px" /></a>
            
            <div class="links">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admission.aspx">student admission</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/teachers.aspx">teachers</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/principal.aspx">principal</asp:HyperLink>
            </div>
           
        </div>
        
        <h1>CLASS LIST</h1>


        <div class="container">
            <div class="main">
                <asp:Label ID="Label1" runat="server" Text="Select Class:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="Select1" runat="server">
                    <option>6th</option>
                    <option>7th</option>
                    <option>8th</option>
                    <option>9th</option>
                    <option>10th</option>
                    <option>11th</option>
                    <option>12th</option>

                </select>

                <div class="btn">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </div>

                <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                <marquee scrollamount="10" direction="left"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></marquee>
            </div>
        </div>
    </form>
</body>
</html>
