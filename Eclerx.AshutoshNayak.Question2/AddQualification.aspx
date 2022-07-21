<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQualification.aspx.cs" Inherits="Eclerx.AshutoshNayak.Question2.AddQualification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .module{
               
    width:300px;
    padding:30px 20px;
    position:center;
    display:block;
    margin:25px auto;
    border:solid;
    border-radius:25px;
    box-shadow:0 0 15px #808080;
        }
        .des{
            
            text-align:center
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="module">
            <table>
                <tr>
                    <td><label>Qualification Name</label></td>
                    <td>
                        <asp:TextBox ID="TxtQualificationName" runat="server" /><br />
                  <asp:RequiredFieldValidator ID="RfvFirstName" runat="server" ErrorMessage="Please enter the Qualification Name" ControlToValidate="TxtQualificationName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td><label>Institute</label></td>
                    <td>
                        <asp:TextBox ID="TxtInstitute" runat="server" />
               <asp:RequiredFieldValidator ID="RfvInstitute" runat="server" ErrorMessage="Please enter the Institute Name" ControlToValidate="TxtInstitute" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><label>YearOfPassing</label></td>
                    <td>
                        <asp:TextBox ID="TxtYearOfPass" runat="server" />
                      <asp:RequiredFieldValidator ID="RfvYearOfPassing" runat="server" ErrorMessage="Please enter the Year of Passing" ControlToValidate="TxtYearOfPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><label>University</label></td>
                    <td>
                        <asp:TextBox ID="TxtUniversity" runat="server" />
                        <asp:RequiredFieldValidator ID="RfvUniversity" runat="server" ErrorMessage="Please enter The university Name" ControlToValidate="TxtUniversity" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="des">
                        <asp:Button ID="BtnCreate" Text="Create" runat="server" OnClick="BtnCreate_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="BtnView" Text="View Qualification" PostBackUrl="~/ViewQualification.aspx" runat="server" style="text-decoration:none">View Qualification</asp:LinkButton></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
