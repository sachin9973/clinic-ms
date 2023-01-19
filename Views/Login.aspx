<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ClinicHospitalMS.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Liab/Bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../CSS/Login.css" />
</head>
<body style="background-image: url(../Assets/Images/Login1.jpg); background-size: cover">
    <div class="container-fluid">
        <div class="row" style="height: 100px"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5">
                <h1 class="lForm pl-2">Login Form</h1>
                <form id="form1" runat="server">
                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <asp:TextBox ID="txtName" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email address</label>
                        <asp:TextBox ID="txtEmail" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtpass" class="form-label">Password</label>
                        <asp:TextBox ID="txtPassword" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:DropDownList ID="DropDownList1" runat="server" Class="form-control">
                            <asp:ListItem Value="0">-- Select Role --</asp:ListItem>
                            <asp:ListItem Value="1">Admin</asp:ListItem>
                            <asp:ListItem Value="2">User</asp:ListItem>
                            <asp:ListItem Value="3">Doctor</asp:ListItem>

                        </asp:DropDownList>
                    </div>
                    <div class="d-grid">
                        <asp:Button ID="btn_Login" class="btn btn-primary " runat="server" Text="Login" OnClick="btn_Login_Click" />
                    </div>
                    <br />
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-6">
                                <asp:Button ID="btn_Forget" class="form-control" runat="server" Text="Forget Password" />
                            </div>
                            <div class="col-6">
                                <asp:Button ID="btn_Create" class="form-control" runat="server" Text="Create Account" />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>


</body>
</html>
