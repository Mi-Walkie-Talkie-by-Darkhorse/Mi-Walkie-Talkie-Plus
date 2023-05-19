.class Landroidx/recyclerview/widget/g$a;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/g;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g;

    iget-object v1, v0, Landroidx/recyclerview/widget/g;->c:Landroidx/recyclerview/widget/RecyclerView$y;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/g;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g;

    iget-object v1, v0, Landroidx/recyclerview/widget/g;->c:Landroidx/recyclerview/widget/RecyclerView$y;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/g;->u(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g;

    iget-object v1, v0, Landroidx/recyclerview/widget/g;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/g;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g;

    iget-object v0, v0, Landroidx/recyclerview/widget/g;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
