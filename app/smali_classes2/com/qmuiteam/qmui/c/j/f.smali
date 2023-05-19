.class public abstract Lcom/qmuiteam/qmui/c/j/f;
.super Ljava/lang/Object;
.source "QMUISkinRuleColorHandler.java"

# interfaces
.implements Lcom/qmuiteam/qmui/c/j/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/c/g;Landroid/view/View;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p3, p5}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    invoke-virtual {p0, p2, p4, p1}, Lcom/qmuiteam/qmui/c/j/f;->b(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method protected abstract b(Landroid/view/View;Ljava/lang/String;I)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
