.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
.super Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;
    }
.end annotation


# instance fields
.field private c:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->c:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;->a(Landroid/graphics/Canvas;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->c:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;->b(Landroid/graphics/Canvas;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;)V

    :cond_0
    return-void
.end method

.method public setOnDecorationListener(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->c:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;

    return-void
.end method
