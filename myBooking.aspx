<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myBooking.aspx.cs" Inherits="ControlSys.myBooking" MasterPageFile="~/NavBar.Master" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="contone">
    <div class="booking">
        <div class="pending">
            <h4 class="font-weight-bold ms-5 mt-3">Pending Works</h4>
             <asp:GridView ID="grdmypending" runat="server" CssClass="table container-lg mt-3" AutoGenerateColumns="false"
        DataKeyNames="Booking_id"
        AllowPaging="true" PageSize="6" OnPageIndexChanging="grdmypending_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="Worker_Name" HeaderText="Name" />
            <asp:BoundField DataField="Worker_Email" HeaderText="Email" />
            <asp:BoundField DataField="Worker_rate" HeaderText="Rate" />
            <asp:BoundField DataField="Worker_Location" HeaderText="Location" />
            <asp:BoundField DataField="Worker_Mobile" HeaderText="Mobile" />
        </Columns>
         <PagerStyle HorizontalAlign="Right" CssClass="GridPager"/>
    </asp:GridView>
        </div>
        <div class="compleate">
            <h4 class="font-weight-bold ms-5 mt-5">Compleate Works</h4>
                 <asp:GridView ID="grdmycompleate" runat="server" CssClass="table container-lg mt-3" AutoGenerateColumns="false"
        DataKeyNames="Booking_id"
        AllowPaging="true" PageSize="6" OnPageIndexChanging="grdmycompleate_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="Worker_Name" HeaderText="Name" />
            <asp:BoundField DataField="Worker_Email" HeaderText="Email" />
            <asp:BoundField DataField="Worker_rate" HeaderText="Rate" />
            <asp:BoundField DataField="Worker_Location" HeaderText="Location" />
            <asp:BoundField DataField="Worker_Mobile" HeaderText="Mobile" />
             <asp:BoundField DataField="Job_done_time" HeaderText="Compleate Time" />
        </Columns>
         <PagerStyle HorizontalAlign="Right" CssClass="GridPager"/>
    </asp:GridView>
        </div>
    </div>
</asp:Content>