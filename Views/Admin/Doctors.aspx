<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="ClinicHospitalMS.Views.Admin.Doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h1>Doctor Detail</h1>
                <div class="mb-3">
                    <label for="Doc_Name" class="form-label">Doctor Name</label>
                    <asp:TextBox ID="Doc_Name" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Doc_Phone" class="form-label">Phone Number</label>
                    <asp:TextBox ID="Doc_Phone" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Doc_Exp" class="form-label">Experiance</label>
                    <asp:TextBox ID="Doc_Exp" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Doc_Spec" class="form-label">Specialisation</label>
                    <asp:TextBox ID="Doc_Spec" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Doc_Email" class="form-label">Email address</label>
                    <asp:TextBox ID="Doc_Email" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Doc_Pass" class="form-label">Password</label>
                    <asp:TextBox ID="Doc_Password" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Doc_Gender" class="form-label">Gender</label>
                    <asp:TextBox ID="Doc_Gender" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Doc_Address" class="form-label">Address</label>
                    <asp:TextBox ID="Doc_Address" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Doc_Dob" class="form-label">Date of Birth</label>
                    <asp:TextBox ID="Doc_Dob" TextMode="Date" class="form-control" runat="server"></asp:TextBox>
                </div>
                <label runat="server" id="ErrMsg" class="text-danger"></label>
                <br />
                <asp:Button ID="btn_Save_as" runat="server" Text="Save as" CssClass="btn btn-primary" OnClick="btn_Save_as_Click" />
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/Doctors.jpg" style="height: 220px; width: 100%" class="rounded" />
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Doctor Details </h1>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" class="table table-hover" runat="server"
                                AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                                OnRowUpdating="GridView1_RowUpdating" AutoPostback="true" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Doc_Id" HeaderText="Doc_Id" ReadOnly="True" />
                                    <asp:BoundField DataField="Doc_Name" HeaderText="Doc_Name" />
                                    <asp:BoundField DataField="Doc_Phone" HeaderText="Doc_Phone" />
                                    <asp:BoundField DataField="DocExp" HeaderText="DocExp" />
                                    <asp:BoundField DataField="Doc_Spec" HeaderText="Doc_Spec" />
                                    <asp:BoundField DataField="Doc_Email" HeaderText="Doc_Email" />
                                    <asp:BoundField DataField="Doc_Password" HeaderText="Doc_Password" />
                                    <asp:BoundField DataField="Doc_Gender" HeaderText="Doc_Gender" />
                                    <asp:BoundField DataField="Doc_Address" HeaderText="Doc_Address" />
                                    <asp:BoundField DataField="Doc_Dob" HeaderText="Doc_Dob" />                                  
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
