.class public Lcom/ifengyu/intercom/ui/widget/dialog/s;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "LogoutAskDialog.java"


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->dismiss()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->dismiss()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100334
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040104

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a(Landroid/app/Activity;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a([I)V

    return-void

    :array_0
    .array-data 4
        0x7f100334
        0x7f100335
    .end array-data
.end method
