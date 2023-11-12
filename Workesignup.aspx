<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workesignup.aspx.cs" Inherits="ControlSys.Workesignup" MasterPageFile="~/NavBar.Master" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="content1">
    <style>
   

        .mc1 {
            width: 400px;
        }

        .mbt1 {
            background-color: rgba(30, 31, 33);
            color: white;
            padding-left: 8rem;
            padding-right: 7.3rem;
            width:400px;
        }

        .wimage img{
            width:500px;
            
           
            
        }
        .main{
             width:1000px;
              box-shadow: 0 3px 10px rgb(0 0 0 / 0.5);
             margin-left:15rem;
             margin-top:3rem;
             border-radius:15px;

        }
        .stext{
            font-weight:bold;
            font-size:25px;
            font-style:italic
        }
        .wkrimag{
           /*border-radius:15px 15px 15px 0;*/
           
            /*width: 100vw;
            height: 65vh; */
        }
    </style>
   <div class="d-flex main">
       <div class="d-block">
       <div class="wimage">
           <img src="Images/3-Vocational-training-_Programs_Carpentry_croped.jpg" alt="worker" class="wkrimag"/>
       </div> 
        <div class="wimage">
           <img src="Images/203.jpg" alt="worker" class="wkrimag"/>
       </div> 
           </div>
       
       
       <div class="sform">

            <div class="box2">
                <p class="ms-5 mt-3 stext">Sign Up To Work With US</p>
            <div class="rel">
                <asp:TextBox ID="txtwname" runat="server" class="form-control mc1 ms-5 mb-4 mt-3" placeholder="Name"></asp:TextBox>
                <asp:TextBox ID="txtwemail" runat="server" class="form-control mc1 ms-5 mb-4 " placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="txtwmobile" runat="server" class="form-control mc1 ms-5 mb-4 " placeholder="Mobile"></asp:TextBox>
               <asp:DropDownList ID="drpworkerlocation" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Work Typw">

                </asp:DropDownList>
                <asp:DropDownList ID="drpworktype" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Work Typw">

                </asp:DropDownList>
                <asp:DropDownList ID="drpexpe" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Work Typw">

                </asp:DropDownList>
                <asp:DropDownList ID="drprate" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Work Typw">

                </asp:DropDownList>
                <asp:TextBox ID="txtwpsd" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="txtwconpsd" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>


            </div>
            <asp:Button ID="btnreg" runat="server" Text="Register" CssClass="btn btn-dark me-5 mt-2 mbt1 ms-5" OnClick="btnreg_Click" />
            <p class="ms-5 mt-3">Allready Have An Account ?<span class="ms-2 line" id="regsp">Login</span></p>

        </div>

       </div>
   </div>
</asp:Content>