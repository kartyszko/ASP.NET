<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addContent.aspx.cs" Inherits="WebApplication1.addContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 193px;
        }
        .auto-style3 {
            width: 300px;
        }
        
    </style>
    <link href="Style2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="addcontent">
        <p class="new">Dodaj ogłoszenie</p>
        <table>
            <tr>
                <td class="auto-style2">ID</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtID" runat="server" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Data</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtDate" runat="server" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Treść ogłoszenia</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtAd" runat="server" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Podpis</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtYourName" runat="server" Width="500px"></asp:TextBox>
                </td>
            </tr>
        </table>

        <asp:Button CssClass="button" ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Prześlij" Width="200px"/>
    </div>

    <div class="yourtable">
        <p class="new">Twoje ogłoszenia</p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Ads %>" DeleteCommand="DELETE FROM [tableAd] WHERE [ID] = @original_ID AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([ogloszenie] = @original_ogloszenie) OR ([ogloszenie] IS NULL AND @original_ogloszenie IS NULL)) AND (([podpis] = @original_podpis) OR ([podpis] IS NULL AND @original_podpis IS NULL))" InsertCommand="INSERT INTO [tableAd] ([ID], [date], [ogloszenie], [podpis]) VALUES (@ID, @date, @ogloszenie, @podpis)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tableAd]" UpdateCommand="UPDATE [tableAd] SET [date] = @date, [ogloszenie] = @ogloszenie, [podpis] = @podpis WHERE [ID] = @original_ID AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([ogloszenie] = @original_ogloszenie) OR ([ogloszenie] IS NULL AND @original_ogloszenie IS NULL)) AND (([podpis] = @original_podpis) OR ([podpis] IS NULL AND @original_podpis IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_date" Type="String" />
                <asp:Parameter Name="original_ogloszenie" Type="String" />
                <asp:Parameter Name="original_podpis" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="ogloszenie" Type="String" />
                <asp:Parameter Name="podpis" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="ogloszenie" Type="String" />
                <asp:Parameter Name="podpis" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_date" Type="String" />
                <asp:Parameter Name="original_ogloszenie" Type="String" />
                <asp:Parameter Name="original_podpis" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" class="tabletwo">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="ogloszenie" HeaderText="ogloszenie" SortExpression="ogloszenie" />
                <asp:BoundField DataField="podpis" HeaderText="podpis" SortExpression="podpis" />
            </Columns>
        </asp:GridView>
    </div>



</asp:Content>
