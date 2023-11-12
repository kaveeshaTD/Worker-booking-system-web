<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="ControlSys.Mainpage" MasterPageFile="~/NavBar.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="content1" runat="server">
    <%--<script src="Javascript.js"></script>--%>
    <style>
        body {
            font-family: Arial;
        }
      .service-start span {
        background: rgba(255,165,0,.2);
        color: orange;
        border-radius: .5rem;
        padding: 0.2rem 1rem;
    }
      .service-start{
    margin-top:9rem;
    text-align:center;
    font-weight:bold;
    margin-bottom:2rem;
}
        .box {
            width: 400px;
            height: 320px;
            box-shadow: 0 3px 10px rgb(0 0 0 / 0.8);
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            border-radius: 15px;
            background-color: white;
            z-index: 1000;
        }

        .box2 {
            width: 400px;
            height: 580px;
            box-shadow: 0 3px 10px rgb(0 0 0 / 0.8);
            position: absolute;
            top: 55%;
            left: 50%;
            transform: translate(-50%,-50%);
            border-radius: 15px;
            background-color: white;
            z-index: 1000;
        }

        .mc {
            width: 300px;
            padding-left: 40px;
        }

        .mc1 {
            width: 300px;
        }

        .rel {
            position: relative;
        }

        .sp {
            background-color: rgba(30, 31, 33);
            color: white;
            position: absolute;
            left: 35%;
            top: -20px;
            font-size: 28px;
            font-weight: bold;
            padding-left: 12px;
            padding-right: 12px;
            border-radius: 5px;
            font-family: Arial;
        }

        .lock {
            position: absolute;
            top: 5px;
            left: 53px;
        }

            .lock img {
                width: 25px;
            }

        .plock {
            position: absolute;
            top: 66px;
            left: 53px;
        }

            .plock img {
                width: 25px;
            }

        .mbt {
            background-color: rgba(30, 31, 33);
            color: white;
            padding-left: 8rem;
            padding-right: 8rem;
        }

        .mbt1 {
            background-color: rgba(30, 31, 33);
            color: white;
            padding-left: 8rem;
            padding-right: 7.3rem;
        }

        .rtest {
            position: absolute;
            bottom: 10px;
            margin-left: 115px;
        }

        .line {
            cursor: pointer;
        }

        .imgs img {
            width: 12%;
            cursor: pointer;
        }

        .imgs {
            margin-left: 8rem;
        }

        .close img {
            width: 6%;
            margin-top: 8px;
            padding-right: 5px;
        }
        .cicon{
            padding-right:20px;
            padding-top:10px;
            font-size:20px;
            font-weight:bold;
            color:black;
        }
      
        .btnmores{
           
    margin-left:69rem;
    width:37px;

}
        .bshado{
              box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
        }
      
        /*services end*/

        /*contact*/
        #contact {
    width: 100%;
    height: 100%;
}

.bck-grond {
    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
    border-radius: 20px;
    background: rgb(255, 255, 255);
}

.section-header {
    text-align: center;
    font-weight: bold;
    margin-top: 6rem;
    text-transform: uppercase;
}

.contact-wrapper {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    margin: 0 auto;
    padding-top: 60px;
    padding-bottom: 60px;
    padding-left: 70px;
    padding-right: 70px;
    position: relative;
    max-width: 1040px;
}

/* Left contact page */
.form-horizontal {
    /*float: left;*/
    max-width: 400px;
    font-family: 'Lato';
    font-weight: 400;
}

.form-control,
textarea {
    max-width: 400px;
    color: #000000;
    letter-spacing: 1px;
}

.send-button {
    /* margin-top: 15px;
    height: 34px;
    width: 400px;
    overflow: hidden;
    transition: all .2s ease-in-out; */
    width: 100%;
}

.alt-send-button {
    width: 400px;
    height: 34px;
    transition: all .2s ease-in-out;
}

.my-form {
    width: 400px;
    background: rgb(255, 255, 255);
}

.send-text {
    display: block;
    margin-top: 10px;
    font: 700 12px 'Lato', sans-serif;
    letter-spacing: 2px;
}

.mybtnsend {
    width: 400px;
    height: 60px;
}

/* Begin Right Contact Page */
.direct-contact-container {
    max-width: 400px;
}

/* Location, Phone, Email Section */
.contact-list {
    list-style-type: none;
    margin-left: -30px;
    padding-right: 20px;
}

