.class public Lcom/qmuiteam/qmui/c/j/k;
.super Lcom/qmuiteam/qmui/c/j/g;
.source "QMUISkinRuleMoreBgColorHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/c/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;Ljava/lang/String;Landroid/content/res/ColorStateList;)V
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
    instance-of v0, p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {p1, p3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setMoreActionBgColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->i(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
