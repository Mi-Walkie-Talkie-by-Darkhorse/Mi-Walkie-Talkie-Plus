.class public Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
.super Lcom/qmuiteam/qmui/widget/dialog/a;
.source "QMUITipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/a;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/a;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
