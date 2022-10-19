<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp_Insert_.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image: url(Background/small-memory-lp-1280x1024.jpg);
            background-size: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 771px; background-image: none; background-repeat: no-repeat; background-attachment: fixed;">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RADNICI %>" DeleteCommand="DELETE FROM [RADNIK] WHERE [ID] = @ID" InsertCommand="INSERT INTO [RADNIK] ([ID], [IME], [PREZIME], [POL], [LICNI_DOHODAK]) VALUES (@ID, @IME, @PREZIME, @POL, @LICNI_DOHODAK)" SelectCommand="SELECT * FROM [RADNIK]" UpdateCommand="UPDATE [RADNIK] SET [IME] = @IME, [PREZIME] = @PREZIME, [POL] = @POL, [LICNI_DOHODAK] = @LICNI_DOHODAK WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="IME" Type="String" />
                    <asp:Parameter Name="PREZIME" Type="String" />
                    <asp:Parameter Name="POL" Type="String" />
                    <asp:Parameter Name="LICNI_DOHODAK" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="IME" Type="String" />
                    <asp:Parameter Name="PREZIME" Type="String" />
                    <asp:Parameter Name="POL" Type="String" />
                    <asp:Parameter Name="LICNI_DOHODAK" Type="Int32" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 908px; top: 552px; position: absolute; height: 50px; width: 179px" Text="INSERT" />
            <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 657px; top: 628px; position: absolute; height: 19px" Text="POL"></asp:Label>
            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 583px; top: 686px; position: absolute" Text="LICNI DOHODAK"></asp:Label>
            <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 637px; top: 577px; position: absolute" Text="PREZIME"></asp:Label>
            <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 665px; top: 530px; position: absolute" Text="IME"></asp:Label>
            <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 664px; top: 478px; position: absolute; height: 18px; width: 27px; right: 508px" Text="ID"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 712px; top: 475px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 713px; top: 526px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 715px; top: 685px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 714px; top: 576px; position: absolute"></asp:TextBox>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 154px; top: 101px; position: absolute; height: 298px; width: 986px" BorderStyle="Inset">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="ID" SortExpression="ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IME" SortExpression="IME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IME") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("IME") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PREZIME" SortExpression="PREZIME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PREZIME") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("PREZIME") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="POL" SortExpression="POL">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="POL" DataValueField="POL" SelectedValue='<%# Bind("POL") %>'>
                                <asp:ListItem>Muski</asp:ListItem>
                                <asp:ListItem>Zenski</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("POL") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LICNI_DOHODAK" SortExpression="LICNI_DOHODAK">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LICNI_DOHODAK") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("LICNI_DOHODAK") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:DropDownList ID="DropDownList3" runat="server" style="z-index: 1; left: 715px; top: 624px; position: absolute; height: 21px; width: 134px">
                <asp:ListItem>Muski</asp:ListItem>
                <asp:ListItem>Zenski</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