.list-item {
    line-height: 4;
    color: #aaa;
}

.contact-text {
    font: 300 18px 'Lato', sans-serif;
    letter-spacing: 1.9px;
    color: #bbb;
}

.place {
    margin-left: 62px;
}

.phone {
    margin-left: 56px;
}

.gmail {
    margin-left: 53px;
}

.contact-text a {
    color: #bbb;
    text-decoration: none;
    transition-duration: 0.2s;
}

    .contact-text a:hover {
        color: #fff;
        text-decoration: none;
    }


/* Social Media Icons */
.social-media-list {
    position: relative;
    font-size: 22px;
    text-align: center;
    width: 100%;
    margin: 0 auto;
    padding: 0;
}

    .social-media-list li a {
        color: #fff;
    }

    .social-media-list li {
        position: relative;
        display: inline-block;
        height: 60px;
        width: 60px;
        margin: 10px 3px;
        line-height: 60px;
        border-radius: 50%;
        color: #fff;
        background-color: rgb(27,27,27);
        cursor: pointer;
        transition: all .2s ease-in-out;
    }

        .social-media-list li:after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 60px;
            height: 60px;
            line-height: 60px;
            border-radius: 50%;
            opacity: 0;
            box-shadow: 0 0 0 1px #fff;
            transition: all .2s ease-in-out;
        }

        .social-media-list li:hover {
            background-color: #fff;
        }

            .social-media-list li:hover:after {
                opacity: 1;
                transform: scale(1.12);
                transition-timing-function: cubic-bezier(0.37,0.74,0.15,1.65);
            }

            .social-media-list li:hover a {
                color: #000;
            }

.copyright {
    font: 200 14px 'Oswald', sans-serif;
    color: #555;
    letter-spacing: 1px;
    text-align: center;
}

hr {
    border-color: rgba(255,255,255,.6);
}

/* Begin Media Queries*/
@media screen and (max-width: 850px) {
    .contact-wrapper {
        display: flex;
        flex-direction: column;
    }

    .direct-contact-container, .form-horizontal {
        margin: 0 auto;
    }

    .direct-contact-container {
        margin-top: 60px;
        max-width: 300px;
    }

    .social-media-list li {
        height: 60px;
        width: 60px;
        line-height: 60px;
    }

        .social-media-list li:after {
            width: 60px;
            height: 60px;
            line-height: 60px;
        }
}

@media screen and (max-width: 569px) {

    .direct-contact-container, .form-wrapper {
        float: none;
        margin: 0 auto;
    }

    .form-control, textarea {
        margin: 0 auto;
    }


    .name, .email, textarea {
        width: 280px;
    }

    .direct-contact-container {
        margin-top: 60px;
        max-width: 280px;
    }

    .social-media-list {
        left: 0;
    }

        .social-media-list li {
            height: 55px;
            width: 55px;
            line-height: 55px;
            font-size: 2rem;
        }

            .social-media-list li:after {
                width: 55px;
                height: 55px;
                line-height: 55px;
            }
}

@media screen and (max-width: 410px) {
    .send-button {
        width: 99%;
    }
} 
        /*end*/

        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');

.main{
  display: flex;
  padding: 0 35px;
  align-items: center;
  justify-content: center;
 min-height: 60vh;
  /*background: linear-gradient(to left top, #031A9A, #8B53FF);*/
  /*background-color: rgba(0,0,0,.7);*/
  box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
  margin-left:30px;
  margin-right:30px;
}
.star{
    margin-top:-30px;
}
.wrapper {
  max-width: 1300px;
  width: 100%;
  position: relative;
}
.wrapper i {
  top: 50%;
  height: 50px;
  width: 50px;
  cursor: pointer;
  font-size: 1.25rem;
  position: absolute;
  text-align: center;
  line-height: 50px;
  background: #fff;
  border-radius: 50%;
  box-shadow: 0 3px 6px rgba(0,0,0,0.23);
  transform: translateY(-50%);
  transition: transform 0.1s linear;
  z-index:1000;
}
.wrapper i:active{
  transform: translateY(-50%) scale(0.85);
}
.wrapper i:first-child{
  left: -22px;
}
.wrapper i:last-child{
  right: -22px;
}
.wrapper .carousel{
  display: grid;
  grid-auto-flow: column;
  grid-auto-columns: calc((100% / 4) - 5px);
  overflow-x: auto;
  scroll-snap-type: x mandatory;
  gap: 16px;
  border-radius: 8px;
  scroll-behavior: smooth;
  scrollbar-width: none;
}
.carousel::-webkit-scrollbar {
  display: none;
}
.carousel.no-transition {
  scroll-behavior: auto;
}
.carousel.dragging {
  scroll-snap-type: none;
  scroll-behavior: auto;
}
.carousel.dragging .card {
  cursor: grab;
  user-select: none;
}
.carousel .card  {
  display: flex;
  justify-content: center;
  align-items: center;
}
.carousel .img  {
  display: flex;
  justify-content: center;
  align-items: center;
}

