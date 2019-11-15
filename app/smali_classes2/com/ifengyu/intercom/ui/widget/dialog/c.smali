.class public Lcom/ifengyu/intercom/ui/widget/dialog/c;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "BleHadDisconnectedDialog.java"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001db
        :pswitch_0
    .end packed-switch
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f1001db

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->a([I)V

    return-void
.end method
