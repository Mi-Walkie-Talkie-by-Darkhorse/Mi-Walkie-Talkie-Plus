.class public Lcom/qmuiteam/qmui/c/j/n;
.super Lcom/qmuiteam/qmui/c/j/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qmuiteam/qmui/c/j/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    if-eqz v0, :cond_3

    const-string v0, "topSeparator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    invoke-interface {p1, p3}, Lcom/qmuiteam/qmui/layout/IQMUILayout;->d(I)V

    goto :goto_0

    :cond_0
    const-string v0, "bottomSeparator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    invoke-interface {p1, p3}, Lcom/qmuiteam/qmui/layout/IQMUILayout;->b(I)V

    goto :goto_0

    :cond_1
    const-string v0, "LeftSeparator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    invoke-interface {p1, p3}, Lcom/qmuiteam/qmui/layout/IQMUILayout;->c(I)V

    goto :goto_0

    :cond_2
    const-string v0, "rightSeparator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    check-cast p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    invoke-interface {p1, p3}, Lcom/qmuiteam/qmui/layout/IQMUILayout;->e(I)V

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->b(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
