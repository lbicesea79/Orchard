<%@ Control Language="C#" Inherits="Orchard.Mvc.ViewUserControl<Orchard.ContentTypes.ViewModels.ListContentPartsViewModel>" %>
<h1><%:Html.TitleForPage(T("Content Types").ToString())%></h1>
<p class="breadcrumb"><%:Html.ActionLink(T("Content Types").Text, "index") %><%:T(" &#62; ") %><%:T("Content Parts") %></p>
<div class="manage">
    <%:Html.ActionLink(T("Create new part").ToString(), "CreatePart", new{Controller="Admin",Area="Orchard.ContentTypes"}, new { @class = "button primaryAction" }) %>
</div>
<%:Html.UnorderedList(
    Model.Parts,
    (t,i) => Html.DisplayFor(m => t),
    "contentItems"
    ) %>