.class public Lcom/qmuiteam/qmui/c/e;
.super Ljava/lang/Object;
.source "QMUISkinHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    return-void
.end method

.method public static a(Landroid/view/View;I)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/qmuiteam/qmui/c/e;->d(Landroid/view/View;)Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/res/Resources$Theme;I)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/qmuiteam/qmui/c/e;->d(Landroid/view/View;)Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/qmuiteam/qmui/util/i;->d(Landroid/content/Context;Landroid/content/res/Resources$Theme;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/qmuiteam/qmui/c/e;->d(Landroid/view/View;)Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/qmuiteam/qmui/util/i;->g(Landroid/content/Context;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/View;)Landroid/content/res/Resources$Theme;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/qmuiteam/qmui/c/g;->m(Landroid/view/View;)Lcom/qmuiteam/qmui/c/g$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lcom/qmuiteam/qmui/c/g$e;->b:I

    if-gez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/qmuiteam/qmui/c/g$e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/qmuiteam/qmui/c/g;->n(Ljava/lang/String;Landroid/content/Context;)Lcom/qmuiteam/qmui/c/g;

    move-result-object p0

    iget v0, v0, Lcom/qmuiteam/qmui/c/g$e;->b:I

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/c/g;->l(I)Landroid/content/res/Resources$Theme;

    move-result-object p0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static e(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/qmuiteam/qmui/c/g;->m(Landroid/view/View;)Lcom/qmuiteam/qmui/c/g$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/qmuiteam/qmui/c/g$e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/c/g;->n(Ljava/lang/String;Landroid/content/Context;)Lcom/qmuiteam/qmui/c/g;

    move-result-object v1

    iget v0, v0, Lcom/qmuiteam/qmui/c/g$e;->b:I

    invoke-virtual {v1, p0, v0}, Lcom/qmuiteam/qmui/c/g;->p(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/view/View;Lcom/qmuiteam/qmui/c/i/a;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_skin_default_attr_provider:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/h;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->h(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_skin_value:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcom/qmuiteam/qmui/c/e;->e(Landroid/view/View;)V

    return-void
.end method

.method public static i(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does\'t support "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "QMUISkinManager"

    .line 3
    invoke-static {v0, p0, p1}, Lcom/qmuiteam/qmui/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
