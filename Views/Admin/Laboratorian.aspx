<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Laboratorian.aspx.cs" Inherits="ClinicHospitalMS.Views.Admin.Laboratorian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h1>Laboratorian Detail</h1>
                <div class="mb-3">
                    <label for="Lab_Name" class="form-label">Name</label>
                    <asp:TextBox ID="Lab_Name" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Lab_Email" class="form-label">Email</label>
                    <asp:TextBox ID="Lab_Email" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Lab_Password" class="form-label">Password</label>
                    <asp:TextBox ID="Lab_Password" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Lab_Phone" class="form-label">Phone</label>
                    <asp:TextBox ID="Lab_Phone" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Lab_Address" class="form-label">Address</label>
                    <asp:TextBox ID="Lab_Address" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Lab_Gender" class="form-label">Gender</label>
                    <asp:TextBox ID="Lab_Gender" class="form-control" runat="server"></asp:TextBox>
                </div>
                <label runat="server" id="ErrMsg" class="text-danger"></label>
                <br />
                <asp:Button ID="btn_Save_as" runat="server" Text="Save as" CssClass="btn btn-primary" OnClick="btn_Add_Click" />
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/Lab.jpg" style="height: 220px; width: 100%" class="rounded" />
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Laboratorian Details </h1>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="False"
                                OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
                                OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" AutoPostback="true" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField ApplyFormatInEditMode="True" DataField="Lab_Id" HeaderText="Lab_Id" ReadOnly="True" />
                                    <asp:BoundField DataField="Lab_Name" HeaderText="Lab_Name" />
                                    <asp:BoundField DataField="Lab_Email" HeaderText="Lab_Email" />
                                    <asp:BoundField DataField="Lab_Password" HeaderText="Lab_Password" />
                                    <asp:BoundField DataField="Lab_Phone" HeaderText="Lab_Phone" />
                                    <asp:BoundField DataField="Lab_Address" HeaderText="Lab_Address" />
                                    <asp:BoundField DataField="Lab_Gender" HeaderText="Lab_Gender" />
                                    <asp:CommandField HeaderText="Manage" ShowEditButton="True" />
                                    <asp:CommandField HeaderText="Manage" ShowDeleteButton="True" />
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
