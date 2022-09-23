<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" UnobtrusiveValidationMode="None"
    Inherits="Project1.LoginPage" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Login Page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                background: linear-gradient(to right, pink, paleturquoise);

            }

            .login-form {

                width: 340px;
                margin: 50px auto;
                font-size: 15px;
            }

            .login-form form {
                border-radius: 15px;
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .login-form h2 {
                margin: 0 0 15px;
            }

            .form-control,
            .btn {
                min-height: 38px;
                border-radius: 2px;
            }

            .btn {
                border-radius: 8px;
                border-radius: 8px;
                font-size: 15px;
                font-weight: bold;
                background: paleturquoise !important;
                color: #FF4EAC;
            }
        </style>
    </head>

    <body>
        <div class="login-form">
            <form id="form1" runat="server">
                <h2 class="text-center">Log in</h2>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>

                    <tr>

                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="User Name" autocomplete="off"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style3">
                            <div class="form-group">
                                <asp:TextBox ID="usertxt" class="form-control" runat="server"
                                    AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <br />
                        </td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style3">
                            <div class="form-group">
                                <asp:TextBox ID="passtxt" class="form-control" runat="server" TextMode="Password">
                                </asp:TextBox>
                            </div>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="Button2" class="btn btn-dark btn-block" runat="server" Text="Login"
                                OnClick="Button2_Click" />
                            &nbsp;<br />
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Purple"
                                NavigateUrl="~/RegistrationPage.aspx">Create Account</asp:HyperLink>
                            &nbsp;
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </form>
        </div>
    </body>

    </html>