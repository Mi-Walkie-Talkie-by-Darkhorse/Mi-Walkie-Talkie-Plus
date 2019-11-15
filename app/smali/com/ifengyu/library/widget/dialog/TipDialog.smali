.class public Lcom/ifengyu/library/widget/dialog/TipDialog;
.super Landroid/app/Dialog;
.source "TipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/ifengyu/library/R$style;->QMUI_TipDialog:I

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->setCancelable(Z)V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->a()V

    return-void
.end method
