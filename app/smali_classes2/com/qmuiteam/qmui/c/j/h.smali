.class public abstract Lcom/qmuiteam/qmui/c/j/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qmuiteam/qmui/c/j/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final a(Lcom/qmuiteam/qmui/c/g;Landroid/view/View;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, p5}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p2, p4, p1}, Lcom/qmuiteam/qmui/c/j/h;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
