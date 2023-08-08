<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admission.aspx.cs" Inherits="SchoolManagement.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students</title>
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
            text-transform:uppercase;
            text-align:center;
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
            background:#edf342;
            border-bottom:3px solid red;
        }
        
        .btn1 a
        {
            text-decoration:none;
        }

        .btn1 a:hover
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

        <h1>STUDENT'S PAGE</h1>

        <div class="container">
            <div class="main">
            <div class="btn1"><a href="stuadmission.aspx">students admission</a></div>
                
            <div class="btn1"><a href="studentinfo.aspx">students info</a></div>

            <div class="btn1"><a href="updatestu.aspx">update info</a></div>

            <div class="btn1"><a href="deletestuinfo">delete info</a></div>

            <div class="btn1"><a href="Classlist.aspx">class list</a></div>

        </div>
        </div>

        <div class="con" style="text-align: center">

            <h1>DELHI PUBLIC SCHOOL</h1>
            
        </div>
    </form>
</body>
</html>
