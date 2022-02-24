.class Lcom/ifengyu/intercom/ui/adapter/j$f;
.super Lcom/ifengyu/intercom/ui/adapter/j$k;
.source "NoAlphaItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/j;->b(Landroidx/recyclerview/widget/RecyclerView$y;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$y;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroidx/core/view/a0;

.field final synthetic e:Lcom/ifengyu/intercom/ui/adapter/j;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/j;Landroidx/recyclerview/widget/RecyclerView$y;IILandroidx/core/view/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->e:Lcom/ifengyu/intercom/ui/adapter/j;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->a:Landroidx/recyclerview/widget/RecyclerView$y;

    iput p3, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->b:I

    iput p4, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->c:I

    iput-object p5, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->d:Landroidx/core/view/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/j$k;-><init>(Lcom/ifengyu/intercom/ui/adapter/j$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->c:I

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->d(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->d:Landroidx/core/view/a0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->a(Landroidx/core/view/b0;)Landroidx/core/view/a0;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->e:Lcom/ifengyu/intercom/ui/adapter/j;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->a:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n;->j(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->e:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/j;->b(Lcom/ifengyu/intercom/ui/adapter/j;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->a:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->e:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/j;->g(Lcom/ifengyu/intercom/ui/adapter/j;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->e:Lcom/ifengyu/intercom/ui/adapter/j;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$f;->a:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n;->k(Landroidx/recyclerview/widget/RecyclerView$y;)V

    return-void
.end method
