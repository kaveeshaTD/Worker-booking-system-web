<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BOOKGardenMaker.aspx.cs" Inherits="ControlSys.BOOKGardenMaker" MasterPageFile="~/NavBar.Master" %>

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
     <asp:GridView ID="grdgardenmaker" runat="server" CssClass="table container-lg mt-5" AutoGenerateColumns="false"
        DataKeyNames="Id"
        OnRowCommand="grdgardenmaker_RowCommand"
         AllowPaging="true" PageSize="6"
         OnPageIndexChanging="grdgardenmaker_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="First_Name" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
            <asp:BoundField DataField="U_location" HeaderText="Location" />
            <asp:BoundField DataField="Work_type" HeaderText="Category" />
            <asp:BoundField DataField="No_of_expeirence" HeaderText="Years Of Experience" />
            <asp:BoundField DataField="rate_per_hour" HeaderText="Hourly rate" />
              <asp:TemplateField HeaderText="Book Wroker">
            <ItemTemplate>
                <asp:Button ID="btnUpdate" runat="server" Text="Book" CommandName="UpdateItem" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-primary"/>
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>
         <PagerStyle HorizontalAlign="Right" CssClass="GridPager"/>
    </asp:GridView>
</asp:Content>