.carousel .card {
  scroll-snap-align: start;
  height: 342px;
  list-style: none;
  background: #fff;
  cursor: pointer;
  padding-bottom: 15px;
  flex-direction: column;
  border-radius: 8px;
}
.carousel .card .img {
  background: orange;
  height: 150px;
  width: 150px;
  border-radius: 50%;
  margin-top:30px;
}
.card .img img {
  width: 146px;
  height: 146px;
  border-radius: 50%;
  object-fit: cover;
  border: 2px solid orange;
}
.carousel .card h2 {
  font-weight: 500;
  font-size: 1.56rem;
  margin: 30px 0 5px;
}
.carousel .card span {
  color: #6A6D78;
  font-size: 1.31rem;
}
.star{
    color:yellow;
    font-size:30px;
}

@media screen and (max-width: 900px) {
  .wrapper .carousel {
    grid-auto-columns: calc((100% / 2) - 9px);
  }
}

@media screen and (max-width: 600px) {
  .wrapper .carousel {
    grid-auto-columns: 100%;
  }
}
        
        /*end*/
       
    </style>
    <h1 id="pg-top"></h1>
    <div id="top">
        <div class="box">
            <div class="sp">
                <span class="m-top">Sign In</span>
            </div>
            <div class="close">
                <h1 class="cicon" id="closicon">X</h1>
                <%--<img src="icon/icons8-x-64.png" alt="close" class="float-end" id="closicon" />--%>
            </div>
            <div class="rel">
                <asp:TextBox ID="txtlaid" runat="server" class="form-control mc ms-5 mb-4 mt-5" placeholder="Email Adress"></asp:TextBox>
                <asp:TextBox ID="txtlpswd" runat="server" class="form-control mc ms-5" placeholder="Password" TextMode="Password"></asp:TextBox>

                <div class="lock">
                    <img src="icon/icons8-user-50 (2).png" alt="user" /></div>
                <div class="plock">
                    <img src="icon/icons8-padlock-50.png" alt="lock" /></div>

            </div>
            <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-dark me-5 mt-3 mbt ms-5" OnClick="btnlogin_Click" />
            <p class="ms-5 mt-3">Don't Have An Account ?<span class="ms-2 line" id="reg">Sign UP</span></p>
            <div class="d-flex gap-4 imgs full">

                <img src="icon/icons8-fb-50.png" alt="apple" />
                <img src="icon/icons8-google-50 (1).png" alt="google" />
                <img src="icon/icons8-apple-50.png" alt="apple" />
            </div>

        </div>
    </div>

    <!--register-->
    <div>
        <div class="box2">
            <div class="sp">
                <span class="m-top">Sign UP</span>
            </div>
            <div class="close">
                <h1 class="float-end cicon" id="closicon1">X</h1>
                <%--<img src="icon/icons8-x-64.png" alt="close" class="float-end" id="closicon1" />--%>
            </div>
            <div class="rel">
                <asp:TextBox ID="txtname" runat="server" class="form-control mc1 ms-5 mb-4 mt-5" placeholder="Name"></asp:TextBox>
                <asp:TextBox ID="txtemail" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="txtmobile" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Mobile"></asp:TextBox>
                <asp:DropDownList ID="drpuserlocation" runat="server" class="form-control mc1 ms-5 mb-4"></asp:DropDownList>
                <asp:TextBox ID="txtpsd" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="txtconpsd" runat="server" class="form-control mc1 ms-5 mb-4" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>


            </div>
            <asp:Button ID="btnreg" runat="server" Text="Register" CssClass="btn btn-dark me-5 mt-3 mbt1 ms-5" OnClick="btnreg_Click" />
            <p class="ms-5 mt-3">Allready Have An Account ?<span class="ms-2 line" id="regsp">Login</span></p>
            <div class="d-flex gap-4 imgs full">

                <img src="icon/icons8-fb-50.png" alt="apple" />
                <img src="icon/icons8-google-50 (1).png" alt="google" />
                <img src="icon/icons8-apple-50.png" alt="apple" />
            </div>

        </div>
    </div>

    <div style="height: 100vh; background-image: url(https://images.pexels.com/photos/4254168/pexels-photo-4254168.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1); background-size: cover; background-position: center;" class="position-relative w-100">
        <div class="position-absolute text-white d-flex flex-column align-items-start justify-content-center" style="top: 0; right: 0; bottom: 0; left: 0; background-color: rgba(0,0,0,.7);">
            <div class="container">
                <div class="col-md-6">
                    <span style="color: #bbb;" class="text-uppercase">THE JOB BORD</span>
                    <!-- on small screens remove display-4 -->
                    <h1 class="mb-4 mt-2 display-5 font-weight-bold">Getting Your Services Done Is Now A <span style="color: #0275d8">Fingertip Away</span></h1>
                    <p style="color: #bbb;">Empowering Lives, Fulfilling Needs: Your one-stop destination for essential services. Simplifying day-to-day living with a comprehensive range of solutions tailored to your requirements. Elevate your experience with seamless accessibility and unparalleled convenience.</p>
                    <div class="mt-5">
                        <!-- hover background-color: white; color: black; -->
                        <%--<a href="#" class="btn px-5 py-3 text-white mt-3 mt-sm-0" style="border-radius: 20px; background-color: #0275d8">Get Started</a>--%>
                        <asp:Button ID="Button1" runat="server" Text="Let's Start Work" class="btn btn-primary px-5 py-3 text-white mt-3 mt-sm-0" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>


   <%-- about us--%>
    <h2 id="About">&nbsp;</h2>
     <section class="about-us">
    <div class="about">
    <img src="Images/3-Vocational-training-_Programs_Carpentry_croped.jpg" alt="" class="pic">
      <div class="text">
        <h2 class="mb-5 mt-2 pt-4 mycls">About US</h2>
          <p>Welcome to Sri Lankan largest job platform. We are connecting Sri Lankan employers with Sri Lankan workers. 
