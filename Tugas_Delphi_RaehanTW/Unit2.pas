unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    LOGIN: TButton;
    edt1: TEdit;
    procedure LOGINClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.LOGINClick(Sender: TObject);
begin
 if edt1.Text = 'admin' then
 begin
 Form1.mm1.Items[1].Visible:=True;
 Form1.mm1.Items[2].Visible:= False;
 Form1.mm1.Items[3].Visible:= False;
 end else if edt1.Text = 'kasir' then
 begin
 Form1.mm1.Items[1].Visible:=False;
 Form1.mm1.Items[2].Visible:= True;
 Form1.mm1.Items[3].Visible:= False;
 end else if edt1.Text = 'pemilik' then
 begin
 Form1.mm1.Items[1].Visible:=False;
 Form1.mm1.Items[2].Visible:= False;
 Form1.mm1.Items[3].Visible:= True;
 end else
 begin

 end;
Form2.Close;
end;

end.
