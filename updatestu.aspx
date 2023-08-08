<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatestu.aspx.cs" Inherits="SchoolManagement.updatestu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Student Info</title>
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
        .update
        {
            background: rgba(255,255,255,0.1);
            margin-top: 20px;
            padding:20px;
            border: 3px solid rgba(255,255,255,0.1);
            border-bottom: 3px solid #3df40c;
            border-radius:30px;
            box-shadow: 0 15px 15px rgba(0,0,0,0.3);
        }

        #Button3,#Button4
        {
            margin-top:20px;
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
            letter-spacing:2px;
            background:#d6eb1b
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

        #Button1,#Button2,#Button5,#Updatebtn,#Button6,#Button8,#Button9,#Button7,#Button10,#Button11,#Button12,#Button13
        {
            margin-top:10px;
            border-radius:30px;
            padding:10px;
        }

        #GridView1,#GridView2
        {
            margin-top: 20px;
            background: #FFFFFF;
            padding:30px;
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

        <h1>UPDATE STUDENT'S INFO</h1>

        <div class="main">
            <div class="container">

                

                <div class="d1">
                    <asp:Button ID="Button3" runat="server" Text="Update by Roll Number" OnClick="Button3_Click" />
                    <div class="sup" id="sup" runat="server">
                            <div id="supA" runat="server">
                                <asp:Label ID="Label2" runat="server" Text="Roll Number: "></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Roll" runat="server" Height="25px" Width="243px" required></asp:TextBox>

                        <div class="btn">
                            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                        </div>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        

                        
                            <div class="update" id="update" runat="server">
                            
                                
                                <div id="UpdateName" runat="server">
                                    <asp:Label ID="Label5" runat="server" Text="Full Name: "></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="NameUpdate" runat="server" Height="25px" Width="243px"></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Updatebtn" runat="server" Text="Update" OnClick="Updatebtn_Click" />
                                </div>

                                <div id="Div1" runat="server">
                                    <asp:Label ID="Label6" runat="server" Text="Father's Name: "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UpdateFather" runat="server" Height="25px" Width="243px" ></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Button5" runat="server" Text="Update" OnClick="Button5_Click" />
                                </div>

                                <div id="Div2" runat="server">
                                    <asp:Label ID="Label7" runat="server" Text="Mother's Name: "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UpdateMother" runat="server" Height="25px" Width="243px" ></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Button6" runat="server" Text="Update" OnClick="Button6_Click" />
                                </div>

                                <div id="Div3" runat="server">
                                    <asp:Label ID="Label8" runat="server" Text="ContactNumber: "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UpdateContact" runat="server" Height="25px" Width="243px" ></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Button8" runat="server" Text="Update" OnClick="Button8_Click" />
                                </div>

                                <div id="Div4" runat="server">
                                    <asp:Label ID="Label9" runat="server" Text="Address: "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UpdateAddress" runat="server" Height="25px" Width="243px" ></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Button9" runat="server" Text="Update" OnClick="Button9_Click" />
                                </div>
                            
                           
                                <marquee direction="left" scrollamount="10"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></marquee>
                            </div>
                        </div>
                        
               </div>
            
                <div class="d1">
                    <asp:Button ID="Button4" runat="server" Text="Update by student name" OnClick="Button4_Click1" />
                    <div class="sup" id="super" runat="server">
                            <asp:Label ID="Label1" runat="server" Text="Full Name: "></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Name" runat="server" Height="25px" Width="243px" required></asp:TextBox>

                        <div class="btn">
                            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
                        </div>
                        

                        <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                        
                        <div class="update" id="Update2" runat="server">
                            
                                
                                <div id="Div6" runat="server">
                                    <asp:Label ID="Label4" runat="server" Text="Roll Number: "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="UpdateRoll" runat="server" Height="25px" Width="243px"></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Button7" runat="server" Text="Update" OnClick="Button7_Click" />
                                </div>

                                <div id="Div7" runat="server">
                                    <asp:Label ID="Label10" runat="server" Text="Father's Name: "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UpdateFather1" runat="server" Height="25px" Width="243px" ></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Button10" runat="server" Text="Update" OnClick="Button10_Click" />
                                </div>

                                <div id="Div8" runat="server">
                                    <asp:Label ID="Label11" runat="server" Text="Mother's Name: "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UpdateMother1" runat="server" Height="25px" Width="243px" ></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Button11" runat="server" Text="Update" OnClick="Button11_Click" />
                                </div>

                                <div id="Div9" runat="server">
                                    <asp:Label ID="Label12" runat="server" Text="ContactNumber: "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UpdateContact1" runat="server" Height="25px" Width="243px" ></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Button12" runat="server" Text="Update" OnClick="Button12_Click" />
                                </div>

                                <div id="Div10" runat="server">
                                    <asp:Label ID="Label13" runat="server" Text="Address: "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UpdateAddress1" runat="server" Height="25px" Width="243px" ></asp:TextBox>

                                    &nbsp;&nbsp;&nbsp;

                                    <asp:Button ID="Button13" runat="server" Text="Update" OnClick="Button13_Click" />
                                </div>
                            
                           
                                <marquee direction="left" scrollamount="10"><asp:Label ID="Label14" runat="server" Text=""></asp:Label></marquee>
                            </div>
                    </div>
                </div>

                


              </div>
            </div>
    </form>
</body>
</html>
