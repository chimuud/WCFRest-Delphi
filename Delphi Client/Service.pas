// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:57109/Service.svc?wsdl
//  >Import : http://localhost:57109/Service.svc?wsdl>0
//  >Import : http://localhost:57109/Service.svc?xsd=xsd0
//  >Import : http://localhost:57109/Service.svc?xsd=xsd2
//  >Import : http://localhost:57109/Service.svc?xsd=xsd1
// Encoding : utf-8
// Codegen  : [wfServer+, wfGenTrueGUIDs+]
// Version  : 1.0
// (5/11/2020 4:06:24 PM - - $Rev: 96726 $)
// ************************************************************************ //

unit Service;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  DoWork               = class;                 { "http://tempuri.org/"[GblElm] }
  DoWorkResponse       = class;                 { "http://tempuri.org/"[GblElm] }
  GetJil               = class;                 { "http://tempuri.org/"[GblElm] }
  GetJilResponse       = class;                 { "http://tempuri.org/"[GblElm] }

  {$SCOPEDENUMS ON}
  { "http://schemas.datacontract.org/2004/07/Zurlaga"[GblSmpl] }
  enJils = (
      Hulgana,
      Uher,
      Bar,
      Tuulai,
      Luu,
      Mogoi,
      Mori,
      Honi,
      Bich,
      Tahia,
      Nohoi,
      Gahai
  );

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : DoWork, global, <element>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  DoWork = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DoWorkResponse, global, <element>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  DoWorkResponse = class(TRemotable)
  private
    FDoWorkResult: string;
    FDoWorkResult_Specified: boolean;
    procedure SetDoWorkResult(Index: Integer; const Astring: string);
    function  DoWorkResult_Specified(Index: Integer): boolean;
  published
    property DoWorkResult: string  Index (IS_OPTN) read FDoWorkResult write SetDoWorkResult stored DoWorkResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetJil, global, <element>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  GetJil = class(TRemotable)
  private
    FTorsonOn: Integer;
    FTorsonOn_Specified: boolean;
    procedure SetTorsonOn(Index: Integer; const AInteger: Integer);
    function  TorsonOn_Specified(Index: Integer): boolean;
  published
    property TorsonOn: Integer  Index (IS_OPTN) read FTorsonOn write SetTorsonOn stored TorsonOn_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetJilResponse, global, <element>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  GetJilResponse = class(TRemotable)
  private
    FGetJilResult: enJils;
    FGetJilResult_Specified: boolean;
    procedure SetGetJilResult(Index: Integer; const AenJils: enJils);
    function  GetJilResult_Specified(Index: Integer): boolean;
  published
    property GetJilResult: enJils  Index (IS_OPTN) read FGetJilResult write SetGetJilResult stored GetJilResult_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // style     : ????
  // use       : ????
  // ************************************************************************ //
  IService = interface(IInvokable)
  ['{116111E4-6313-4E88-9D61-6B8DE47F3E77}']
    function  DoWork(const parameters: DoWork): DoWorkResponse; stdcall;
    function  GetJil(const parameters: GetJil): GetJilResponse; stdcall;
  end;



implementation

type

  IServiceImpl = class(TInvokableClass, IService)
  public
    { IService }
    function  DoWork(const parameters: DoWork): DoWorkResponse; stdcall;
    function  GetJil(const parameters: GetJil): GetJilResponse; stdcall;
  end;

function IServiceImpl.DoWork(const parameters: DoWork): DoWorkResponse;
begin
  { TODO - Implement method DoWork }
end;

function IServiceImpl.GetJil(const parameters: GetJil): GetJilResponse;
begin
  { TODO - Implement method GetJil }
end;

procedure DoWorkResponse.SetDoWorkResult(Index: Integer; const Astring: string);
begin
  FDoWorkResult := Astring;
  FDoWorkResult_Specified := True;
end;

function DoWorkResponse.DoWorkResult_Specified(Index: Integer): boolean;
begin
  Result := FDoWorkResult_Specified;
end;

procedure GetJil.SetTorsonOn(Index: Integer; const AInteger: Integer);
begin
  FTorsonOn := AInteger;
  FTorsonOn_Specified := True;
end;

function GetJil.TorsonOn_Specified(Index: Integer): boolean;
begin
  Result := FTorsonOn_Specified;
end;

procedure GetJilResponse.SetGetJilResult(Index: Integer; const AenJils: enJils);
begin
  FGetJilResult := AenJils;
  FGetJilResult_Specified := True;
end;

function GetJilResponse.GetJilResult_Specified(Index: Integer): boolean;
begin
  Result := FGetJilResult_Specified;
end;

initialization
  { IService }
  InvRegistry.RegisterInterface(TypeInfo(IService), 'http://tempuri.org/', 'utf-8');
  { IService - Server implementation class }
  InvRegistry.RegisterInvokableClass(IServiceImpl);
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IService), '');
  RemClassRegistry.RegisterXSClass(DoWork, 'http://tempuri.org/', 'DoWork');
  RemClassRegistry.RegisterXSClass(DoWorkResponse, 'http://tempuri.org/', 'DoWorkResponse');
  RemClassRegistry.RegisterXSClass(GetJil, 'http://tempuri.org/', 'GetJil');
  RemClassRegistry.RegisterXSInfo(TypeInfo(enJils), 'http://schemas.datacontract.org/2004/07/Zurlaga', 'enJils');
  RemClassRegistry.RegisterXSClass(GetJilResponse, 'http://tempuri.org/', 'GetJilResponse');

end.
