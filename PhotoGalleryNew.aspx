<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="PhotoGalleryNew.aspx.cs" Inherits="Eastern_Uni.PhotoGalleryNew" %>
<%@ Register Assembly="DevExpress.Web.v9.1" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dxpc" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .dxisControl .dxis-passePartout {
            background-color: transparent !important;
        }
        .dxisControl .dxis-nextBtnHorWrapper, .dxisControl .dxis-prevBtnHorWrapper {
            background-color: transparent !important;
        }
        .dxisControl .dxis-nbBottom {
            padding-left: 100px;
            padding-right: 100px;
        }
    </style>
    <script type="text/javascript">
        function OnControlsInitialized() {
            if (window.location.hash)
                OnImageClick(window.location.hash.substring(1));
            ASPxClientUtils.AttachEventToElement(window, "keydown", KeyHandler);
            ASPxClientUtils.AttachEventToElement(window, "resize", UpdatePopupPosition);
        }
        function OnImageClick(name) {
            var imageSliderItem = imageSlider.GetItemByName(name);
            if (!imageSliderItem)
                return;
            window.location.hash = name;
            popup.Show();
            window.setTimeout(function () { UpdatePopupPosition(); }, 0);
            imageSlider.SetActiveItem(imageSliderItem, true);
            UpdateText();
        }
        function OnActiveItemChanged(s, e) {
            window.location.hash = e.item.name;
            UpdateText();
        }
        function OnPopupCloseUp() {
            if (history.pushState)
                history.pushState("", "", location.pathname + location.search);
            else
                location.hash = "";
        }
        function OnPopupUp() {
            imageSlider.Focus();
        }
        function KeyHandler(e) {
            if (e.keyCode == ASPxClientUtils.StringToShortcutCode("ESC"))
                popup.Hide();
            if (e.keyCode == ASPxClientUtils.StringToShortcutCode("SPACE"))
                imageSlider.SetActiveItemIndex(imageSlider.GetActiveItemIndex() + 1);
            return true;
        }
        function UpdateText() {
            document.getElementById("itemText").innerHTML = (imageSlider.GetActiveItemIndex() + 1) + " / " + imageSlider.GetItemCount();
        }
        function UpdatePopupPosition() {
            if (popup.IsVisible())
                popup.UpdatePosition();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        Click a photo to enlarge it.</p>
    <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ClientInstanceName="popup" Modal="true"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" BackColor="Transparent"
        ShowShadow="false" Border-BorderStyle="None" ShowHeader="false" ShowPageScrollbarWhenModal="false" EnableTheming="false">
        <ContentStyle Paddings-Padding="0" Border-BorderWidth="0" />
        <ClientSideEvents CloseUp="OnPopupCloseUp" PopUp="OnPopupUp" />
        <ModalBackgroundStyle Opacity="100" BackColor="#1a1a1a" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <table>
                    <tr>
                        <td style="padding-right: 11px; padding-bottom: 21px; text-align: right">
                            <a href="javascript:popup.Hide();" style="padding: 20px; margin-right: -20px;">
                                <img alt="Close" src="images/close.png" width="10" height="10" title="Press Esc to close" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-bottom: 36px;">
                            <dx:ASPxImageSlider ID="ASPxImageSlider1" runat="server" ClientInstanceName="imageSlider"
                                DataSourceID="xmlImages" NameField="Id" Width="860"
                                EnableTheming="false" ThumbnailUrlField="ThumbnailUrl" ShowNavigationBar="false">
                                <SettingsImageArea ItemTextVisibility="None" NavigationButtonVisibility="Always" />
                                <SettingsBehavior EnablePagingByClick="True" />
                                <Styles>
                                    <ImageArea Width="660" Height="660" />
                                </Styles>
                                <ClientSideEvents ActiveItemChanged="OnActiveItemChanged" />
                            </dx:ASPxImageSlider>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-bottom: 36px; text-align: center">
                            <span style="color: #ffffff; font-size: 9pt; font-family: 'Segoe UI', 'Helvetica Neue', Tahoma;" id="itemText">
                                1/20</span>
                        </td>
                    </tr>
                </table>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None"></Border>
    </dx:ASPxPopupControl>
    <dx:ASPxDataView ID="dvGalery" runat="server" DataSourceID="xmlImages" AllowPaging="False"
        Layout="Flow" PageIndex="-1" Width="632px" ItemSpacing="4"
        EnableTheming="false">
        <SettingsFlowLayout ItemsPerPage="4" />
        <ItemTemplate>
            <a href='<%# string.Format("javascript:OnImageClick(\"{0}\")", Eval("Id"))%>'>
                <dx:ASPxImage runat="server" ImageUrl='<%# Eval("MediumImageUrl") %>' AlternateText='<%# Eval("Text")%>' Width="150" Height="150" ShowLoadingImage="true"></dx:ASPxImage>
            </a>
        </ItemTemplate>
        <Paddings Padding="0px" />
        <ItemStyle Height="152px" Width="152px" BackColor="Transparent" Border-BorderStyle="None">
            <Paddings Padding="0px" />
            <Border BorderWidth="1px" />
        </ItemStyle>
    </dx:ASPxDataView>
    <dx:ASPxGlobalEvents ID="ASPxGlobalEvents1" runat="server">
        <ClientSideEvents ControlsInitialized="OnControlsInitialized" />
    </dx:ASPxGlobalEvents>
    <asp:XmlDataSource ID="xmlImages" runat="server" DataFile="~/App_Data/ImageSlider/photo_gallery.xml"
        XPath="//items/*"></asp:XmlDataSource>
</asp:Content>
