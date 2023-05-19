.class public Lcom/qmuiteam/qmui/c/j/n;
.super Lcom/qmuiteam/qmui/c/j/f;
.source "QMUISkinRuleSeparatorHandler.java"


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
    instance-of v0, p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    if-eqz v0, :cond_3

    const-string v0, "topSeparator"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    invoke-interface {p1, p3}, Lcom/qmuiteam/qmui/layout/IQMUILayout;->i(I)V

    goto :goto_0

    :cond_0
    const-string v0, "bottomSeparator"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    invoke-interface {p1, p3}, Lcom/qmuiteam/qmui/layout/IQMUILayout;->e(I)V

    goto :goto_0

    :cond_1
    const-string v0, "LeftSeparator"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    invoke-interface {p1, p3}, Lcom/qmuiteam/qmui/layout/IQMUILayout;->g(I)V

    goto :goto_0

    :cond_2
    const-string v0, "rightSeparator"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    check-cast p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    invoke-interface {p1, p3}, Lcom/qmuiteam/qmui/layout/IQMUILayout;->j(I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->i(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
