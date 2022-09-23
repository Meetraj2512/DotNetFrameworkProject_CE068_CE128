<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userDetails.aspx.cs"
    Inherits="Food_Delivery_System.userDetails" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">

        <title>User Details</title>
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
        <form id="form1" runat="server">
            <div>
                <center>
                    <h2>Hey <b>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </b></h2>
                    <h2><b>&nbsp;Your Account Details :</b></h2><br />
                </center>
                <center>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="16px"
                        OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="961px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </center>
                <br />
                <center>
                    <asp:Button ID="btn_home" class="btn btn-dark" runat="server" Text="Home" OnClick="Button1_Click" />
                </center>
                <br />
            </div>
        </form>
    </body>

    </html>