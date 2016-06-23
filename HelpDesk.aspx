<%@ Page Title="Dorknozzle Help Desk" Language="C#" MasterPageFile="~/Dorknozzle.master"
    AutoEventWireup="true" CodeFile="HelpDesk.aspx.cs" Inherits="HelpDesk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Employee Help Desk Request</h1>
    <p>
        Station Number:<br />
        <asp:TextBox ID="stationTextBox" runat="server"
            CssClass="textbox" />
        <asp:RequiredFieldValidator ID="stationNumReq" runat="server"
            ControlToValidate="stationTextBox"
            ErrorMessage="<br /> You must enter a station number!"
            Display="Dynamic" SetFocusOnError="true" />
        <asp:CompareValidator ID="stationNumCheck" runat="server"
            ControlToValidate="stationTextBox"
            Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="<br /> The value must be a number!"
            Display="Dynamic" SetFocusOnError="true" />
        <asp:RangeValidator ID="stationNumRangeCheck" runat="server"
            ControlToValidate="stationTextBox"
            MinimumValue="1" MaximumValue="50" Type="Integer"
            ErrorMessage="<br />Number must be between 1 and 50."
            Display="Dynamic" SetFocusOnError="true" />
    </p>
    <p>
        Problem Category:<br />
        <asp:DropDownList ID="categoryList" runat="server"
            CssClass="dropdownmenu" />
    </p>
    <p>
        Problem Subject:<br />
        <asp:DropDownList ID="subjectList" runat="server"
            CssClass="dropdownmenu" />
    </p>
    <p>
        Problem Description:<br />
        <asp:TextBox ID="descriptionTextBox" runat="server"
            CssClass="textbox" Columns="40" Rows="4"
            TextMode="MultiLine" />
        <asp:RequiredFieldValidator ID="descriptionReq" runat="server"
            ControlToValidate="descriptionTextBox"
            ErrorMessage="<br />You must enter a description!"
            Display="Dynamic" SetFocusOnError="true" />
    </p>
    <p>
        <asp:Button ID="submitButton" runat="server"
            CssClass="button" Text="Submit Request" 
            OnClick="submitButton_Click" />
    </p>
</asp:Content>