JobBoard.lk is the largest online workforce available in Sri Lanka. Our workers will complete your job within the shortest time period for minimum budget</p>
        <div class="data">
        <button class="btn btn-primary">GET START</button>
        </div>
      </div>
    </div>
  </section>
     <%-- about us end--%>

  <%--  our services start--%>
    <%--<p >&nbsp;</p>--%>
    <h2 class="service-start mb-5" id="services" >
        <span>O</span>
        <span>U</span>
        <span class="me-4">R</span>
        <span>S</span>
        <span>E</span>
        <span>R</span>
        <span>V</span>
        <span>I</span>
        <span>C</span>
        <span>E</span>
        <span>S</span>
    </h2>
    <div class="container">
    <div class="row">
        <div class="col-md-4">
               <div class="card bshado" style="width: 20rem;">
  <img src="cardimage/203.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Carpentry</h5>
    <p class="card-text">Carpentry is a timeless craft that involves shaping and constructing wooden structures, from furniture to buildings, with precision and skill</p>
      <asp:Button ID="btncarpentry" runat="server" Text="Book Now" class="btn btn-primary" OnClick="btncarpentry_Click" />
  </div>
</div>
        </div>
        <div class="col-md-4">
                   <div class="card bshado" style="width: 20rem;">
  <img src="cardimage/5804e11c4a5b8.image.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Mason</h5>
    <p class="card-text">Mason is a versatile and skilled individual with a passion for creativity, a keen eye for detail, and a strong work ethic..</p>
    <asp:Button ID="btnmason" runat="server" Text="Book Now" class="btn btn-primary" OnClick="btnmason_Click" />
  </div>
</div>
        </div>
        <div class="col-md-4">
                   <div class="card bshado" style="width: 20rem;">
  <img src="cardimage/Acerlandscape.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Gardn Maker</h5>
    <p class="card-text">Garden Maker is a dedicated professional specializing in creating and maintaining beautiful gardens, using their expertise in horticulture</p>
    <asp:Button ID="btngarden" runat="server" Text="Book Now" class="btn btn-primary" OnClick="btngarden_Click" />
  </div>
