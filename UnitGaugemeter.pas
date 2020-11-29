unit UnitGaugemeter;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.EditBox,
  FMX.ComboTrackBar;

type
  TForm1 = class(TForm)
    BG: TImage;
    Needle: TImage;
    FloatAnimation1: TFloatAnimation;
    ComboTrackBar1: TComboTrackBar;
    procedure ComboTrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.ComboTrackBar1Change(Sender: TObject);
begin
  FloatAnimation1.StopValue := ComboTrackBar1.Value*2; // your variable value, max degree for needle 200' until 100
  FloatAnimation1.Start;
end;

end.
