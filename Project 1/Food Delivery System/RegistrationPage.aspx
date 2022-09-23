<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" UnobtrusiveValidationMode="None"
    Inherits="Project1.RegistrationPage" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Registration Form</title>
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
                width: 540px;
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

            .auto-style1 {
                height: 214px;
                width: 480px;
            }

            .auto-style2 {
                height: 24px;
            }
        </style>
    </head>

    <body>
        <div class="login-form">
            <form id="form1" runat="server">
                <h2 class="text-center">REGISTRATION PAGE</h2>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <div class="form-group">
                                <asp:TextBox ID="nametxt" class="form-control" runat="server"
                                    AutoCompleteType="Disabled" Width="229px"></asp:TextBox>
                            </div>
                        </td>
                        <td class="auto-style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="nametxt" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Name
                                is Required !!</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <div class="form-group">
                                <asp:TextBox ID="emailtxt" runat="server" class="form-control" TextMode="Email"
                                    AutoCompleteType="Disabled" Width="229px"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="emailtxt" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Email
                                ID is required !!</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>
                        </td>
                        <td>
                            <div class="form-group">
                                <asp:TextBox ID="mobtxt" runat="server" class="form-control" AutoCompleteType="Disabled"
                                    Width="229px"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="mobtxt" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Mobile
                                Number is required !!</asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                ControlToValidate="mobtxt" ErrorMessage="RegularExpressionValidator"
                                ValidationExpression="^([0-9]{10})$" ForeColor="Red">Please Enter a valid Mobile Number
                                !!</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <div class="form-group">
                                <asp:TextBox ID="passtxt" runat="server" class="form-control" TextMode="Password"
                                    AutoCompleteType="Disabled" Width="229px"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="passtxt" ErrorMessage="RequiredFieldValidator" ForeColor="Red">
                                Password is required !!</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                ErrorMessage="RegularExpressionValidator" ForeColor="Red"
                                ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
                                ControlToValidate="passtxt">Enter valid password of minimum 8 characters {eg : pass@123
                                }</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            <div class="form-group">
                                <asp:TextBox ID="addresstxt" runat="server" class="form-control"
                                    AutoCompleteType="Disabled" Height="50px" Width="229px"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="addresstxt" ErrorMessage="RequiredFieldValidator" ForeColor="Red">
                                Address is required !!</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <div class="row">
                    <div class="col-md-6">
                        <asp:Button ID="Button1" class="btn btn-dark btn-block" runat="server" Text="Register"
                            OnClick="Button1_Click" />
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="Reset_Button" class="btn btn-dark btn-block" runat="server" Text="Reset"
                            OnClientClick="this.form.reset();return false;" />
                    </div>
                </div>
                <br />
                <asp:Label ID="Label6" runat="server" ForeColor="Green"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/LoginPage.aspx"> Log In
                </asp:HyperLink>
                <br />
            </form>
        </div>
    </body>

    </html>