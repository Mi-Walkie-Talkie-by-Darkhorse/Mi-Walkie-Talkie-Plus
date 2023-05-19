.class Lcom/qmuiteam/qmui/arch/b$f$b;
.super Ljava/lang/Object;
.source "QMUIFragment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/arch/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/arch/b$f;->d(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentContainerView;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/qmuiteam/qmui/arch/b$f;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/b$f;Landroidx/fragment/app/FragmentContainerView;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->d:Lcom/qmuiteam/qmui/arch/b$f;

    iput-object p2, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->a:Landroidx/fragment/app/FragmentContainerView;

    iput p3, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->b:I

    iput p4, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/g;->i(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 4
    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/g;->l(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/g;->k(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    instance-of v0, p1, Lcom/qmuiteam/qmui/arch/b;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->d:Lcom/qmuiteam/qmui/arch/b$f;

    check-cast p1, Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/arch/b$f;->i(Lcom/qmuiteam/qmui/arch/b$f;Lcom/qmuiteam/qmui/arch/b;)Lcom/qmuiteam/qmui/arch/b;

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->d:Lcom/qmuiteam/qmui/arch/b$f;

    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/b$f;->h(Lcom/qmuiteam/qmui/arch/b$f;)Lcom/qmuiteam/qmui/arch/b;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/arch/b;->I1(Lcom/qmuiteam/qmui/arch/b;Z)Z

    .line 13
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->d:Lcom/qmuiteam/qmui/arch/b$f;

    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/b$f;->h(Lcom/qmuiteam/qmui/arch/b$f;)Lcom/qmuiteam/qmui/arch/b;

    move-result-object p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->d:Lcom/qmuiteam/qmui/arch/b$f;

    iget-object v0, v0, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->a:Landroidx/fragment/app/FragmentContainerView;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/qmuiteam/qmui/arch/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->d:Lcom/qmuiteam/qmui/arch/b$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/b$f;->h(Lcom/qmuiteam/qmui/arch/b$f;)Lcom/qmuiteam/qmui/arch/b;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/arch/b;->I1(Lcom/qmuiteam/qmui/arch/b;Z)Z

    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->d:Lcom/qmuiteam/qmui/arch/b$f;

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-static {v0, v2, p1, v1}, Lcom/qmuiteam/qmui/arch/b$f;->e(Lcom/qmuiteam/qmui/arch/b$f;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 16
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->d:Lcom/qmuiteam/qmui/arch/b$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/b$f;->h(Lcom/qmuiteam/qmui/arch/b$f;)Lcom/qmuiteam/qmui/arch/b;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/qmuiteam/qmui/arch/b$f;->f(Lcom/qmuiteam/qmui/arch/b$f;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    .line 17
    iget v0, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->b:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->d:Lcom/qmuiteam/qmui/arch/b$f;

    iget-object v2, v2, Lcom/qmuiteam/qmui/arch/b$f;->b:Lcom/qmuiteam/qmui/arch/b;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->c:I

    iget v5, p0, Lcom/qmuiteam/qmui/arch/b$f$b;->b:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/qmuiteam/qmui/arch/b;->K1(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 19
    invoke-static {p1, v0, v2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->x(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    :goto_0
    return v1
.end method
