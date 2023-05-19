.class public Lcom/qmuiteam/qmui/widget/dialog/b;
.super Lcom/qmuiteam/qmui/widget/dialog/a;
.source "QMUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/b$c;,
        Lcom/qmuiteam/qmui/widget/dialog/b$b;,
        Lcom/qmuiteam/qmui/widget/dialog/b$a;,
        Lcom/qmuiteam/qmui/widget/dialog/b$d;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/a;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/dialog/b;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/a;->setCancelable(Z)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/a;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
