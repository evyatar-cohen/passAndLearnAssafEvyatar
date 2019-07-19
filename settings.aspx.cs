using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Drawing;

public partial class Settings : System.Web.UI.Page
{
    XmlDocument myDoc = new XmlDocument();

    protected void Page_init(object sender, EventArgs e)
    {
        myDoc.Load(Server.MapPath("trees/XMLFile.xml"));
        string theItemId = Session["theItemIdSession"].ToString();
        XmlDataSource3.XPath = "/games/game[@id=" + theItemId + "]/question";
        XmlNode node = myDoc.SelectSingleNode("/games/game[@id='" + theItemId + "']");
        addNameTB2.Text = Server.UrlDecode(node.SelectSingleNode("title").InnerText);

    }



    protected void updateXmlAndNext(object sender, EventArgs e)
    {

        updateXml();
        Response.Redirect("Edit.aspx");

    }

    protected void updateXmlAndBack(object sender, EventArgs e)
    {
        updateXml();
        Response.Redirect("Default.aspx");
    }

    protected void updateXml()
    {
        string theItemId = Session["theItemIdSession"].ToString();

        XmlNode myTitle = myDoc.SelectSingleNode("/games/game[@id='" + theItemId + "']/title");
        XmlNode myTimePerTask = myDoc.SelectSingleNode("/games/game[@id='" + theItemId + "']");

        myTitle.InnerXml = Server.UrlEncode(addNameTB2.Text);
        if (DropDownList1.SelectedValue == "0")
        {
            myTimePerTask.Attributes["timePerTask"].Value = "noLimit";
        }
        if (DropDownList1.SelectedValue == "1")
        {
            myTimePerTask.Attributes["timePerTask"].Value = "30";
        }
        if (DropDownList1.SelectedValue == "2")
        {
            myTimePerTask.Attributes["timePerTask"].Value = "45";
        }
        if (DropDownList1.SelectedValue == "3")
        {
            myTimePerTask.Attributes["timePerTask"].Value = "60";
        }
        XmlNode check = myDoc.SelectSingleNode("/games/game[@id='" + theItemId + "']/@timePerTask");
        Label1.Text = myTitle.InnerXml.ToString() + " " + check.InnerXml.ToString();


        myDoc.Save(Server.MapPath("trees/XMLFile.xml"));
        XmlDataSource3.Save();
    }
}