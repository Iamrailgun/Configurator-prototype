object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1090#1086#1088
  ClientHeight = 448
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 78
    Height = 19
    Caption = #1055#1088#1086#1094#1077#1089#1089#1086#1088
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 141
    Height = 19
    Caption = #1052#1072#1090#1077#1088#1080#1085#1089#1082#1072#1103' '#1087#1083#1072#1090#1072
  end
  object Label3: TLabel
    Left = 8
    Top = 121
    Width = 152
    Height = 19
    Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1085#1072#1103' '#1087#1072#1084#1103#1090#1100
  end
  object Label4: TLabel
    Left = 8
    Top = 177
    Width = 85
    Height = 19
    Caption = #1042#1080#1076#1077#1086#1082#1072#1088#1090#1072
  end
  object Label5: TLabel
    Left = 8
    Top = 229
    Width = 52
    Height = 19
    Caption = #1050#1086#1088#1087#1091#1089
  end
  object Label6: TLabel
    Left = 8
    Top = 285
    Width = 100
    Height = 19
    Caption = #1041#1083#1086#1082' '#1087#1080#1090#1072#1085#1080#1103
  end
  object Label7: TLabel
    Left = 8
    Top = 341
    Width = 101
    Height = 19
    Caption = #1046#1077#1089#1090#1082#1080#1081' '#1076#1080#1089#1082
  end
  object Label8: TLabel
    Left = 230
    Top = 35
    Width = 78
    Height = 19
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label9: TLabel
    Left = 230
    Top = 92
    Width = 78
    Height = 19
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label10: TLabel
    Left = 230
    Top = 149
    Width = 78
    Height = 19
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label11: TLabel
    Left = 230
    Top = 205
    Width = 78
    Height = 19
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label12: TLabel
    Left = 228
    Top = 257
    Width = 78
    Height = 19
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label13: TLabel
    Left = 230
    Top = 313
    Width = 78
    Height = 19
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label14: TLabel
    Left = 228
    Top = 369
    Width = 78
    Height = 19
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label15: TLabel
    Left = 228
    Top = 401
    Width = 44
    Height = 19
    Caption = #1048#1090#1086#1075#1086
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 216
    Height = 27
    TabOrder = 0
    OnClick = Edit1Click
  end
  object DBGrid1: TDBGrid
    Left = 312
    Top = 8
    Width = 473
    Height = 385
    BiDiMode = bdRightToLeftReadingOnly
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit2: TEdit
    Left = 8
    Top = 89
    Width = 216
    Height = 27
    TabOrder = 2
    OnClick = Edit2Click
  end
  object Edit3: TEdit
    Left = 8
    Top = 146
    Width = 216
    Height = 27
    TabOrder = 3
    OnClick = Edit3Click
  end
  object Button5: TButton
    Left = 8
    Top = 399
    Width = 75
    Height = 25
    Caption = #1057#1073#1088#1086#1089#1080#1090#1100
    TabOrder = 4
    OnClick = Button5Click
  end
  object Edit4: TEdit
    Left = 8
    Top = 202
    Width = 216
    Height = 27
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 8
    Top = 254
    Width = 216
    Height = 27
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 8
    Top = 310
    Width = 216
    Height = 27
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 8
    Top = 366
    Width = 216
    Height = 27
    TabOrder = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 464
    Top = 400
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=111111;Persist Security Info=True;Da' +
      'ta Source=MS Access Database;Initial Catalog=confdb.accdb'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 544
    Top = 400
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 616
    Top = 400
  end
  object MainMenu1: TMainMenu
    Left = 680
    Top = 400
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N7: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object N6: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N6Click
      end
    end
    object N2: TMenuItem
      Caption = #1041#1044
      object N8: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1072#1085#1085#1099#1093
        OnClick = N8Click
      end
      object N3: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1059#1082#1072#1079#1072#1090#1100' '#1087#1091#1090#1100' '#1082' '#1041#1044
        OnClick = N5Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 752
    Top = 400
  end
end
