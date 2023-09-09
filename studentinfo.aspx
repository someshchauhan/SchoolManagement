<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentinfo.aspx.cs" Inherits="SchoolManagement.studentinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StudentInfo</title>
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

        #Roll,#Name
        {
            text-transform:uppercase;
            border-radius:30px;
        }

        .container .d1
        {
            
            margin-top:100px;
        }

        #Button3,#Button4
        {
            background:transparent;
            text-decoration:none;
            text-transform:uppercase;
            padding: 20px;
            border:3px solid rgba(255,255,255,0.1);
            border-bottom:3px solid red;
            border-radius:30px;
        }

        #Button3:hover,#Button4:hover
        {
            color:red;
            
            background:#d6eb1b;
        }

        .container .d1 .sup
        {
            
        }

        .container .d1 a:hover
        {
            letter-spacing: 2px;
            color:red;
        }

        

        .btn
        {
            margin-top:20px;
            text-align:center;
        }

        #Button1,#Button2
        {
            border-radius:30px;
            padding:10px;
        }

        #GridView1,#GridView2
        {
            background: #ffffff;
            padding:20px;
            color: black;
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

        <h1>STUDENT'S INFO</h1>

        <div class="main">
            <div class="container">

                

                <div class="d1">
                    <asp:Button ID="Button3" runat="server" Text="Search by Roll Number" OnClick="Button3_Click" />
                    <div class="sup" id="sup" runat="server">
                            <asp:Label ID="Label2" runat="server" Text="Roll Number: "></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Roll" runat="server" Height="25px" Width="243px" required></asp:TextBox>

                        <div class="btn">
                            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                        </div>

                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                        <marquee direction="left" scrollamount="10"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></marquee>
                    </div>
                </div>
            
                <div class="d1">
                    <asp:Button ID="Button4" runat="server" Text="Search by student name" OnClick="Button4_Click1" />
                    <div class="sup" id="super" runat="server">
                            <asp:Label ID="Label1" runat="server" Text="Full Name: "></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Name" runat="server" Height="25px" Width="243px" required></asp:TextBox>

                        <div class="btn">
                            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
                        </div>

                        <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                        <marquee direction="left" scrollamount="10"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></marquee>
                        
                    </div>
                </div>

                


              </div>
            </div>
    </form>
</body>
</html>
