<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stuadmission.aspx.cs" Inherits="SchoolManagement.WebForm3" %>

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

        .main {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 100px;
        }
        .container
        {
           padding:50px;
           border: 3px solid rgba(255,255,255,0.1);
           border-bottom:3px solid red;
           border-top:3px solid red;
           border-radius:30px;
           box-shadow: 0 15px 15px rgba(0,0,0,0.3);
           
        }

        #Roll,#Name,#Father,#Mother,#Contact,#Address,#Class
        {
            
            border-radius:30px;
        }

        .d1
        {
            margin-top:20px;
        }

        .btn
        {
            margin-top:20px;
            text-align:center;
        }

        #Button1
        {
            border-radius:30px;
            padding:10px;
        }

        #Class
        {
            height:25px;
            width:243px;
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

        <h1>STUDENT'S ADMISSION</h1>

        <div class="main">
            <div class="container">
            <div class="d1">
                <asp:Label ID="Label1" runat="server" Text="Roll Number: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Roll" runat="server" Height="25px" Width="243px" required></asp:TextBox>
            </div>

                <div class="d1">
                <asp:Label ID="Label9" runat="server" Text="Class: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="Class" runat="server" required>
                    <option>6th</option>
                    <option>7th</option>
                    <option>8th</option>
                    <option>9th</option>
                    <option>10th</option>
                    <option>11th</option>
                    <option>12th</option>

                </select>
            </div>
                
                <div class="d1">
                    <asp:Label ID="Label2" runat="server" Text="Name: "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Name" runat="server" Height="25px" Width="243px" required></asp:TextBox>
                </div>
                
                <div class="d1">
                    <asp:Label ID="Label3" runat="server" Text="Father's Name: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Father" runat="server" Height="25px" Width="243px" required></asp:TextBox>
                </div>
                
                <div class="d1">
                    <asp:Label ID="Label4" runat="server" Text="Mother's Name: "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="Mother" runat="server" Height="25px" Width="243px" required></asp:TextBox>
                </div>
                
                <div class="d1">
                    <asp:Label ID="Label5" runat="server" Text="Conatact Number: "></asp:Label>
            <asp:TextBox ID="Contact" runat="server" Height="25px" Width="243px" required></asp:TextBox>
                </div>
                
                <div class="d1">
                    <asp:Label ID="Label6" runat="server" Text="Address: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Address" runat="server" Height="25px" Width="243px" required></asp:TextBox>
                </div>
               
                <div class="d1">
                    <asp:Label ID="Label7" runat="server" Text="Fees Status: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Submited<input id="Submited" type="radio" name="fees" runat="server" required />&emsp;
                Not Submited<input id="NotSubmited" type="radio" name="fees" runat="server" required/>
                </div>
                
                <div class="btn">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </div>
                <marquee scrollamount="10" direction="left"><asp:Label ID="Label8" runat="server" Text=""></asp:Label></marquee>
        </div>
        </div>
    </form>
</body>
</html>
