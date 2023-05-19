.class public Lcom/qmuiteam/qmui/c/j/m;
.super Lcom/qmuiteam/qmui/c/j/f;
.source "QMUISkinRuleProgressColorHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/c/j/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;

    invoke-virtual {p1, p3}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->setProgressColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/QMUISlider;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUISlider;

    invoke-virtual {p1, p3}, Lcom/qmuiteam/qmui/widget/QMUISlider;->setBarProgressColor(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->i(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
