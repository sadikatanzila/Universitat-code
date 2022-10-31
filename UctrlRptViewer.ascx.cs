using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using CrystalDecisions.CrystalReports;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
using System.Drawing.Printing;

public class CReportFactory
{
    protected static Queue reportQueue = new Queue();

    public static void AddReportDocument(ReportDocument rpt)
    {
        if (reportQueue.Count > int.Parse(ConfigurationManager.AppSettings["MaxReportQueue"].ToString()))
        {
            ReportDocument tmp = (ReportDocument)reportQueue.Dequeue();
            tmp.Close();
            tmp.Dispose();
        }

        reportQueue.Enqueue(rpt);
    }
}

public partial class MVTAX_Reports_UctrlRptViewer : System.Web.UI.UserControl
{
    ReportDocument _rptDoc = null;

    public ReportDocument RptDoc
    {
        get { return _rptDoc; }
        set { _rptDoc = value; }
    }


    PaperOrientation GetPaperOrientation(string _paperOrientation)
    {
        PaperOrientation _PaperOrientation = PaperOrientation.DefaultPaperOrientation;
        switch (_paperOrientation)
        {
            case "DefaultPaperOrientation":
                _PaperOrientation = PaperOrientation.DefaultPaperOrientation;
                break;
            case "Landscape":
                _PaperOrientation = PaperOrientation.Landscape;
                break;
            case "Portrait":
                _PaperOrientation = PaperOrientation.Portrait;
                break;

            default:
                _PaperOrientation = PaperOrientation.DefaultPaperOrientation;
                break;
        }
        return _PaperOrientation;
    }

