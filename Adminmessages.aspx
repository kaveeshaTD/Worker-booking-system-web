<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminmessages.aspx.cs" Inherits="ControlSys.Adminmessages" MasterPageFile="~/dashboard.Master" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="contone">
     <style>
            body
    {
        font-family: Arial;
       
    }
    .GridPager a, .GridPager span
    {
        display: block;
        height: 25px;
        width: 25px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
    }
    .GridPager a
    {
        background-color: #f5f5f5;
        color: #969696;
        border: 1px solid #969696;
    }
    .GridPager span
    {
        background-color: #A1DCF2;
        color: #000;
        border: 1px solid #3AC0F2;
    }

    </style>
     <asp:GridView ID="grdmessages" runat="server" CssClass="table container-lg mt-5" AutoGenerateColumns="false"
        DataKeyNames="Id"
        OnRowCommand="grdmessages_RowCommand" AllowPaging="true" PageSize="6" OnPageIndexChanging="grdmessages_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="u_name" HeaderText="Name" />
            <asp:BoundField DataField="U_email" HeaderText="Email" />
            <asp:BoundField DataField="u_Message" HeaderText="Message" />
              <asp:TemplateField HeaderText="Respond">
            <ItemTemplate>
                <asp:Button ID="btnUpdate" runat="server" Text="Reply" CommandName="UpdateItem" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-primary"/>
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>
         <PagerStyle HorizontalAlign="Right" CssClass="GridPager"/>
    </asp:GridView>
</asp:Content>