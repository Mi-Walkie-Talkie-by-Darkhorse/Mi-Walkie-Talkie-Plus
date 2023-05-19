.class public Lcom/qmuiteam/qmui/widget/popup/b;
.super Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;
.source "QMUIPopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup<",
        "Lcom/qmuiteam/qmui/widget/popup/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public V(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/popup/b;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->T(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/popup/a;

    move-object p1, p0

    check-cast p1, Lcom/qmuiteam/qmui/widget/popup/b;

    return-object p1
.end method
