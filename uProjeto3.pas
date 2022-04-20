unit uProjeto3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Gauges,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    gauge1: TGauge;
    Gauge2: TGauge;
    Gauge3: TGauge;
    Gauge4: TGauge;
    btnSentidoHorario: TButton;
    btnAntihorario: TButton;
    btnLooping: TButton;
    edtvalor: TSpinEdit;
    procedure btnSentidoHorarioClick(Sender: TObject);
    procedure btnAntihorarioClick(Sender: TObject);
    procedure btnLoopingClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  VAR
    I: INTEGER;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAntihorarioClick(Sender: TObject);
begin
  var
    I: INTEGER;
  Gauge4.progress := 100;
  for I := 100 downto 0 do

  begin
    Gauge4.progress := Gauge4.progress - 1;
    Gauge4.BackColor := clwhite;
    Gauge4.ForeColor := clblue;
    Sleep(10);
    Application.ProcessMessages;
  end;
  if Gauge4.progress = 0 then
  begin
    Gauge3.progress := 0;
    Gauge3.BackColor := clwhite;
    Gauge3.ForeColor := clblue;
    for I := 0 to 100 do
    BEGIN
      Gauge3.progress := Gauge3.progress + 1;
      Sleep(10);
      Application.ProcessMessages;
    END;
  end;
  if Gauge3.progress = 100 then

  begin
    Gauge2.progress := 0;
    Gauge2.BackColor := clwhite;
    Gauge2.ForeColor := clblue;
    for I := 0 to 100 do
    BEGIN
      Gauge2.progress := Gauge2.progress + 1;
      Sleep(10);
      Application.ProcessMessages;
    END;
  end;

  if Gauge2.progress = 100 then
  begin
    gauge1.progress := 100;
    gauge1.BackColor := clblue;
    gauge1.ForeColor := clwhite;
    for I := 100 downto 0 do
    begin
      gauge1.progress := gauge1.progress - 1;
      Sleep(10);
      Application.ProcessMessages;
    end;
  end;

                if gauge1.Progress = 0 then
        begin
          gauge1.Progress := 0;
          gauge2.Progress := 0;
          gauge3.Progress := 0;
          gauge4.Progress := 0;
          gauge1.ForeColor := clblue;
          gauge1.BackColor := clWhite;
          gauge2.ForeColor := clblue;
          gauge2.BackColor := clWhite;
          gauge3.ForeColor := clblue;
          gauge3.BackColor := clWhite;
          gauge4.ForeColor := clblue;
          gauge4.BackColor := clWhite;
          end






end;

procedure TForm1.btnLoopingClick(Sender: TObject);
var
  I,S: INTEGER;

begin
  for I := 1 to (strtoint(edtvalor.text)) do
  begin
    gauge1.progress := 0;
    for S := 0 to 100 do
    begin
      gauge1.progress := gauge1.progress + 1;
      gauge1.BackColor := clwhite;
      gauge1.ForeColor := clblue;
      Sleep(10);
      Application.ProcessMessages;
    end;
    if gauge1.progress = 100 then
    begin
      Gauge2.progress := 100;
      Gauge2.BackColor := clblue;
      Gauge2.ForeColor := clwhite;
      for S := 100 downto 0 do
      begin
        Gauge2.progress := Gauge2.progress - 1;
        Sleep(10);
        Application.ProcessMessages;
      end;

      if Gauge2.progress = 0 then
      begin
        Gauge3.progress := 100;
        Gauge3.BackColor := clblue;
        Gauge3.ForeColor := clwhite;
        for S := 100 downto 0 do
        begin
          Gauge3.progress := Gauge3.progress - 1;
          Sleep(10);
          Application.ProcessMessages;
        end;
      end;

    end;
    if Gauge3.progress = 0 then
    begin
      Gauge4.progress := 0;
      Gauge4.BackColor := clwhite;
      Gauge4.ForeColor := clblue;
      for S := 0 to 100 do
      begin
        Gauge4.progress := Gauge4.progress + 1;
        Sleep(10);
        Application.ProcessMessages;
      end;
    end;

  end;
       if gauge1.Progress = 100 then
        begin
          gauge1.Progress := 0;
          gauge2.Progress := 0;
          gauge3.Progress := 0;
          gauge4.Progress := 0;
          gauge1.ForeColor := clblue;
          gauge1.BackColor := clWhite;
          gauge2.ForeColor := clblue;
          gauge2.BackColor := clWhite;
          gauge3.ForeColor := clblue;
          gauge3.BackColor := clWhite;
          gauge4.ForeColor := clblue;
          gauge4.BackColor := clWhite;
          end



end;

procedure TForm1.btnSentidoHorarioClick(Sender: TObject);
begin
  var
    I: INTEGER;
  gauge1.progress := 0;
  for I := 0 to 100 do

  begin
    gauge1.progress := gauge1.progress + 1;
    gauge1.BackColor := clwhite;
    gauge1.ForeColor := clblue;
    Sleep(10);
    Application.ProcessMessages;
  end;
  if gauge1.progress = 100 then
  begin
    Gauge2.progress := 100;
    Gauge2.BackColor := clblue;
    Gauge2.ForeColor := clwhite;
    for I := 100 downto 0 do
    begin
      Gauge2.progress := Gauge2.progress - 1;
      Sleep(10);
      Application.ProcessMessages;
    end;

    if Gauge2.progress = 0 then
    begin
      Gauge3.progress := 100;
      Gauge3.BackColor := clblue;
      Gauge3.ForeColor := clwhite;
      for I := 100 downto 0 do
      begin
        Gauge3.progress := Gauge3.progress - 1;
        Sleep(10);
        Application.ProcessMessages;
      end;
    end;

  end;
  if Gauge3.progress = 0 then
  begin
    Gauge4.progress := 0;
    Gauge4.BackColor := clwhite;
    Gauge4.ForeColor := clblue;
    for I := 0 to 100 do
    begin
      Gauge4.progress := Gauge4.progress + 1;
      Sleep(10);
      Application.ProcessMessages;
    end;
  end;

    if gauge1.Progress = 100 then
        begin
          gauge1.Progress := 0;
          gauge2.Progress := 0;
          gauge3.Progress := 0;
          gauge4.Progress := 0;
          gauge1.ForeColor := clblue;
          gauge1.BackColor := clWhite;
          gauge2.ForeColor := clblue;
          gauge2.BackColor := clWhite;
          gauge3.ForeColor := clblue;
          gauge3.BackColor := clWhite;
          gauge4.ForeColor := clblue;
          gauge4.BackColor := clWhite;
          end

end;

end.
