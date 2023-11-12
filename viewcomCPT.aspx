<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewcomCPT.aspx.cs" Inherits="ControlSys.viewcomCPT" MasterPageFile="~/dashboard.Master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="cont">
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
     <asp:GridView ID="grdviewcptr" runat="server" AutoGenerateColumns="false" CssClass="table container"
        DataKeyNames="Booking_id"
         AllowPaging="true" PageSize="6"
         OnPageIndexChanging="grdviewcptr_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="Booked_By_Name" HeaderText="Name" />
            <asp:BoundField DataField="Booked_By_Email" HeaderText="Email" />
            <asp:BoundField DataField="Booked_By_location" HeaderText="Location" />
            <asp:BoundField DataField="Booked_By_Mobile" HeaderText="Mobile" />
            <asp:BoundField DataField="Booked_date" HeaderText="Booked Date" />
        <asp:BoundField DataField="Job_done_time" HeaderText="Job Compleate Time" />
        </Columns>
         <PagerStyle HorizontalAlign="Right" CssClass="GridPager"/>
    </asp:GridView>
</asp:Content>

