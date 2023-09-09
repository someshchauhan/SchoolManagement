<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchoolIndex.aspx.cs" Inherits="SchoolManagement.SchoolIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DPS</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body
        {
            background-color: rgba(0,0,0,0.71);
        }

        .container
        {
            background-image: url(scho.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            height: 100vh;
        }

        .container::before
        {
            content: "";
            background-color:rgba(0,0,0,0.71);
            position:absolute;
            top:0;
            left:0;
            width: 100%;
            height: 100%;
        }

        .nav
        {
            margin-top: 20px;
            position: absolute;
            width: 100%;
        }
        

        .nav #Image1
        {
            margin-left:10px;
            border-radius:30px;
        }

       

        h1
        {
            text-align:center;
            font-size: 100px;
            color: aliceblue;
        }

        .slo
        {
            margin-top: 200px;
            margin-left: 20px;
            color: aliceblue;
            font-size: 20px;
            float: left;
            font-family: Rockwell;
            position: absolute;
        }

        #le2
        {
            color: rgb(243, 62, 18);
            font-size: 40px;
        }

        .slo2
        {
            margin-right: 20px;
            width: 90%;
            margin-top: 400px;
            margin-left: 20px;
            color: aliceblue;
            font-size: 20px;
            float: right;
            font-family: Rockwell;
            position: absolute;
        }

        .slosu
        {
            
            float: right;
        }

        .s1,.s3
        {
            font-size: 20px;
            margin-left: 120px;
        }

        #le
        {
            color: rgb(243, 62, 18);
            font-size: 50px;
            margin-left: 150px;
        }

        .s2
        {
            font-size: 40px;
        }

        .s2a,.s2b
        {
            margin-left: 50px;

        }

        .s2a
        {
            font-size: 40px;
        }

        .main
        {
            
            margin-top: 150px;
            text-align: center;
            position: absolute;
            width: 100%;
            display:flex;
            justify-content: center;
            align-items:center;
            color: aliceblue;
            top: -65px;
            left: -10px;
        }

        #Button1
        {
            float: right;
            letter-spacing: 1px;
            color: black;
            padding: 10px;
            margin-top: 10px;
            margin-right: 20px;
            background: aliceblue;
            border:none;
            border: 3px solid rgba(255,255,255,0.1);
            box-shadow:0 15px 15px rgba(0,0,0,0.3);
            border-radius:30px;
            font-family: Rockwell;
        }

        .input
        {
            margin-top: 40px;
            backdrop-filter: blur(5px);
            margin-top: 10px;
            border: 3px solid rgba(255,255,255,0.1);
            border-bottom:3px solid rgb(255, 106, 0);
            border-top:3px solid rgb(255, 106, 0);
            border-radius: 20px;
            box-shadow:0 15px 15px rgba(0,0,0,0.3);
            padding: 50px;
        }

        .input a
        {
            text-decoration: none;
            color:aliceblue;
        }

        .input span
        {
            letter-spacing: 1px;
            font-weight: 300;
            font-family: Rockwell;
        }

        legend
        {
            
            text-align: right;
            
            width: 16px;
            height: 25px;
        }

        #Close
        {
            color:aliceblue;
            font-size: 40px;
            background: transparent;
            border: none;
            position: absolute;
            top: 0;
            right: 0;
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

        input::placeholder
        {
            color:aliceblue;
            letter-spacing: 1px;
            font-family: Rockwell;
        }

        #Button2
        {
            color: black;
            padding: 10px;
            margin-top: 10px;
            background: aliceblue;
            border:none;
            border: 3px solid rgba(255,255,255,0.1);
            box-shadow:0 15px 15px rgba(0,0,0,0.3);
            border-radius:30px;
            font-family: Rockwell;
        }

        #Button1:hover,#Button2:hover
        {
            
            color:aliceblue;
            background: black;
            letter-spacing:1px;
            
        }

        #Label1, .la
        {
            margin-top:30px;
            color: red;
        }

        .ttl
        {
            width:100%;
            word-spacing: 150px;
            text-align: center;
            text-transform: uppercase;
            color: aliceblue;
            font-family: Rockwell;
            font-weight:200;
            font-size: 50px;
            letter-spacing: 1px;
            position:absolute;
            bottom: 0;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        

        

        <div class="container">

            <div class="nav">
            
            <a href="SchoolIndex.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="dpslogo.jpg" Width="61px" /></a>
            
          <asp:Button ID="Button1" runat="server" Text="Get Started" OnClick="Button1_Click" />
        </div>

        <div class="slo">
                <span class="s1">The Journey of a</span> <br /> <span class="s2">Thousand Miles</span> <br /> <span class="s3">Begins with a Single Step</span><br /><span id="le">- Learn!</span>
            </div>

            <div class="main">
                
                
                    <fieldset class="input" id="input" runat="server">
                        <legend>
                            <button id="Close" runat="server" onclick="Close_Click"><i class="fa-regular fa-circle-xmark"></i></button>
                            </legend>
                    <span>Admin Login</span>
                    <div>
                    <asp:TextBox ID="id" runat="server" placeholder="ID:" ></asp:TextBox>
                </div>

                <div>
                    <asp:TextBox type="password" ID="pass" runat="server" placeholder="PASSWORD:" ></asp:TextBox>
                </div>

                    <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />

                   <div class="la">
                       <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                   </div>
                    </fieldset>
                        

                
                

            </div>

            <div class="slo2">
                <div class="slosu">
                    <span id="le2">School</span> <br /><span class="s2b">- is where</span> <br />the adventure<br /> <span class="s2a">begins.</span>
                </div>
            </div>

            
            
        </div>

    </form>
</body>
</html>
