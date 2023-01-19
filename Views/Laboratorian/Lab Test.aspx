<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Laboratorian/LaboratorianMaster.Master" AutoEventWireup="true" CodeBehind="Lab Test.aspx.cs" Inherits="ClinicHospitalMS.Views.Laboratorian.Lab_Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h1>Laboratory Test Detail</h1>
                <div class="mb-3">
                    <label for="Test_Name" class="form-label">Test_Name</label>
                    <asp:TextBox ID="Test_Name" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="Test_Cost" class="form-label">Test_Cost</label>
                    <asp:TextBox ID="Test_Cost" class="form-control" runat="server"></asp:TextBox>
                </div>
                <label runat="server" id="ErrMsg" class="text-danger"></label>
                <br />
                <asp:Button ID="btn_Save_as" runat="server" Text="Save as" CssClass="btn btn-primary" />
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/Lab.jpg" style="height: 220px; width: 100%" class="rounded" />
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Laboratory Test Details </h1>
                        <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="False" >
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

                        </asp:GridView>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
