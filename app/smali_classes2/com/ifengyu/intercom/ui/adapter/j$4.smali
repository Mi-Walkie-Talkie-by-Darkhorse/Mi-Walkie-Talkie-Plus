.class Lcom/ifengyu/intercom/ui/adapter/j$4;
.super Lcom/ifengyu/intercom/ui/adapter/j$c;
.source "NoAlphaItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/j;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Lcom/ifengyu/intercom/ui/adapter/j;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/j;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/adapter/j$c;-><init>(Lcom/ifengyu/intercom/ui/adapter/j$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/j;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/j;->d(Lcom/ifengyu/intercom/ui/adapter/j;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/j;->e(Lcom/ifengyu/intercom/ui/adapter/j;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->c:Lcom/ifengyu/intercom/ui/adapter/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/j$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/j;->dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
