.class Lcom/ifengyu/library/widget/recyclerview/e/b$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SimpleClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/recyclerview/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/widget/recyclerview/e/b;

.field private b:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->b:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ifengyu/library/widget/recyclerview/e/b$a$1;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/library/widget/recyclerview/e/b$a$1;-><init>(Lcom/ifengyu/library/widget/recyclerview/e/b$a;Landroid/view/View;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$800(Lcom/ifengyu/library/widget/recyclerview/e/b;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$102(Lcom/ifengyu/library/widget/recyclerview/e/b;Z)Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$202(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/view/View;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$000(Lcom/ifengyu/library/widget/recyclerview/e/b;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$102(Lcom/ifengyu/library/widget/recyclerview/e/b;Z)Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$202(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/view/View;)Landroid/view/View;

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$000(Lcom/ifengyu/library/widget/recyclerview/e/b;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$100(Lcom/ifengyu/library/widget/recyclerview/e/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/d/a;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getLayoutPosition()I

    move-result v4

    invoke-static {v1, v4}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$400(Lcom/ifengyu/library/widget/recyclerview/e/b;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$702(Lcom/ifengyu/library/widget/recyclerview/e/b;Ljava/util/Set;)Ljava/util/Set;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$700(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$700(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$700(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-virtual {v5, v1, p1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v4, p1, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$600(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/view/MotionEvent;Landroid/view/View;)V

    iget-object v4, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v5, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v5, v5, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getLayoutPosition()I

    move-result v6

    iget-object v7, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v7, v7, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-interface {v7}, Lcom/ifengyu/library/widget/recyclerview/adapter/c;->getHeaderLayoutCount()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v1, v6}, Lcom/ifengyu/library/widget/recyclerview/e/b;->onItemChildLongClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1, v2}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$302(Lcom/ifengyu/library/widget/recyclerview/e/b;Z)Z

    move v1, v2

    :goto_1
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v4, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v4, v4, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    iget-object v5, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v5}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getLayoutPosition()I

    move-result v0

    iget-object v6, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v6, v6, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-interface {v6}, Lcom/ifengyu/library/widget/recyclerview/adapter/c;->getHeaderLayoutCount()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {v1, v4, v5, v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->onItemLongClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$600(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/view/MotionEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$700(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0, v2}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$302(Lcom/ifengyu/library/widget/recyclerview/e/b;Z)Z

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$000(Lcom/ifengyu/library/widget/recyclerview/e/b;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$100(Lcom/ifengyu/library/widget/recyclerview/e/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$302(Lcom/ifengyu/library/widget/recyclerview/e/b;Z)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$000(Lcom/ifengyu/library/widget/recyclerview/e/b;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$100(Lcom/ifengyu/library/widget/recyclerview/e/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/d/a;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getLayoutPosition()I

    move-result v5

    invoke-static {v1, v5}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$400(Lcom/ifengyu/library/widget/recyclerview/e/b;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->b()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$502(Lcom/ifengyu/library/widget/recyclerview/e/b;Ljava/util/Set;)Ljava/util/Set;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$500(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$500(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$500(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-virtual {v6, v1, p1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v2, p1, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$600(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v4, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v4, v4, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getLayoutPosition()I

    move-result v0

    iget-object v5, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v5, v5, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-interface {v5}, Lcom/ifengyu/library/widget/recyclerview/adapter/c;->getHeaderLayoutCount()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {v2, v4, v1, v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->onItemChildClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V

    invoke-direct {p0, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a(Landroid/view/View;)V

    move v0, v3

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1, p1, v4}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$600(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/view/MotionEvent;Landroid/view/View;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$500(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v2, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v2, v2, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getLayoutPosition()I

    move-result v0

    iget-object v5, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v5, v5, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-interface {v5}, Lcom/ifengyu/library/widget/recyclerview/adapter/c;->getHeaderLayoutCount()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {v1, v2, v4, v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->onItemClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V

    :goto_3
    invoke-direct {p0, v4}, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a(Landroid/view/View;)V

    :cond_5
    move v0, v3

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1, p1, v4}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$600(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/view/MotionEvent;Landroid/view/View;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-static {v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->access$500(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v2, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v2, v2, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getLayoutPosition()I

    move-result v0

    iget-object v5, p0, Lcom/ifengyu/library/widget/recyclerview/e/b$a;->a:Lcom/ifengyu/library/widget/recyclerview/e/b;

    iget-object v5, v5, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-interface {v5}, Lcom/ifengyu/library/widget/recyclerview/adapter/c;->getHeaderLayoutCount()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {v1, v2, v4, v0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->onItemClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V

    goto :goto_3
.end method
