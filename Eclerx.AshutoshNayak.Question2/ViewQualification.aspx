<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewQualification.aspx.cs" Inherits="Eclerx.AshutoshNayak.Question2.ViewQualification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td><label>ViewQualificaion</label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAdd" Text="AddQualification" runat="server" style="text-decoration:none" OnClick="btnAdd_Click" /></td>
                </tr>

            </table>
        </div>
        <div>
           <Columns>
                    <asp:TemplateField HeaderText="QualificationId">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("QualificationId") %>' ID="lblQualificationId" runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("QualificationId") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="QualificationName">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("QualificationName") %>' ID="lblQualificationName" runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtQualificationName" runat="server" Text='<%#Bind("QualificationName") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("Institute") %>' ID="lblCity" runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtInstitute" Text='<%#Bind("Institute") %>' runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("YearOfPassing") %>' ID="LblYearOfPassing" runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtYearofPass" Text='<%#Bind("YearofPassing") %>' runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action(s)">
                        <ItemTemplate>
                            <asp:Button Text="Edit" ID="BtnEdit" runat="server" CommandName="Edit" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button Text="Update" ID="BtnUpdate" runat="server" CommandName="Update" />
                            <asp:Button Text="Cancel" ID="BtnCancel" runat="server" CommandName="Cancel" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
        </div>
    </form>
</body>
</html>