</div>
        </div>
         <p class="btn btn-primary btnmores mt-2" id="seebtn"><i class="fa-solid fa-arrow-down"></i></p>
        
        
    </div>

        <%--second group--%>
    <div class="row mt-3 show" id="sgroup">
        <div class="col-md-4">
                   <div class="card bshado" style="width: 20rem;">
  <img src="cardimage/Plumbing-Contractors.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Plumber</h5>
    <p class="card-text">A plumber is a skilled tradesperson who specializes in installing, repairing, and maintaining plumbing systems, ensuring water flow and sanitation.</p>
   <asp:Button ID="btnplumber" runat="server" Text="Book Now" class="btn btn-primary" OnClick="btnplumber_Click" />
  </div>
</div>
        </div>
        <div class="col-md-4">
  <div class="card bshado" style="width: 20rem;">
  <img src="cardimage/R.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Painter</h5>
    <p class="card-text">A painter is a talented artist or skilled professional who transforms surfaces into visually appealing works of art through color and technique.</p>
    <asp:Button ID="btnpainter" runat="server" Text="Book Now" class="btn btn-primary" OnClick="btnpainter_Click" />
  </div>
</div>
        </div>
        <div class="col-md-4">
                             <div class="card bshado" style="width: 20rem;">
  <img src="cardimage/What-Are-the-Benefits-of-Hiring-a-Professional-Electrician.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Electrician</h5>
    <p class="card-text">An electrician is a highly trained expert who specializes in safely installing, maintaining, and repairing electrical systems, ensuring power and lighting.</p>
<asp:Button ID="btnElectrician" runat="server" Text="Book Now" class="btn btn-primary" OnClick="btnElectrician_Click" />
  </div>
</div>
        </div>
        <p class="btn btn-primary btnmores mt-2" id="lessbtn"><i class="fa-solid fa-arrow-up"></i></p>
    </div>

