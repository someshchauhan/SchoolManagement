<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletestuinfo.aspx.cs" Inherits="SchoolManagement.deletestuinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DeleteStudent'sInfo</title>
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

        .sup
        {
            border: 3px solid rgba(255,255,255,0.1);
            border-bottom:3px solid #42e60f;
            border-radius:30px;
            box-shadow: 0 15px 15px rgba(0,0,0,0.3);
            padding: 100px;
        }

        #Roll
        {
            text-transform:uppercase;
            border-radius:30px;
        }

        .btn
        {
            text-align:center;
            padding:10px;
        }

        #Button1,#Button2
        {
            border-radius:30px;
            padding:10px;
        }

        #GridView1
        {
            background: white;
        }
        
        #Label1
        {
            text-transform: uppercase;
            font-size: larger;
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

        <h1>DELELTE STUDENT'S INFO BY ROLL NUMBER</h1>

        <div class="container">
            
                    
                    <div class="sup" id="sup" runat="server">
                            
                                <asp:Label ID="Label2" runat="server" Text="Roll Number: "></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Roll" runat="server" Height="25px" Width="243px" required></asp:TextBox>

                        <div class="btn">
                            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                        </div>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            
                        <div class="btn">
                            <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
                        </div>
        </div>
            <marquee direction="left" scrollamount="10"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></marquee>
        
        </div>
        

        <div class="con" style="text-align: center">

            <h1>DELHI PUBLIC SCHOOL</h1>
            
        </div>
    </form>
</body>
</html>
