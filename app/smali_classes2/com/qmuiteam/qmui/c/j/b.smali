.class public Lcom/qmuiteam/qmui/c/j/b;
.super Lcom/qmuiteam/qmui/c/j/i;
.source "QMUISkinRuleAlphaHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/c/j/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;Ljava/lang/String;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