</div>
   


   <%-- our services start end--%>

    <%--contact start--%>
    <p id="contact">&nbsp;</p>
    <section class="">
          <h2 class="service-start section-header mb-5" >
        <span>C</span>
        <span>O</span>
        <span>N</span>
        <span>T</span>
        <span>A</span>
        <span>C</span>
        <span>T</span>
        <span class="ms-4">U</span>
        <span>S</span>
    </h2>
  
   <%-- <h1 class="section-header mb-5">Contact ME</h1>--%>
    
    <div class="contact-wrapper bck-grond">
    
    <!-- Left contact page --> 
      
      <div id="contact-form" class="form-horizontal" role="form">
         
        <div class="form-group">
          <div class="col-sm-12">
           
              <asp:TextBox ID="txtnamecontact" runat="server" CssClass="form-control mb-4 my-form" placeholder="NAME"></asp:TextBox>
          </div>
        </div>
  
        <div class="form-group">
          <div class="col-sm-12">
          
              <asp:TextBox ID="txtemailcontact" runat="server" CssClass="form-control mb-4 my-form" placeholder="EMAIL"></asp:TextBox>
          </div>
        </div>
  
        
          <asp:TextBox ID="txtmessagecontact" runat="server" CssClass="form-control mb-4 my-form ms-3" TextMode="MultiLine" placeholder="MESSAGE"></asp:TextBox>
          <asp:Button ID="btnsendmessage" runat="server" Text="SEND" CssClass="btn btn-primary mybtnsend ms-3" OnClick="btnsendmessage_Click" />
       
        
      </div>
      
    <!-- Left contact page --> 
      
        <div class="direct-contact-container">
  
          <ul class="contact-list">
            <li class="list-item"><i class="fa fa-map-marker fa-2x"><span class="contact-text place">346/1 galle Rd, Colombo</span></i></li>
            
            <li class="list-item"><i class="fa fa-phone fa-2x"><span class="contact-text phone"><a href="tel:1-212-555-5555" title="Give me a call">091 - 2345675</a></span></i></li>
            
            <li class="list-item"><i class="fa fa-envelope fa-2x"><span class="contact-text gmail"><a href="mailto:#" title="Send me an email">jobboard@gmail.com</a></span></i></li>
            
          </ul>
  
          <hr>
          <ul class="social-media-list">
            <li><a href="https://github.com/" target="_blank" class="contact-icon">
              <i class="fa-brands fa-google"></i></a>
            </li>
            <li><a href="#" target="_blank" class="contact-icon">
              <i class="fa-brands fa-codepen" aria-hidden="true"></i></a>
            </li>
            <li><a href="#" target="_blank" class="contact-icon">
              <i class="fa-brands fa-facebook" aria-hidden="true"></i></a>
            </li>
            <li><a href="#" target="_blank" class="contact-icon">
              <i class="fa-brands fa-instagram" aria-hidden="true"></i></a>
            </li>       
          </ul>
          <hr>
  
          <div class="copyright">&copy; ALL OF THE RIGHTS RESERVED</div>
  
        </div>
      
    </div>
    
  </section>  

    <%--contact end--%>

      <%--review start--%>
    <h2 id="feedbacks">&nbsp;</h2>
        <h2 class="service-start section-header mb-5" >
        <span>F</span>
        <span>E</span>
        <span>E</span>
        <span>D</span>
        <span>B</span>
        <span>A</span>
        <span>C</span>
        <span>K</span>
        <span>S</span>
    </h2>
    
    <div class="main">
    <div class="wrapper">
      <i id="left" class="fa-solid fa-angle-left"></i>
      <ul class="carousel">
        <li class="card">
          <div class="img"><img src="Images/anushka.jpg" alt="img" draggable="false"></div>
          <h2>Blanche Pearson</h2>
            <p class="text-center mt-2 p-3">Amazing Expeirence Staf are very friendly Highly Recommended..!</p>
          <span class="fs-2 text-warning star">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
        </li>
        <li class="card">
          <div class="img"><img src="Images/dush.jpg" alt="img" draggable="false"></div>
          <h2>Joenas Brauers</h2>
            <p class="text-center mt-2 p-3">Amazing Expeirence Staf are very friendly Highly Recommended..!</p>
          <span class="fs-2 text-warning star">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
        </li>
        <li class="card">
          <div class="img"><img src="Images/ishini.jpg" alt="img" draggable="false"></div>
          <h2>Lariach French</h2>
            <p class="text-center mt-2 p-3">Amazing Expeirence Staf are very friendly Highly Recommended..!</p>
          <span class="fs-2 text-warning star">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
        </li>
        <li class="card">
          <div class="img"><img src="Images/warun.jpg" alt="img" draggable="false"></div>
          <h2>James Khosravi</h2>
            <p class="text-center mt-2 p-3">Amazing Expeirence Staf are very friendly Highly Recommended..!</p>
          <span class="fs-2 text-warning star">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
        </li>
        <li class="card">
          <div class="img"><img src="Images/winu.jpg" alt="img" draggable="false"></div>
          <h2>Kristina Zasiadko</h2>
            <p class="text-center mt-2 p-3">Amazing Expeirence Staf are very friendly Highly Recommended..!</p>
          <span class="fs-2 text-warning star">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
        </li>
        <li class="card">
          <div class="img"><img src="Images/dush.jpg" alt="img" draggable="false"></div>
          <h2>Donald Horton</h2>
            <p class="text-center mt-2 p-3">Amazing Expeirence Staf are very friendly Highly Recommended..!</p>
          <span class="fs-2 text-warning star">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
        </li>
      </ul>
      <i id="right" class="fa-solid fa-angle-right"></i>
    </div>

