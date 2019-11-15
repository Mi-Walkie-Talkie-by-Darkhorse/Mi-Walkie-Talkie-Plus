.class public Lcom/ifengyu/intercom/ui/widget/dialog/u;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "McuContinueUpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/u$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/u$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->dismiss()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->b:Lcom/ifengyu/intercom/ui/widget/dialog/u$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u$a;->a()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->dismiss()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10009d -> :sswitch_0
        0x7f1001db -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/u$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->b:Lcom/ifengyu/intercom/ui/widget/dialog/u$a;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a(Landroid/app/Activity;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a([I)V

    return-void

    :array_0
    .array-data 4
        0x7f10009d
        0x7f1001db
    .end array-data
.end method
