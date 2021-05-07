unit Praktika_Vnukovo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.StdCtrls,
  Vcl.FileCtrl, Xml.XMLDoc, Xml.XmlTransform, Xml.adomxmldom, Vcl.CheckLst,
  Vcl.Menus, Vcl.AppAnalytics;

type
  TForm2 = class(TForm)
    Выберете_фаил: TLabel;
    Button1: TButton;
    XMLTransform1: TXMLTransform;
    Documents: TXMLDocument;
    DriveComboBox1: TDriveComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    AppAnalytics1: TAppAnalytics;
    MainMenu1: TMainMenu;
    a1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