</div>
      <%--review end--%>


    <%--    jquery--%>
    <script type="text/javascript">
        $(".box").hide();
        $(".box2").hide();
        $(".show").hide();
        //if (typeof jQuery == "undefined") {
        //    alert("not working");
        //} else {
        //    alert("working");
        //}
        $(document).ready(function () {

            $("#btnlogin").click(function () {

                //scrolle to top
                $("html, body").animate({ scrollTop: 0 }, 5);

                if ($('.box').css('display') == 'none') {
                    //$(".box").show();
                    $(".box").fadeIn();
                    $('body').css('overflow', 'hidden');
                }
                else {
                    $(".box").fadeOut();
                    $('body').css('overflow', 'auto');
                }
            });

            $("#reg").click(function () {
                $(".box").fadeOut();
                if ($('.box2').css('display') == 'none') {
                    $(".box2").fadeIn();
                }
                else {
                    $(".box2").fadeOut();
                }
            });

            $("#regsp").click(function () {
                $(".box2").fadeOut();
                if ($('.box').css('display') == 'none') {
                    $(".box").fadeIn();
                }
                else {
                    $(".box2").fadeOut();
                }
            });

            $("#closicon").click(function () {
                $(".box").fadeOut();
                $('body').css('overflow', 'auto');
            });

            $("#closicon1").click(function () {
                $(".box2").fadeOut();
                $('body').css('overflow', 'auto');
            });
            
            $("#closicon1").click(function () {
                $(".show - sec").fadeOut();
                
            });
            
            $("#seebtn").click(function () {
                
                if ($('#sgroup').css('display') == 'none') {
                    $("#sgroup").fadeIn();
                    $('#seebtn').hide();
                }
            });

            $("#lessbtn").click(function () {
                    $("#sgroup").fadeOut();
                    $('#seebtn').show();
            });
        });



        /*javascript*/
        const wrapper = document.querySelector(".wrapper");
        const carousel = document.querySelector(".carousel");
        const firstCardWidth = carousel.querySelector(".card").offsetWidth;
        const arrowBtns = document.querySelectorAll(".wrapper i");
        const carouselChildrens = [...carousel.children];

        let isDragging = false, isAutoPlay = true, startX, startScrollLeft, timeoutId;

        // Get the number of cards that can fit in the carousel at once
        let cardPerView = Math.round(carousel.offsetWidth / firstCardWidth);

        // Insert copies of the last few cards to beginning of carousel for infinite scrolling
        carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
            carousel.insertAdjacentHTML("afterbegin", card.outerHTML);
        });

        // Insert copies of the first few cards to end of carousel for infinite scrolling
        carouselChildrens.slice(0, cardPerView).forEach(card => {
            carousel.insertAdjacentHTML("beforeend", card.outerHTML);
        });

        // Scroll the carousel at appropriate postition to hide first few duplicate cards on Firefox
        carousel.classList.add("no-transition");
        carousel.scrollLeft = carousel.offsetWidth;
        carousel.classList.remove("no-transition");

        // Add event listeners for the arrow buttons to scroll the carousel left and right
        arrowBtns.forEach(btn => {
            btn.addEventListener("click", () => {
                carousel.scrollLeft += btn.id == "left" ? -firstCardWidth : firstCardWidth;
            });
        });

        const dragStart = (e) => {
            isDragging = true;
            carousel.classList.add("dragging");
            // Records the initial cursor and scroll position of the carousel
            startX = e.pageX;
            startScrollLeft = carousel.scrollLeft;
        }

        const dragging = (e) => {
            if (!isDragging) return; // if isDragging is false return from here
            // Updates the scroll position of the carousel based on the cursor movement
            carousel.scrollLeft = startScrollLeft - (e.pageX - startX);
        }

        const dragStop = () => {
            isDragging = false;
            carousel.classList.remove("dragging");
        }

        const infiniteScroll = () => {
            // If the carousel is at the beginning, scroll to the end
            if (carousel.scrollLeft === 0) {
                carousel.classList.add("no-transition");
                carousel.scrollLeft = carousel.scrollWidth - (2 * carousel.offsetWidth);
                carousel.classList.remove("no-transition");
            }
            // If the carousel is at the end, scroll to the beginning
            else if (Math.ceil(carousel.scrollLeft) === carousel.scrollWidth - carousel.offsetWidth) {
                carousel.classList.add("no-transition");
                carousel.scrollLeft = carousel.offsetWidth;
                carousel.classList.remove("no-transition");
            }

            // Clear existing timeout & start autoplay if mouse is not hovering over carousel
            clearTimeout(timeoutId);
            if (!wrapper.matches(":hover")) autoPlay();
        }

        const autoPlay = () => {
            if (window.innerWidth < 800 || !isAutoPlay) return; // Return if window is smaller than 800 or isAutoPlay is false
            // Autoplay the carousel after every 2500 ms
            timeoutId = setTimeout(() => carousel.scrollLeft += firstCardWidth, 2500);
        }
        autoPlay();

        carousel.addEventListener("mousedown", dragStart);
        carousel.addEventListener("mousemove", dragging);
        document.addEventListener("mouseup", dragStop);
        carousel.addEventListener("scroll", infiniteScroll);
        wrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
        wrapper.addEventListener("mouseleave", autoPlay);


    </script>
</asp:Content>
