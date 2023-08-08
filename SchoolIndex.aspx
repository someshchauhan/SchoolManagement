<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchoolIndex.aspx.cs" Inherits="SchoolManagement.SchoolIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

       

        .container
        {
            height: 600px;
            width: 100%;
            margin-top: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: red;

        }

        .container h1
        {
            font-size: larger;
        }

        .main
        {
            text-align: center;
            border: 3px solid rgba(255,255,255,0.1);
            border-bottom:3px solid rgb(255, 106, 0);
            border-top:3px solid rgb(255, 106, 0);
            border-radius: 30px;
            box-shadow:0 15px 15px rgba(0,0,0,0.3);
            padding: 130px;
        }

        #Button1
        {
            padding: 20px;
            margin-top: 10px;
            background: transparent;
            border:none;
            border: 3px solid rgba(255,255,255,0.1);
            box-shadow:0 15px 15px rgba(0,0,0,0.3);
            border-radius:30px;
        }

        .input
        {
            background: rgba(0,0,0,0.1);
            margin-top: 10px;
            padding: 20px;
            
        }

        #id,#pass
        {
            color:white;
            margin-top:20px;
            border: none;
            outline: none;
            border-bottom: 3px solid red;
            background: transparent;
        }

        #Button2
        {
            background:transparent;
            margin-top: 20px;
            padding: 10px;
            border-radius:30px;
            box-shadow:0 15px 15px rgba(0,0,0,0.3);
        }

        #Button1:hover,#Button2:hover
        {
            color:red;
            background: #cad81d;
            letter-spacing:1px;
            border-bottom: 3px solid red;
            box-shadow: 0 5px 0 #d63030;
        }

        #Label1, .la
        {
            margin-top:30px;
            color: red;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="nav" style="background-color: #FFFFFF">
            
            <a href="#"><asp:Image ID="Image1" runat="server" ImageUrl="dpslogo.jpg" Width="61px" /></a>
            
          
        </div>

        <div class="container" style="text-align: center">

            <h1>DELHI PUBLIC SCHOOL</h1>

            <div class="main">
                <asp:Button ID="Button1" runat="server" Text="Admin Login" OnClick="Button1_Click" />

                <div class="input" id="input" runat="server">
                    <div>
                    <asp:TextBox ID="id" runat="server" placeholder="ID:" required></asp:TextBox>
                </div>

                <div>
                    <asp:TextBox type="password" ID="pass" runat="server" placeholder="PASSWORD:" required></asp:TextBox>
                </div>

                    <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />

                   <div class="la">
                       <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                   </div>

                </div>

            </div>
            
        </div>
    </form>
</body>
</html>
