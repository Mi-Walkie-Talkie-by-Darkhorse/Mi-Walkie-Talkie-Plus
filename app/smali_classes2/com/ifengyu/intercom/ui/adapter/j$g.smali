.class Lcom/ifengyu/intercom/ui/adapter/j$g;
.super Lcom/ifengyu/intercom/ui/adapter/j$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/j;->a(Lcom/ifengyu/intercom/ui/adapter/j$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/j$i;

.field final synthetic b:Landroidx/core/view/a0;

.field final synthetic c:Lcom/ifengyu/intercom/ui/adapter/j;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/j;Lcom/ifengyu/intercom/ui/adapter/j$i;Landroidx/core/view/a0;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->a:Lcom/ifengyu/intercom/ui/adapter/j$i;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->b:Landroidx/core/view/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/adapter/j$k;-><init>(Lcom/ifengyu/intercom/ui/adapter/j$a;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->b:Landroidx/core/view/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/a0;->a(Landroidx/core/view/b0;)Landroidx/core/view/a0;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;F)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->c(Landroid/view/View;F)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->d(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->a:Lcom/ifengyu/intercom/ui/adapter/j$i;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/adapter/j$i;->a:Landroidx/recyclerview/widget/RecyclerView$y;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/j;->c(Lcom/ifengyu/intercom/ui/adapter/j;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->a:Lcom/ifengyu/intercom/ui/adapter/j$i;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/adapter/j$i;->a:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/j;->g(Lcom/ifengyu/intercom/ui/adapter/j;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$g;->a:Lcom/ifengyu/intercom/ui/adapter/j$i;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/adapter/j$i;->a:Landroidx/recyclerview/widget/RecyclerView$y;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    return-void
.end method
