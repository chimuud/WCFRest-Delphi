unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Service, Vcl.StdCtrls, REST.Types, Soap.InvokeRegistry, System.Net.URLClient,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Soap.Rio,
  Soap.SOAPHTTPClient, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  System.TypInfo, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Samples.Spin,
  System.Generics.Collections,
  uWCFRest;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    Panel1: TPanel;
    edURL: TEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    btnGetMember: TButton;
    SpinEdit1: TSpinEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter1: TSplitter;
    mmRequest: TMemo;
    Label3: TLabel;
    Splitter2: TSplitter;
    Label4: TLabel;
    mmResponse: TMemo;
    GroupBox2: TGroupBox;
    btnGetList: TButton;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edFirstName: TEdit;
    edLastName: TEdit;
    btnGetMemberByName: TButton;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    edFirst: TEdit;
    edMiddle: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edLast: TEdit;
    edAge: TEdit;
    Label10: TLabel;
    btnPost: TButton;
    procedure btnGetMemberClick(Sender: TObject);
    procedure btnGetListClick(Sender: TObject);
    procedure btnGetMemberByNameClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
  private
    WCFRest: TWCFRest;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  IOUtils, JSON;

{$R *.dfm}

procedure TForm1.btnGetListClick(Sender: TObject);
var
  params: TDictionary<string, Variant>;
begin
  WCFRest := TWCFRest.Create(edURL.Text);
  try
    mmResponse.Text := WCFRest.Get('GetMembers');
    mmRequest.Text := WCFRest.RequestText;
  finally
    WCFRest.Free;
  end;
end;

procedure TForm1.btnGetMemberClick(Sender: TObject);
var
  params: TDictionary<string, Variant>;
begin
  WCFRest := TWCFRest.Create(edURL.Text);
  params := TDictionary<string, Variant>.Create;
  try
    params.Add('ID', SpinEdit1.Value);
    mmResponse.Text := WCFRest.Get('GetMember', params);
    mmRequest.Text := WCFRest.RequestText;
  finally
    params.Free;
    WCFRest.Free;
  end;
end;

procedure TForm1.btnGetMemberByNameClick(Sender: TObject);
var
  params: TDictionary<string, Variant>;
begin
  WCFRest := TWCFRest.Create(edURL.Text);
  params := TDictionary<string, Variant>.Create;
  try
    params.Add('FirstName', edFirstName.Text);
    params.Add('LastName', edLastName.Text);
    mmResponse.Text := WCFRest.Get('GetMemberByName', params);
    mmRequest.Text := WCFRest.RequestText;
  finally
    params.Free;
    WCFRest.Free;
  end;
end;

procedure TForm1.btnPostClick(Sender: TObject);
var
  Json: TJSONObject;
begin
  WCFRest := TWCFRest.Create(edURL.Text);
  Json := TJSONObject.Create;
  try
    Json.AddPair('FirstName', edFirst.Text);
    Json.AddPair('MiddleName', edMiddle.Text);
    Json.AddPair('LastName', edLast.Text);
    Json.AddPair('Age', edAge.Text);
    mmResponse.Text := WCFRest.Post('AddMember', Json.ToJSON).ToString;
    mmRequest.Text := WCFRest.RequestText;
  finally
    WCFRest.Free;
  end;
end;

end.
