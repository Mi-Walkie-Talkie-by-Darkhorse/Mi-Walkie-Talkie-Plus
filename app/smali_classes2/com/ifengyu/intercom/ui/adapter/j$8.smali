.class Lcom/ifengyu/intercom/ui/adapter/j$8;
.super Lcom/ifengyu/intercom/ui/adapter/j$c;
.source "NoAlphaItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/j;->a(Lcom/ifengyu/intercom/ui/adapter/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/j$a;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/ifengyu/intercom/ui/adapter/j;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/j;Lcom/ifengyu/intercom/ui/adapter/j$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->d:Lcom/ifengyu/intercom/ui/adapter/j;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->a:Lcom/ifengyu/intercom/ui/adapter/j$a;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/adapter/j$c;-><init>(Lcom/ifengyu/intercom/ui/adapter/j$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->d:Lcom/ifengyu/intercom/ui/adapter/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->a:Lcom/ifengyu/intercom/ui/adapter/j$a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/adapter/j$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/adapter/j;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->d:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/j;->h(Lcom/ifengyu/intercom/ui/adapter/j;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->a:Lcom/ifengyu/intercom/ui/adapter/j$a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/adapter/j$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->d:Lcom/ifengyu/intercom/ui/adapter/j;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/j;->e(Lcom/ifengyu/intercom/ui/adapter/j;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->d:Lcom/ifengyu/intercom/ui/adapter/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/j$8;->a:Lcom/ifengyu/intercom/ui/adapter/j$a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/adapter/j$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/adapter/j;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
