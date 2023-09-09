<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="School.aspx.cs" Inherits="SchoolManagement.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SchoolManagement</title>
    <style>
        body
        {
            background-color: rgba(0,0,0,0.81);
        }

        .container
        {
            background-image: url(dpsscho.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            height: 100vh;
        }

        .container::before
        {
            content: "";
            background-color:rgba(0,0,0,0.81);
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
            height: 50px;
            width: 90px;
        }

        .nav .links
        {
            float:right;
            text-transform: uppercase;
            
        }

        .links a
        {
            
            text-decoration:none;
            color: aliceblue;
            margin-right:40px;
            font-family: Rockwell;
            letter-spacing: 1px;
        }

        .links a:hover
        {
            color:#000;
            font-weight: 300;
        }

        .links .students
        {
            position:relative;
            display:inline;
        }

        .links .students .students1
        {
            position: absolute;
            display: none;
            padding: 30px;
            background: rgba(255,255,255,0.5);
            border: 3px solid rgba(255,255,255,0.6);
            border-radius: 10px;
        }

        .links .students .students1 a
        {
            position: relative;
            padding-left:10px;
            padding-right:10px;
            color:aliceblue;
            letter-spacing: 1px;
            margin-top:10px;
            border-bottom: 3px solid rgba(255,255,255,0.5);
            display: block;
            text-transform: uppercase;
}
        .links .students .students1 a:hover
        {
            color: black;

        }

        

        .links .students:hover .students1
        {
            display: block;
        }

        .slo
        {
            margin-top: 200px;
            margin-left: 20px;
            color: aliceblue;
            float: left;
            font-family: Rockwell;
            position: absolute;
        }

        .s2
        {
            font-size: 20px;
            margin-left: 120px;
        }

        

        .s1,.s3
        {
            color: rgb(243, 62, 18);
            font-size: 40px;
        }

        

        .wave {
            text-align:center;
            position: absolute;
            -webkit-box-reflect: below -12px linear-gradient(transparent, rgba(0, 0, 0, .2));
            text-align: center;
            font-family: rockwell condensed;
            text-transform: uppercase;
            font-size:  60px;
        }

.wave span {
    margin-top: 500px;
    position: relative;
    display: inline-block;
    color: #fff;
    animation: animate 2s ease-in-out infinite;
    animation-delay: calc(.1s*var(--i));
}

@keyframes animate {
    0% {
        transform: translateY(0px);
    }

    20% {
        transform: translateY(-20px);
    }

    40%,
    100% {
        transform: translateY(0px);
    }
}

        

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        

        <div class="container">

            <div class="nav">
            
            <a href="School.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="dpslogo.jpg" /></a>
            
            <div class="links">
            <div class="students">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">student admission</asp:HyperLink>
                <div class="students1">
                    <a href="stuadmission.aspx">admission</a>
                    <a href="studentinfo.aspx">information</a>
                    <a href="updatestu.aspx">update</a>
                    <a href="deletestuinfo.aspx">delete</a>
                    <a href="Classlist.aspx">class list</a>
                </div>
            </div>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/teachers.aspx">teachers</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/principal.aspx">principal</asp:HyperLink>
            </div>
           
        </div>

            <div class="slo">
                <span class="s1">Let's build</span><br /> <span class="s2">your future</span> <br /> <span class="s3">together</span>
            </div>
            

            
            <div class="wave">
                <span style="--i:1">delhi</span>
                <span style="--i:2"></span>
                <span style="--i:3">public</span>
                <span style="--i:4"> </span>
                <span style="--i:5">school</span>
                
            </div>
        
        </div>
    </form>
</body>
</html>
