.class public Lcom/ifengyu/intercom/ui/widget/dialog/j;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "FeedbackDeviceSelectorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/j$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/j;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/j$a;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/j$a;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/j$a;->c()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/j$a;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001fa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/j;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/j;->a(Landroid/app/Activity;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/j;->a([I)V

    return-void

    :array_0
    .array-data 4
        0x7f1001fa
        0x7f1001fb
        0x7f1001fc
        0x7f1001fd
    .end array-data
.end method

.method public setOnclickListener(Lcom/ifengyu/intercom/ui/widget/dialog/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b:Lcom/ifengyu/intercom/ui/widget/dialog/j$a;

    return-void
.end method
