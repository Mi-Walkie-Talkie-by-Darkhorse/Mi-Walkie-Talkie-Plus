.class public Lcom/ifengyu/intercom/ui/widget/dialog/f;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "DialogPicSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/f$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->dismiss()V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b:Lcom/ifengyu/intercom/ui/widget/dialog/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b:Lcom/ifengyu/intercom/ui/widget/dialog/f$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->a()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b:Lcom/ifengyu/intercom/ui/widget/dialog/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b:Lcom/ifengyu/intercom/ui/widget/dialog/f$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;->b()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1001da -> :sswitch_0
        0x7f100204 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040081

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Landroid/app/Activity;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a([I)V

    return-void

    :array_0
    .array-data 4
        0x7f1001da
        0x7f100204
        0x7f100205
    .end array-data
.end method

.method public setOnclickListener(Lcom/ifengyu/intercom/ui/widget/dialog/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b:Lcom/ifengyu/intercom/ui/widget/dialog/f$a;

    return-void
.end method
