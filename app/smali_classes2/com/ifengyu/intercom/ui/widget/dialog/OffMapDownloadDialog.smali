.class public Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "OffMapDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;,
        Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;

.field private c:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->c:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->d:Z

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->c:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;->a()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->dismiss()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->dismiss()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;->b()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;->c()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->dismiss()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->dismiss()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1001da -> :sswitch_0
        0x7f100204 -> :sswitch_1
        0x7f100205 -> :sswitch_2
    .end sparse-switch
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040081

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->a(Landroid/app/Activity;)V

    const v0, 0x7f1001da

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100204

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100205

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->c:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    sget-object v4, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->d:Z

    if-eqz v3, :cond_0

    const v3, 0x7f090076

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f09006f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f09006c

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->a([I)V

    return-void

    :cond_0
    const v3, 0x7f09006d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v3, 0x7f09019d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f1001da
        0x7f100204
        0x7f100205
    .end array-data
.end method

.method public setOnClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;

    return-void
.end method
