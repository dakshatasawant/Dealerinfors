<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Partnerdetails.aspx.cs" Inherits="campionwebpage.Partnerdetails" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8" />
    <meta name="description" content="Free Web tutorials">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="author" content="John Doe">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Form</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->


    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <style>
        table {
            border-collapse: collapse;
            border-spacing: 0;
            width: 100%;
            border: 1px solid #ddd;
        }

        th,
        td {
            text-align: left;
            padding: 8px;
        }

        tr {
            background-color: #f2f2f2
        }
    </style>

</head>

<body>
    <form runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div class="tabs">

            <nav role='navigation' class="responsive-tab">
                <div class="row">
                    <div class="col-md-4">
                        <div class="logo">
                            <img src="images/RP_tech_Logo_white.png" alt="rptech" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <ul>
                            <li><a id="1" href="#Personal-Info" class="active">Partners Information</a></li>
                            <li><a id="2" href="#Education-Form">Contact Person Details</a></li>
                            <!-- <li><a id="3" href="#Employment-History">Employment History</a></li>
                        <li><a id="4" href="#Health-Record">Health Record</a></li>
                        <li><a id="5" href="#Personal-Goals">Personal Goals</a></li> -->
                        </ul>
                    </div>
                    <div class="col-md-2">
                        <div class="logo">
                         <a href="login.aspx" style="font-size:40px;"><i class="fa fa-power-off"></i></a>
                            </div>
                    </div>
                </div>

            </nav>


            <!-- Personal Info Start -->
            <div id="Personal-Info" class="active">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>

                <div class="bdy-height">
                    <div class="wrapper">
                        <div class="col-md-8">
                            <div class="main-form">
                                <form id="userForm">
                                    <div class="container">



                                        <div class="middle-head">
                                            <h2>Partners Information</h2>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="test">
                                                    <label for="dep"><b>Select Partners</b></label>
                                                    <%-- <select class="branch-select minimal" name="department" id="selectDepartment">
                                                   <option value="0">Select Partner</option>
                                                   <option value="0">Partners1</option>
                                                   <option value="1">Partners2</option>
                                                   <option value="2">Partners3</option>
                                                   <option value="2">Partners4</option>
                                                   <option value="2">Partners5</option>
                                                   <option value="2">Partners6</option>
                                                </select>--%>
                                                    <asp:DropDownList CssClass="branch-select minimal" ID="ddpartner" runat="server"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="nxt-btn">
                                                    <%-- <button id="nxt" type="submit" class="registerbtn" style="margin-top: 28%;">Submit</button>--%>
                                                    <asp:Button ID="btnsubmit" runat="server" CssClass="registerbtn" style="margin-top:28%;" Text="Submit" OnClick="btnsubmit_Click" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="test">
                                                    <label for="text"><b>Partner Name</b></label>
                                                    <%-- <input type="text" placeholder="Full Name" name="empName">--%>
                                                    <asp:TextBox ID="txtpartnername" runat="server" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="test">
                                                    <label for="text"><b>Partner ID</b></label>
                                                    <%--<input type="text" placeholder="Full Name" name="empName">--%>
                                                    <asp:TextBox ID="txtpartnerid" runat="server" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="test">
                                                    <label for="age"><b>Address</b></label>
                                                    <div class="Languages-Spoken">

                                                        <div class="row">
                                                            <div class="col-md-5">
                                                                <div class="contact-address">
                                                                    <%-- <input type="text" placeholder="Building / Flat No.">--%>
                                                                    <asp:TextBox ID="txtaddress" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7">
                                                                <div class="contact-address">
                                                                    <%-- <input type="text" placeholder="Street Name">--%>
                                                                    <asp:TextBox ID="txtstreet1" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-5">
                                                                <div class="contact-address">
                                                                    <%--<input type="text" placeholder="City">--%>
                                                                    <asp:TextBox ID="txtArea" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-5">
                                                                <div class="contact-address">
                                                                    <%--<input type="text" placeholder="State">--%>
                                                                    <asp:TextBox ID="txtCity" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="contact-address">
                                                                    <%--<input type="number" placeholder="Pin Code" maxlength="6">--%>
                                                                    <asp:TextBox ID="txtState" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-5">
                                                                <div class="contact-address">
                                                                    <%-- <input type="number" placeholder="Area" maxlength="10">--%>
                                                                    <asp:TextBox ID="txtPostalcode" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <!-- <div class="col-md-5">
                                                            <div class="contact-address">
                                                                <input type="number" placeholder="Input Contact No.2" maxlength="10">
                                                            </div>
                                                        </div> -->

                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                                                <div class="test">
                                                    <label for="text"><b>Segment</b></label>
                                                    <%--<input type="text" placeholder="Full Name" name="empName">--%>
                                                    <div class="segment">
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="segment-left">
                                                                    <asp:ListBox ID="lstLeft" runat="server" SelectionMode="Multiple">
                                                                        <asp:ListItem>Gem</asp:ListItem>
                                                                        <asp:ListItem>Service</asp:ListItem>
                                                                        <asp:ListItem>Education</asp:ListItem>
                                                                        <asp:ListItem>Retail</asp:ListItem>
                                                                        <asp:ListItem>Corporate SI</asp:ListItem>
                                                                        <asp:ListItem>Trading</asp:ListItem>
                                                                        <asp:ListItem>Media</asp:ListItem>
                                                                        <asp:ListItem>Online</asp:ListItem>
                                                                    </asp:ListBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="segment-btn">
                                                                    <asp:Button ID="btnRight" CssClass="segment-add-btn" Text="Add" runat="server" OnClick="RightClick" />
                                                                    <asp:Button ID="btnLeft" CssClass="segment-remove-btn" Text="Remove" runat="server" OnClick="LeftClick" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="segment-right">
                                                                    <asp:ListBox ID="lstRight" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>
                                                <div class="test">
                                                    <label for="text"><b>Brand</b></label>
                                                    <%--<input type="text" placeholder="Full Name" name="empName">--%>
                                                    <div class="segment">
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="brand-left">
                                                                    <asp:ListBox ID="lstLeft1" runat="server" SelectionMode="Multiple">
                                                                        <asp:ListItem>AMD</asp:ListItem>
                                                                        <asp:ListItem>APC</asp:ListItem>
                                                                        <asp:ListItem>ASUS</asp:ListItem>
                                                                        <asp:ListItem>ASUS - ODD/XONAR</asp:ListItem>
                                                                        <asp:ListItem>ELITEGROUP</asp:ListItem>
                                                                        <asp:ListItem>LOGITECH</asp:ListItem>
                                                                        <asp:ListItem>LOGITECH</asp:ListItem>
                                                                        <asp:ListItem>OTHER BRANDS</asp:ListItem>
                                                                        <asp:ListItem>SDK CAM CARD</asp:ListItem>
                                                                        <asp:ListItem>SANDISK</asp:ListItem>
                                                                        <asp:ListItem>TOSHIBA Enterprise</asp:ListItem>
                                                                        <asp:ListItem>TOSHIBA</asp:ListItem>
                                                                        <asp:ListItem>INTEL</asp:ListItem>
                                                                        <asp:ListItem>MIC CRUCIAL</asp:ListItem>
                                                                        <asp:ListItem>CHROME</asp:ListItem>
                                                                        <asp:ListItem>WDC</asp:ListItem>
                                                                        <asp:ListItem>WDC ULTRA</asp:ListItem>
                                                                        <asp:ListItem>GTECH</asp:ListItem>
                                                                        <asp:ListItem>FIT-BIT</asp:ListItem>
                                                                        <asp:ListItem>BELKIN</asp:ListItem>
                                                                        <asp:ListItem>NV GRID</asp:ListItem>
                                                                        <asp:ListItem>ENTERPRISES</asp:ListItem>
                                                                        <asp:ListItem>ASUS MONITOR</asp:ListItem>
                                                                        <asp:ListItem>PHILIPS MONITOR</asp:ListItem>
                                                                        <asp:ListItem>COLOURFUL</asp:ListItem>
                                                                        <asp:ListItem>SMC</asp:ListItem>
                                                                        <asp:ListItem>OPTIMO</asp:ListItem>
                                                                        <asp:ListItem>NVIDIA QUDRO</asp:ListItem>
                                                                        <asp:ListItem>JBL</asp:ListItem>
                                                                        <asp:ListItem>SAMSUNG ACCESSORIES</asp:ListItem>
                                                                        <asp:ListItem>ENTERPRISE STREACH</asp:ListItem>
                                                                        <asp:ListItem>LG</asp:ListItem>
                                                                        <asp:ListItem>Luminous</asp:ListItem>
                                                                        <asp:ListItem>EATON</asp:ListItem>
                                                                        <asp:ListItem>SDK PROFESSIONAL</asp:ListItem>
                                                                        <asp:ListItem>FUJITSU</asp:ListItem>
                                                                        <asp:ListItem>ANTEK</asp:ListItem>
                                                                        <asp:ListItem>ATI FIRE PRO</asp:ListItem>
                                                                        <asp:ListItem>ALTEC LANCING</asp:ListItem>
                                                                        <asp:ListItem>HITACHI</asp:ListItem>
                                                                        <asp:ListItem>JETWAY</asp:ListItem>
                                                                        <asp:ListItem>PATRIOT</asp:ListItem>
                                                                        <asp:ListItem>PINE</asp:ListItem>
                                                                        <asp:ListItem>PIXELVIEW</asp:ListItem>
                                                                        <asp:ListItem>SONY</asp:ListItem>
                                                                        <asp:ListItem>View Sonic</asp:ListItem>
                                                                        <asp:ListItem>Asus Networking</asp:ListItem>
                                                                        <asp:ListItem>Asus Networking</asp:ListItem>
                                                                        <asp:ListItem>TP LINK</asp:ListItem>
                                                                        <asp:ListItem>ATEN</asp:ListItem>
                                                                        <asp:ListItem>CAMBIUM</asp:ListItem>
                                                                        <asp:ListItem>MERCUSYS</asp:ListItem>
                                                                        <asp:ListItem>UBIQUITY</asp:ListItem>
                                                                        <asp:ListItem>NETWORKING STREACH</asp:ListItem>
                                                                        <asp:ListItem>LINKSYS</asp:ListItem>
                                                                        <asp:ListItem>COMPEX</asp:ListItem>
                                                                        <asp:ListItem>HP NETWORKING</asp:ListItem>
                                                                        <asp:ListItem>NXN</asp:ListItem>
                                                                        <asp:ListItem>SAMSUNG TAB/MOB</asp:ListItem>
                                                                        <asp:ListItem>SAMSUNG TAB/MOB</asp:ListItem>
                                                                        <asp:ListItem>SAMSUNG CAREPACK</asp:ListItem>
                                                                        <asp:ListItem>SERVIFI</asp:ListItem>
                                                                        <asp:ListItem>ASUS DESKTOP</asp:ListItem>
                                                                        <asp:ListItem>ASUS OTHER</asp:ListItem>
                                                                        <asp:ListItem>HP OPTIONS COM</asp:ListItem>
                                                                        <asp:ListItem>HP NB/DKT</asp:ListItem>
                                                                        <asp:ListItem>HP CAREPACK</asp:ListItem>
                                                                        <asp:ListItem>HP MON</asp:ListItem>
                                                                        <asp:ListItem>HP CON DKT</asp:ListItem>
                                                                        <asp:ListItem>HP OPTIONS CON</asp:ListItem>
                                                                        <asp:ListItem>REL+VLE</asp:ListItem>
                                                                        <asp:ListItem>LENOVO TFT</asp:ListItem>
                                                                        <asp:ListItem>LEN TFT CONSUMER</asp:ListItem>
                                                                        <asp:ListItem>LEN+SB</asp:ListItem>
                                                                        <asp:ListItem>LEN+CC</asp:ListItem>
                                                                        <asp:ListItem>LEN ALFA RD</asp:ListItem>
                                                                        <asp:ListItem>LEN AMD CONSU</asp:ListItem>
                                                                        <asp:ListItem>LEN TFT COMMERCIAL</asp:ListItem>
                                                                        <asp:ListItem>LEN CAREPACK SB</asp:ListItem>
                                                                        <asp:ListItem>SAMSUNG NOTEBOOK (B2B)</asp:ListItem>
                                                                        <asp:ListItem>SAMSUNG NOTEBOOK (B2C)</asp:ListItem>
                                                                        <asp:ListItem>DEL</asp:ListItem>
                                                                    </asp:ListBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="segment-btn">
                                                                    <asp:Button ID="btnRight1" CssClass="segment-add-btn" Text="Add" runat="server" OnClick="btnRight1_Click" />
                                                                    <asp:Button ID="btnLeft1" CssClass="segment-remove-btn" Text="Remove" runat="server" OnClick="btnLeft1_Click" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="brand-right">
                                                                    <asp:ListBox ID="lstRight1" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                            </div>

                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

            </div>
            <!-- Personal Info End -->

            <!-- Education Form Start -->
            <div id="Education-Form">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <div class="bdy-height">
                            <div class="wrapper">
                                <div class="col-md-8">
                                    <div class="main-form">
                                        <form id="userForm1">
                                            <div class="container">

                                                <div class="middle-head">
                                                    <h2>Contact Person Details</h2>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="graduation-head">
                                                            <h5>Details</h5>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="graduation-details">
                                                            <h5>Contact Person Name</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="graduation-fill">
                                                            <%-- <input type="text" name="college">--%>
                                                            <asp:TextBox ID="cname" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="graduation-details">
                                                            <h5>Contact Person Mobile No.</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="graduation-fill">
                                                            <%-- <input type="tel" name="college" maxlength="10">--%>
                                                            <asp:TextBox ID="cmobile" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="graduation-details">
                                                            <h5>Telephone No.</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="graduation-fill">
                                                            <%-- <input type="tel" name="college">--%>
                                                            <asp:TextBox ID="ctelephone" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="graduation-details">
                                                            <h5>Email ID</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="graduation-fill">
                                                            <%-- <input type="email" name="email">--%>
                                                            <asp:TextBox ID="cemail" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="graduation-details">
                                                            <h5>Designation Of Contact Person</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="graduation-fill">
                                                            <%--  <select class="branch-select minimal" name="department" id="selectDepartment">
                                                       <option value="0">Select Company Profile</option>
                                                       <option value="0">Item1</option>
                                                       <option value="1">Item2</option>
                                                       <option value="2">Item3</option>
                                                       <option value="2">Item4</option>
                                                       <option value="2">Item5</option>
                                                       <option value="2">Item6</option>
                                                    </select>--%>
                                                            <asp:DropDownList ID="dddesig" runat="server" CssClass="branch-select minimal">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="graduation-details">
                                                            <h5>Company Profile</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="graduation-fill">
                                                            <%-- <select class="branch-select minimal" name="department" id="selectDepartment">
                                                       <option value="0">Select Company Profile</option>
                                                       <option value="0">Item1</option>
                                                       <option value="1">Item2</option>
                                                       <option value="2">Item3</option>
                                                       <option value="2">Item4</option>
                                                       <option value="2">Item5</option>
                                                       <option value="2">Item6</option>
                                                    </select>--%>
                                                            <asp:DropDownList ID="ddprof" runat="server" CssClass="branch-select minimal">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="graduation-details">
                                                            <h5>No. Of Year In IT</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="graduation-fill">
                                                            <%-- <select class="branch-select minimal" name="department" id="selectDepartment">
                                                       <option value="0">Select No. Of Year In IT</option>
                                                       <option value="0">Item1</option>
                                                       <option value="1">Item2</option>
                                                       <option value="2">Item3</option>
                                                       <option value="2">Item4</option>
                                                       <option value="2">Item5</option>
                                                       <option value="2">Item6</option>
                                                    </select>--%>
                                                            <asp:DropDownList ID="ddITyear" runat="server" CssClass="branch-select minimal">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                </div>



                                                <div class="nxt-btn" style="margin-top: 15px; margin-bottom: 20px;">
                                                    <%--<button id="bck2" type="button" class="registerbtn">Submit</button>--%>
                                                    <asp:Button ID="btnsubmit1" runat="server" class="registerbtn" Text="Submit" OnClick="btnsubmit1_Click" />
                                                    <!-- <button id="nxt2" type="button" class="registerbtn">Save</button> -->
                                                </div>


                                                <div class="row">
                                                    <div class="col-md-12">


                                                        <div style="overflow-x: auto; margin-bottom: 20px;">
                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:GridView ID="gvCustomers" CssClass="table invoice-items" DataKeyNames="ID" runat="server" AutoGenerateColumns="false"
                                                                        OnRowEditing="EditCustomer" OnRowUpdating="UpdateCustomer"
                                                                        OnRowCancelingEdit="CancelEdit">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="PartnerID" HeaderText="PartnerID" ItemStyle-CssClass="abc" HeaderStyle-CssClass="pratik" ReadOnly="true" />
                                                                            <asp:TemplateField HeaderText="Contact Person" ItemStyle-CssClass="abc" HeaderStyle-CssClass="pratik">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblcname" runat="server" Text='<%# Eval("ContactPerson")%>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="contactname" runat="server" Text='<%# Eval("ContactPerson")%>'></asp:TextBox>

                                                                                </EditItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Contact Person Mobile" ItemStyle-CssClass="abc" HeaderStyle-CssClass="pratik">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblcmobile" runat="server" Text='<%# Eval("ContactPersonMobile")%>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="contactmobile" runat="server" Text='<%# Eval("ContactPersonMobile")%>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Telephone Number" ItemStyle-CssClass="abc" HeaderStyle-CssClass="pratik">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblcphone" runat="server" Text='<%# Eval("TelephoneNumber")%>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="telephone" runat="server" Text='<%# Eval("TelephoneNumber")%>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="EMailID" ItemStyle-CssClass="abc" HeaderStyle-CssClass="pratik">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblcemail" runat="server" Text='<%# Eval("EMailID")%>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="txtemail" runat="server" Text='<%# Eval("EMailID")%>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Designation" ItemStyle-CssClass="contact-address" HeaderStyle-CssClass="pratik">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lbldesg"  runat="server" Text='<%# Eval("Designation")%>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:DropDownList ID="ddldesg" CssClass="branch-selects" runat="server" Text='<%# Eval("Designation")%>'>
                                                                                        <asp:ListItem Value="">--Select--</asp:ListItem>
                                                                                        <asp:ListItem Value="Proprietor / Owner">Proprietor / Owner</asp:ListItem>
                                                                                        <asp:ListItem Value="Sales Champ">Sales Champ</asp:ListItem>
                                                                                        <asp:ListItem Value="Accountant">Accountant</asp:ListItem>
                                                                                        <asp:ListItem Value="Back Office Staff">Back Office Staff</asp:ListItem>
                                                                                        <asp:ListItem Value="Sales Co-ordinator">Sales Co-ordinator</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </EditItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="company_profile" ItemStyle-CssClass="contact-address" HeaderStyle-CssClass="pratik">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblcmprof" runat="server" Text='<%# Eval("company_profile")%>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:DropDownList ID="ddlcmprof" CssClass="branch-selects" runat="server"  Text='<%# Eval("company_profile")%>'>
                                                                                        <asp:ListItem Value="">--Select--</asp:ListItem>
                                                                                        <asp:ListItem>Properietorship</asp:ListItem>
                                                                                        <asp:ListItem>LLP</asp:ListItem>
                                                                                        <asp:ListItem>Company</asp:ListItem>
                                                                                        <asp:ListItem>Private LTD.</asp:ListItem>
                                                                                        <asp:ListItem>Limited</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </EditItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="year_in_IT" ItemStyle-CssClass="contact-address" HeaderStyle-CssClass="pratik">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblITyear" runat="server" Text='<%# Eval("year_in_IT")%>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:DropDownList ID="ddlITyear" runat="server" CssClass="branch-selects"  Text='<%# Eval("year_in_IT")%>'>
                                                                                        <asp:ListItem Value="">--Select--</asp:ListItem>
                                                                                        <asp:ListItem>1 Year</asp:ListItem>
                                                                                        <asp:ListItem>2 Years</asp:ListItem>
                                                                                        <asp:ListItem>3 Years</asp:ListItem>
                                                                                        <asp:ListItem>4 Years</asp:ListItem>
                                                                                        <asp:ListItem>5 Years</asp:ListItem>
                                                                                        <asp:ListItem>6 Years</asp:ListItem>
                                                                                        <asp:ListItem>7 Years</asp:ListItem>
                                                                                        <asp:ListItem>8 Years</asp:ListItem>
                                                                                        <asp:ListItem>9 Years</asp:ListItem>
                                                                                        <asp:ListItem>10 Years</asp:ListItem>
                                                                                        <asp:ListItem>11 Years</asp:ListItem>
                                                                                        <asp:ListItem>12 Years</asp:ListItem>
                                                                                        <asp:ListItem>13 Years</asp:ListItem>
                                                                                        <asp:ListItem>14 Years</asp:ListItem>
                                                                                        <asp:ListItem>15 Years</asp:ListItem>
                                                                                        <asp:ListItem>16 Years</asp:ListItem>
                                                                                        <asp:ListItem>17 Years</asp:ListItem>
                                                                                        <asp:ListItem>18 Years</asp:ListItem>
                                                                                        <asp:ListItem>19 Years</asp:ListItem>
                                                                                        <asp:ListItem>20 Years</asp:ListItem>
                                                                                        <asp:ListItem>21 Years</asp:ListItem>
                                                                                        <asp:ListItem>22 Years</asp:ListItem>
                                                                                        <asp:ListItem>23 Years</asp:ListItem>
                                                                                        <asp:ListItem>24 Years</asp:ListItem>
                                                                                        <asp:ListItem>25 Years</asp:ListItem>
                                                                                        <asp:ListItem>26 Years</asp:ListItem>
                                                                                        <asp:ListItem>27 Years</asp:ListItem>
                                                                                        <asp:ListItem>28 Years</asp:ListItem>
                                                                                        <asp:ListItem>29 Years</asp:ListItem>
                                                                                        <asp:ListItem>30 Years</asp:ListItem>
                                                                                        <asp:ListItem>30 Years Above</asp:ListItem>

                                                                                    </asp:DropDownList>
                                                                                </EditItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:CommandField ShowEditButton="True" />
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <div class="row">
                    <div class="col-md-12">
                        <!-- <div class="nxt-btn">
                        <button id="bck2" type="button" class="registerbtn">Submit</button>
                        <button id="nxt2" type="button" class="registerbtn">Save</button>
                    </div> -->
                    </div>
                </div>



            </div>
            <!-- Education Form End -->

        </div>
    </form>

    <script>
        var Tabs = {
            init: function () {
                this.bindUIfunctions();
                this.pageLoadCorrectTab();
            },
            bindUIfunctions: function () {

                // Delegation
                $(document)
                    .on("click", ".responsive-tab a[href^='#']:not('.active')", function (event) {
                        Tabs.changeTab(this.hash);
                        event.preventDefault();
                    })
                    .on("click", ".responsive-tab a.active", function (event) {
                        Tabs.toggleMobileMenu(event, this);
                        event.preventDefault();
                    });

            },
            changeTab: function (hash) {

                var anchor = $("[href=" + hash + "]");
                var div = $(hash);

                // activate correct anchor (visually)
                anchor.addClass("active").parent().siblings().find("a").removeClass("active");

                // activate correct div (visually)
                div.addClass("active").siblings().removeClass("active");

                // update URL, no history addition
                // You'd have this active in a real situation, but it causes issues in an <iframe> (like here on CodePen) in Firefox. So commenting out.
                // window.history.replaceState("", "", hash);

                // Close menu, in case mobile
                anchor.closest("ul").removeClass("open");

            },
            // If the page has a hash on load, go to that tab
            pageLoadCorrectTab: function () {
                this.changeTab(document.location.hash);
            },
            toggleMobileMenu: function (event, el) {
                $(el).closest("ul").toggleClass("open");
            }

        }

        Tabs.init();
    </script>

    <script>
        $("#profileImage").click(function (e) {
            $("#imageUpload").click();
        });

        function fasterPreview(uploader) {
            if (uploader.files && uploader.files[0]) {
                $('#profileImage').attr('src',
                    window.URL.createObjectURL(uploader.files[0]));
            }
        }

        $("#imageUpload").change(function () {
            fasterPreview(this);
        });
    </script>

    <script>
        $(document).ready(function () {
            var i = 1;
            $('#add').click(function () {
                i++;
                $('#dynamic_field').append('<tr id="row' + i + '"><td class="contact-address"><input id="name123" name="name123" type="text" placeholder="Enter Name"></td><td class="contact-address"><input id="Relationship" name="Relationship" type="text" placeholder="Relationship"></td><td class="contact-address"> <input id="Occupation" name="Occupation" type="text" placeholder="Occupation"></td><td class="contact-address"><select itemid="department123" class="dependent minimal" name="department" id="selectDepartment"><option value="0">Yes</option><option value="1">No</option></select></td><td class="contact-address"><button type="button" name="remove" id="' + i + '" class="btn btn-danger btn_remove">X</button></td></tr>');
            });

            $(document).on('click', '.btn_remove', function () {
                var button_id = $(this).attr("id");
                $('#row' + button_id + '').remove();
            });

            $('#submit').click(function () {
                $.ajax({
                    url: "name.php",
                    method: "POST",
                    data: $('#add_name').serialize(),
                    success: function (data) {
                        alert(data);
                        $('#add_name')[0].reset();
                    }
                });
            });

        });
    </script>

    <script>
        $("#nxt").click(function () {
            $("#2").click()
        });
        $("#bck2").click(function () {
            $("#1").click()
        });
        $("#nxt2").click(function () {
            $("#3").click()
        });
        $("#nxt3").click(function () {
            $("#4").click()
        });
        $("#bck3").click(function () {
            $("#2").click()
        });
        $("#nxt4").click(function () {
            $("#5").click()
        });
        $("#bck4").click(function () {
            $("#3").click()
        });
        $("#bck5").click(function () {
            $("#4").click()
        });
    </script>

    <script>
        // $(".answer").hide();
        // $(".coupon_question").click(function() {
        //     if ($(this).is(":checked")) {
        //         $(".answer").show();
        //     } else {
        //         $(".answer").hide();
        //     }
        // });
        // $(".coupon_question12").click(function() {
        //     if ($(this).is(":checked")) {
        //         $(".answer").hide();
        //     } else {
        //         $(".answer").hide();
        //     }
        // });
        $(".passport-yes").hide();
        $(document).ready(function () {
            $(".coupon_question12").click(function () {
                $(".passport-yes").hide();
            });
            $(".coupon_question").click(function () {
                $(".passport-yes").show();
            });
        });
    </script>


</body>
</html>
