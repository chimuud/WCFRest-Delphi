object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 434
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 523
    Top = 0
    Height = 434
    ExplicitLeft = 304
    ExplicitTop = 112
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 523
    Height = 434
    Align = alLeft
    TabOrder = 0
    ExplicitLeft = -1
    DesignSize = (
      523
      434)
    object Label2: TLabel
      Left = 24
      Top = 26
      Width = 56
      Height = 13
      Caption = 'Service URI'
    end
    object edURL: TEdit
      Left = 24
      Top = 45
      Width = 467
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'http://localhost:50068/MyFamily.svc'
    end
    object GroupBox1: TGroupBox
      Left = 152
      Top = 104
      Width = 153
      Height = 105
      Caption = 'GetMember(ID: Integer)'
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 28
        Width = 52
        Height = 13
        Caption = 'Member ID'
      end
      object btnGetMember: TButton
        Left = 82
        Top = 45
        Width = 60
        Height = 25
        Caption = 'GET'
        TabOrder = 0
        OnClick = btnGetMemberClick
      end
      object SpinEdit1: TSpinEdit
        Left = 16
        Top = 47
        Width = 60
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = 104
      Width = 105
      Height = 105
      Caption = 'GetMembers'
      TabOrder = 2
      object btnGetList: TButton
        Left = 16
        Top = 45
        Width = 75
        Height = 25
        Caption = 'GET List'
        TabOrder = 0
        OnClick = btnGetListClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 24
      Top = 232
      Width = 204
      Height = 129
      Caption = 'GetMemberByName'
      TabOrder = 3
      object Label5: TLabel
        Left = 16
        Top = 28
        Width = 51
        Height = 13
        Caption = 'First Name'
      end
      object Label6: TLabel
        Left = 16
        Top = 55
        Width = 50
        Height = 13
        Caption = 'Last Name'
      end
      object edFirstName: TEdit
        Left = 73
        Top = 25
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edLastName: TEdit
        Left = 72
        Top = 52
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object btnGetMemberByName: TButton
        Left = 73
        Top = 79
        Width = 75
        Height = 25
        Caption = 'GET'
        TabOrder = 2
        OnClick = btnGetMemberByNameClick
      end
    end
    object GroupBox4: TGroupBox
      Left = 256
      Top = 232
      Width = 225
      Height = 185
      Caption = 'GroupBox4'
      TabOrder = 4
      object Label7: TLabel
        Left = 24
        Top = 36
        Width = 51
        Height = 13
        Caption = 'First Name'
      end
      object Label8: TLabel
        Left = 15
        Top = 63
        Width = 60
        Height = 13
        Caption = 'Middle Name'
      end
      object Label9: TLabel
        Left = 25
        Top = 90
        Width = 50
        Height = 13
        Caption = 'Last Name'
      end
      object Label10: TLabel
        Left = 57
        Top = 117
        Width = 19
        Height = 13
        Caption = 'Age'
      end
      object edFirst: TEdit
        Left = 81
        Top = 33
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edMiddle: TEdit
        Left = 81
        Top = 60
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edLast: TEdit
        Left = 81
        Top = 87
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edAge: TEdit
        Left = 82
        Top = 114
        Width = 120
        Height = 21
        TabOrder = 3
      end
      object btnPost: TButton
        Left = 80
        Top = 141
        Width = 75
        Height = 25
        Caption = 'POST'
        TabOrder = 4
        OnClick = btnPostClick
      end
    end
  end
  object Panel2: TPanel
    Left = 526
    Top = 0
    Width = 318
    Height = 434
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 157
      Width = 316
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 42
      ExplicitWidth = 116
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 316
      Height = 156
      Align = alTop
      TabOrder = 0
      object Label3: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 308
        Height = 13
        Align = alTop
        Caption = 'Request'
        ExplicitWidth = 40
      end
      object mmRequest: TMemo
        Left = 1
        Top = 20
        Width = 314
        Height = 135
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 22
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 160
      Width = 316
      Height = 273
      Align = alClient
      TabOrder = 1
      object Label4: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 308
        Height = 13
        Align = alTop
        Caption = 'Response'
        ExplicitWidth = 47
      end
      object mmResponse: TMemo
        Left = 1
        Top = 20
        Width = 314
        Height = 252
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 23
      end
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 512
    Top = 32
  end
end