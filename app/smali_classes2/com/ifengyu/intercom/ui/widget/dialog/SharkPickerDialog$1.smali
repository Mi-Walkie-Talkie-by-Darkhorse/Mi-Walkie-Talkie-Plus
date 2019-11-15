.class Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$1;
.super Ljava/lang/Object;
.source "SharkPickerDialog.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V
    .locals 2

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
