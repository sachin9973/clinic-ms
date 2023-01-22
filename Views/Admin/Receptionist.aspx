<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="ClinicHospitalMS.Views.Admin.Receptionist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h1>Receptionist Detail</h1>
                <div class="mb-3">
                    <label for="Rec_Name" class="form-label">Name</label>
                    <asp:TextBox ID="Rec_Name" class="form-control" runat="server" placeholder="Enter Your Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ForeColor="Red"
                         ControlToValidate="Rec_Name" SetFocusOnError="true" ToolTip="Enter Name" >
                    </asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <label for="Rec_Email" class="form-label">Email</label>
                    <asp:TextBox ID="Rec_Email" class="form-control" runat="server" placeholder="Enter Your Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Envalid Email " ForeColor="Red"
                         ControlToValidate="Rec_Email" SetFocusOnError="true">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <label for="Rec_Password" class="form-label">Password</label>
                    <asp:TextBox ID="Rec_Password" TextMode="Password" class="form-control" runat="server" placeholder="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter password" ForeColor="Red"
                         ControlToValidate="Rec_Password" SetFocusOnError="true">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <label for="Rec_Phone" class="form-label">Phone</label>
                    <asp:TextBox ID="Rec_Phone" class="form-control" runat="server" placeholder="Enter Your Phone"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your Phone" ForeColor="Red"
                         ControlToValidate="Rec_Phone" SetFocusOnError="true">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <label for="Rec_Address" class="form-label">Address</label>
                    <asp:TextBox ID="Rec_Address" class="form-control" runat="server" placeholder="Enter Your Address"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Your Address" ForeColor="Red"
                         ControlToValidate="Rec_Address" SetFocusOnError="true">
                    </asp:RequiredFieldValidator>
                </div>
                <label runat="server" id="ErrMsg" class="text-success"></label>
                <br />
                <asp:Button ID="btn_Save_as" runat="server" Text="Save as" CssClass="btn btn-primary" OnClick="btn_Save_as_Click" />
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/Hospital.jpg" style="height: 220px; width: 100%" class="rounded" />
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Receptionist Details </h1>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" class="table table-hover"
                                AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                                OnRowUpdating="GridView1_RowUpdating" AutoPostback="true" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Rec_Id" HeaderText="Rec_Id" ReadOnly="True" />
                                    <asp:BoundField DataField="Rec_Name" HeaderText="Rec_Name" />
                                    <asp:BoundField DataField="Rec_Email" HeaderText="Rec_Email" />
                                    <asp:BoundField DataField="Rec_Password" HeaderText="Rec_Password" />
                                    <asp:BoundField DataField="Rec_Phone" HeaderText="Rec_Phone" />
                                    <asp:BoundField DataField="Rec_Address" HeaderText="Rec_Address" />
                                    <asp:CommandField ShowEditButton="True"  HeaderText="Manage"   />
                                    <asp:CommandField ShowDeleteButton="True" HeaderText="Manage"  />
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
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
