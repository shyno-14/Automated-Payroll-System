<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Beflogin.aspx.vb" Inherits="AutomatedPayrollSystem.Beflogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Services</title>
    <style>
        body{
            background-image: url('https://snz04pap002files.storage.live.com/y4mePmRsiPcOXcfns_-SUM5tWfHzAh8uvANUvCJhFuJuadvaQCFKo1zPa7w7tMpej9SoSqOmZv4CSkXYxwuqTV1L4mtRGnNqGMNkMb8SOKaLzkttBbZVj-4KdzrbimI1kJPl2J3l-9NarDTpYpzV6naveJLKqR5GalHK6pcOAgyO8Y5D110upnkezsepvBuzQCJ?width=5400&height=3600&cropmode=none');
            background-position: 50% 50%;
            background-repeat: no-repeat;
            background-size: cover;
            transform-origin: center;
            scale: 1;
  }
        .heading {
            font-size: 36px;
            margin-bottom: 30px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }
        .card-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .card {
            margin: 20px;
            padding: 20px;
            border-radius: 15px;
            transition: transform 0.3s ease;
            width: 250px; /* Adjust card width */
            height: 350px; /* Adjust card height */
            background: white;
            border: 1px solid #ccc;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            opacity:0.8;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card img {
            width: 250px; /* Adjust image size */
            height: 190px; /* Adjust image size */
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .card h3 {
            font-size: 20px;
            color: #333;
            margin: 0;
        }
        .card a {
            text-decoration: none;
            color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div id="container">
            <div class="heading">Choose your role</div>
        </div>--%>
        <div class="card-container">
            <div class="card">
                <asp:LinkButton ID="AdminButton" runat="server">
                    <img src="https://www.pngkit.com/png/detail/263-2636288_admin-premiumcare-female-administrator-icon.png" alt="Admin" />
                    <h3><center>ADMIN</center></h3>
                </asp:LinkButton>
            </div>
            <div class="card">
                <asp:LinkButton ID="EmployeeButton" runat="server">
                    <img src="https://th.bing.com/th/id/OIP.iAUZM8K6qaoaqtbPD6vwgQHaGo?w=224&h=200&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="Employee" />
                    <h3><center>EMPLOYEE</center></h3>
                </asp:LinkButton>
            </div>
          
        </div>
    </form>
</body>
</html>
