program QRcode;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

uses
{$IFnDEF FPC}
{$ELSE}
  Interfaces,
{$ENDIF}
  Forms,
  frmuQRcode in 'frmuQRcode.pas' {frmQRcode},
  bitstream in '..\bitstream.pas',
  mask in '..\mask.pas',
  mmask in '..\mmask.pas',
  mqrspec in '..\mqrspec.pas',
  qrenc in '..\qrenc.pas',
  qrencode in '..\qrencode.pas',
  qrinput in '..\qrinput.pas',
  qrspec in '..\qrspec.pas',
  rscode in '..\rscode.pas',
  split in '..\split.pas',
  struct in '..\struct.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmQRcode, frmQRcode);
  Application.Run;
end.
