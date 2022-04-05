.class public Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;


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

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->c:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->d:Z

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    const v0, 0x7f0900ba

    if-eq p1, v0, :cond_3

    const v0, 0x7f09023f

    if-eq p1, v0, :cond_2

    const v0, 0x7f090306

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->c:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;->b()V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;->c()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;->a()V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0087

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    const p1, 0x7f090306

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f09023f

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900ba

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->c:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    sget-object v3, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;->a:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OFF_MAP_DIALOG_CHECK;

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->d:Z

    if-eqz v2, :cond_0

    const v2, 0x7f11009d

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f110094

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f1102a4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const p1, 0x7f110096

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f110093

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090306
        0x7f09023f
        0x7f0900ba
    .end array-data
.end method

.method public setOnClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;

    return-void
.end method