    CrystalDecisions.Shared.PaperSize GetPaperSize(string _papersize)
    {
        CrystalDecisions.Shared.PaperSize _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperA4;
        switch (_papersize)
        {
            case "DefaultPaperSize":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.DefaultPaperSize;
                break;
            case "Paper10x14":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.Paper10x14;
                break;
            case "Paper11x17":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.Paper11x17;
                break;
            case "PaperA3":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperA3;
                break;
            case "PaperA4":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperA4;
                break;
            case "PaperA4Small":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperA4Small;
                break;
            case "PaperA5":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperA5;
                break;
            case "PaperB4":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperB4;
                break;
            case "PaperB5":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperB5;
                break;
            case "PaperCsheet":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperCsheet;
                break;
            case "PaperDsheet":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperDsheet;
                break;
            case "PaperEnvelope10":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelope10;
                break;
            case "PaperEnvelope11":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelope11;
                break;
            case "PaperEnvelope12":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelope12;
                break;
            case "PaperEnvelope14":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelope14;
                break;
            case "PaperEnvelope9":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelope9;
                break;
            case "PaperEnvelopeB4":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeB4;
                break;
            case "PaperEnvelopeB5":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeB5;
                break;
            case "PaperEnvelopeB6":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeB6;
                break;
            case "PaperEnvelopeC3":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeC3;
                break;
            case "PaperEnvelopeC4":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeC4;
                break;
            case "PaperEnvelopeC5":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeC5;
                break;
            case "PaperEnvelopeC6":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeC6;
                break;
            case "PaperEnvelopeC65":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeC65;
                break;
            case "PaperEnvelopeDL":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeDL;
                break;
            case "PaperEnvelopeItaly":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeItaly;
                break;
            case "PaperEnvelopeMonarch":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopeMonarch;
                break;
            case "PaperEnvelopePersonal":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEnvelopePersonal;
                break;
            case "PaperEsheet":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperEsheet;
                break;
            case "PaperExecutive":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperExecutive;
                break;
            case "PaperFanfoldLegalGerman":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperFanfoldLegalGerman;
                break;
            case "PaperFanfoldStdGerman":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperFanfoldStdGerman;
                break;
            case "PaperFanfoldUS":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperFanfoldUS;
                break;
            case "PaperFolio":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperFolio;
                break;
            case "PaperLedger":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperLedger;
                break;
            case "PaperLegal":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperLegal;
                break;
            case "PaperLetter":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperLetter;
                break;
            case "PaperLetterSmall":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperLetterSmall;
                break;
            case "PaperNote":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperNote;
                break;
            case "PaperQuarto":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperQuarto;
                break;
            case "PaperStatement":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperStatement;
                break;
            case "PaperTabloid":
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperTabloid;
                break;

            default:
                _PrintPaperSize = CrystalDecisions.Shared.PaperSize.PaperA4;
                break;
        }

        return _PrintPaperSize;
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.LoadPrinterList();
            this.LoadPaperSizes();
            this.LoadPaperOrientation();
        }

    }

    public void LoadPaperSizes()
    {
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.DefaultPaperSize.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.Paper10x14.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.Paper11x17.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperA3.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperA4.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperA4Small.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperA5.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperB4.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperB5.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperCsheet.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperDsheet.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelope10.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelope12.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelope14.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelope9.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeB4.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeB5.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeB6.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeC3.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeC4.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeC5.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeC6.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeC65.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeDL.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeItaly.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopeMonarch.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEnvelopePersonal.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperEsheet.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperExecutive.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperFanfoldLegalGerman.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperFanfoldStdGerman.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperFanfoldUS.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperFolio.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperLedger.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperLegal.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperLetter.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperLetterSmall.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperNote.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperQuarto.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperStatement.ToString());
        this.cboPaperSize.Items.Add(CrystalDecisions.Shared.PaperSize.PaperTabloid.ToString());
    }

    public void LoadPaperOrientation()
    {

        //this._rptDoc.PrintOptions.PaperOrientation = PaperOrientation.
        this.cboPaperOrientation.Items.Add(PaperOrientation.DefaultPaperOrientation.ToString());
        this.cboPaperOrientation.Items.Add(PaperOrientation.Landscape.ToString());
        this.cboPaperOrientation.Items.Add(PaperOrientation.Portrait.ToString());
    }

    public void LoadPrinterList()
    {
        PrinterSettings settings = new PrinterSettings();



        this.cboPrinterList.DataSource = PrinterSettings.InstalledPrinters;
        this.cboPrinterList.DataBind();

        foreach (string printer in PrinterSettings.InstalledPrinters)
        {
            settings.PrinterName = printer;
            if (settings.IsDefaultPrinter)
            {
                this.cboPrinterList.SelectedValue = printer;
            }
        }
    }

    public void LoadReport()
    {
        if (this._rptDoc != null)
        {
            this.CrystalReportViewer1.ReportSource = this._rptDoc;

            this.CrystalReportViewer1.DataBind();
        }
        else
        {
            throw new InvalidOperationException("Report Document is needed");
        }
    }

    protected void CrystalReportViewer1_ReportRefresh(object source, ViewerEventArgs e)
    {
        ReportDocument rpt = new ReportDocument();

        e.Handled = true;
        rpt = (CrystalDecisions.CrystalReports.Engine.ReportDocument)this.CrystalReportViewer1.ReportSource;
        CrystalReportViewer1.ReportSource = null;
        CrystalReportViewer1.ParameterFieldInfo = rpt.ParameterFields;
        rpt.Refresh();
        CrystalReportViewer1.ReportSource = rpt;

    }

    protected void CrystalReportViewer1_ViewZoom(object source, ZoomEventArgs e)
    {
        this.CrystalReportViewer1.ReportSource = this._rptDoc;
        this.CrystalReportViewer1.DataBind();
        CrystalReportViewer1.PageZoomFactor = e.NewZoomFactor;

    }

    protected void btnFirst_Click(object sender, EventArgs e)
    {
        this.CrystalReportViewer1.ShowFirstPage();
        this.CrystalReportViewer1.ReportSource = this._rptDoc;
        this.CrystalReportViewer1.DataBind();
    }


    protected void btnPrev_Click(object sender, EventArgs e)
    {
        this.CrystalReportViewer1.ShowPreviousPage();
        this.CrystalReportViewer1.ReportSource = this._rptDoc;
        this.CrystalReportViewer1.DataBind();
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        this.CrystalReportViewer1.ShowNextPage();
        this.CrystalReportViewer1.ReportSource = this._rptDoc;
        this.CrystalReportViewer1.DataBind();
    }

    protected void btnLast_Click(object sender, EventArgs e)
    {
        this.CrystalReportViewer1.ShowLastPage();
        this.CrystalReportViewer1.ReportSource = this._rptDoc;
        this.CrystalReportViewer1.DataBind();
    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {
        int nCopies = 1;
        int.TryParse(this.txtNoCopies.Text.Trim(), out nCopies);

        int startPageN = 0;
        int.TryParse(this.txtPageFrom.Text.Trim(), out startPageN);

        int endPageN = 0;
        int.TryParse(this.txtPageTo.Text.Trim(), out endPageN);

        if (this.cboPrinterList.SelectedItem != null)
        {
            this._rptDoc.PrintOptions.PrinterName = this.cboPrinterList.SelectedValue;
        }

        if (this.cboPaperSize.SelectedItem != null)
        {
            this._rptDoc.PrintOptions.PaperSize = this.GetPaperSize(this.cboPaperSize.SelectedItem.Text);
        }
        if (this.cboPaperOrientation.SelectedItem != null)
        {
            this._rptDoc.PrintOptions.PaperOrientation = this.GetPaperOrientation(this.cboPaperOrientation.SelectedItem.Text);
        }

        this._rptDoc.PrintToPrinter(nCopies, this.chkCollated.Checked, startPageN, endPageN);
    }
}