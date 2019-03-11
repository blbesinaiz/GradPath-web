<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customize.aspx.cs"
    Inherits="SimpleTabControl.SimpleTabControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Student Settings </title>
    <style type="text/css">
        .Initial
        {
            display: block;
            padding: 4px 18px 4px 18px;
            float: left;
            background: url("../Images/InitialImage.png") no-repeat right top;
            color: Black;
            font-weight: bold;
        }
        .Initial:hover
        {
            color: cadetblue;
            background: url("../Images/SelectedButton.png") no-repeat right top;
        }
        .Clicked
        {
            float: left;
            display: block;
            background: url("../Images/SelectedButton.png") no-repeat right top;
            padding: 4px 18px 4px 18px;
            color: Black;
            font-weight: bold;
            color: brown
        }
    </style>
</head>
<body style="font-family: tahoma">
    <form id="form1" runat="server">
    <table width="80%" align="center">
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button Text="Modify" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
                    OnClick="Tab1_Click" />
                <asp:Button Text="Previous Courses" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                    OnClick="Tab2_Click" />
                <asp:Button Text="Contact Advisor" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
                    OnClick="Tab3_Click" />
                <asp:MultiView ID="MainView" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                            <tr>
                                <td>
                                    <h3>
                                        <span>Modify Settings </span>
                                    </h3>
                                    <asp:Label ID="Avatar" runat="server" Text="Avatar: "></asp:Label> <br /> 
                                    <asp:Image ID="img_avatar" runat="server" Height="75px" style="margin-left: 133px" Width="119px" />
                                    <br />
                                    <br />

                                    <asp:Label ID="Name" runat="server" Text="Name: "></asp:Label>
                                    <asp:TextBox ID="txt_name" runat="server" style="margin-left: 14px" Width="206px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="ID" runat="server" Text="ID: "></asp:Label>
                                    <asp:TextBox ID="txt_id" runat="server" style="margin-left: 38px" Width="206px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Email" runat="server" Text="Email: "></asp:Label>
                                    <asp:TextBox ID="txt_email" runat="server" style="margin-left: 17px" Width="206px"></asp:TextBox>
                                    <br />
                                    <br />
                                    Curriculum Track:
                                    <asp:DropDownList ID="Track_DropDown" runat="server" Height="25px" style="margin-left: 13px" Width="206px">
                                        <asp:ListItem>BS.CSC.IAT</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="NewPassword" runat="server" Text="New Password: "></asp:Label>
                                    <asp:TextBox ID="txt_newPassword" runat="server" style="margin-left: 30px" Width="206px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="ConfirmPassword" runat="server" Text="Confirm Password: "></asp:Label>
                                    <asp:TextBox ID="txt_confirmPassword" runat="server" Width="206px" style="margin-left: 6px"></asp:TextBox>
                                    <br />
                                    <br />
                                     <asp:Button ID="butt_update1" runat="server" Text="Update" />
                                    <br />
                                    <br />
                                    <br />
                                   
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                            <tr>
                                <td>
                                    <br />
                                    <br />
                                    <h3>
                                        Previous Classes Taken<span> </span>
                                    </h3>

                                    <br />

                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                            <tr>
                                <td>
                                    <br />
                                    <h3>
                                        <span>Contact Advisor </span>
                                    </h3>
                                    <asp:Label ID="Label3" runat="server" Text="Subject: "></asp:Label>
                                    <asp:TextBox ID="TextBox3" runat="server" Width="340px"></asp:TextBox>

                                    <br />

                                    <br />

                                    <asp:Label ID="Label4" runat="server" Text="Message: "></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox4" runat="server" Height="150px" Width="415px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
