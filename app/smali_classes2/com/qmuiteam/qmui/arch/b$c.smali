.class Lcom/qmuiteam/qmui/arch/b$c;
.super Lcom/qmuiteam/qmui/arch/effect/d;
.source "QMUIFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/arch/b;->onAttach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/b;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$c;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/effect/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/qmuiteam/qmui/arch/effect/a;)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/arch/effect/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/qmuiteam/qmui/arch/effect/b;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b$c;->a(Lcom/qmuiteam/qmui/arch/effect/b;)V

    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/arch/effect/b;)V
    .locals 3
    .param p1    # Lcom/qmuiteam/qmui/arch/effect/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$c;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/effect/b;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/effect/b;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/effect/b;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/qmuiteam/qmui/arch/b;->a(IILandroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/b$c;->a:Lcom/qmuiteam/qmui/arch/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/arch/b;->b(Lcom/qmuiteam/qmui/arch/b;I)I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/arch/effect/b;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/arch/effect/b;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b$c;->a(Lcom/qmuiteam/qmui/arch/effect/b;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/qmuiteam/qmui/arch/effect/a;)Z
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/arch/effect/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/qmuiteam/qmui/arch/effect/b;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b$c;->b(Lcom/qmuiteam/qmui/arch/effect/b;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/qmuiteam/qmui/arch/effect/b;)Z
    .locals 2
    .param p1    # Lcom/qmuiteam/qmui/arch/effect/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/effect/b;->b()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/b$c;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v1}, Lcom/qmuiteam/qmui/arch/b;->c(Lcom/qmuiteam/qmui/arch/b;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/effect/b;->c()I

    move-result p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$c;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/b;->d(Lcom/qmuiteam/qmui/arch/b;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
