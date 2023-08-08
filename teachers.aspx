<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teachers.aspx.cs" Inherits="SchoolManagement.teachers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teachers</title>
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
            border: 3px solid rgba(255,255,255,0.1);
            border-bottom: 3px solid #ff6a00;
            border-radius:50px;
            box-shadow:0 15px 15px rgba(0,0,0,0.3);
            text-transform:uppercase;
            text-align:center;
            padding: 100px;
        }

        .main .btn1
        {
            margin-top:20px;
            padding:20px;
            border: 3px solid rgba(255,255,255,0.1);
            border-radius:30px;
            box-shadow: 0 15px 15px rgba(0,0,0,0.3);
        }

        .btn1:hover
        {
            background:#ffd800;
            border-bottom: 3px solid red;
        }
        
        .btn1 #Button1
        {
            letter-spacing: 1px;
            border:none;
            background:transparent;
            text-transform:uppercase;
            padding:10px;
        }

        .btn1 #Button1:hover
        {
            letter-spacing: 2px;
            color:red;
        }

        .con
        {
            text-align: center;
            padding: 20px;
            font-size: 30px;
            color:red;
        }

        #GridView1
        {
            margin-top: 20px;
            background: white;
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

        <h1>TEACHER'S PAGE</h1>
        <div class="container">
            
            <div class="main">

            <div class="btn1">
                <asp:Button ID="Button1" runat="server" Text="teachers info" OnClick="Button1_Click" />
            </div>


                <asp:GridView ID="GridView1" runat="server"></asp:GridView>

            </div>

            <marquee scrollamount="10" direction="left"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></marquee>

        </div>

        <div class="con" style="text-align: center">

            <h1>DELHI PUBLIC SCHOOL</h1>
            
        </div>
    </form>
</body>
</html>
