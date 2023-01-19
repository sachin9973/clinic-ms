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
                    <asp:TextBox ID="Rec_Name" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Rec_Email" class="form-label">Email</label>
                    <asp:TextBox ID="Rec_Email" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Rec_Password" class="form-label">Password</label>
                    <asp:TextBox ID="Rec_Password" class="form-control"  runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Rec_Phone" class="form-label">Phone</label>
                    <asp:TextBox ID="Rec_Phone" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Rec_Address" class="form-label">Address</label>
                    <asp:TextBox ID="Rec_Address" class="form-control" runat="server"></asp:TextBox>
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
                        <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" >
                            <Columns>
                                <asp:BoundField DataField="Rec_Id" HeaderText="Rec_Id" ReadOnly="True" />
                                <asp:BoundField DataField="Rec_Name" HeaderText="Rec_Name" />
                                <asp:BoundField DataField="Rec_Email" HeaderText="Rec_Email" />
                                <asp:BoundField DataField="Rec_Password" HeaderText="Rec_Password" />
                                <asp:BoundField DataField="Rec_Phone" HeaderText="Rec_Phone" />
                                <asp:BoundField DataField="Rec_Address" HeaderText="Rec_Address" />
                                <asp:CommandField ShowEditButton="True" HeaderText="Manage"/>
                                <asp:CommandField ShowDeleteButton="True" HeaderText="Manage"/>
                            </Columns>

                        </asp:GridView>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
