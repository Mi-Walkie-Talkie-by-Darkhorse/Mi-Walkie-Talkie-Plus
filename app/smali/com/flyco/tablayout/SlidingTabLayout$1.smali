.class Lcom/flyco/tablayout/SlidingTabLayout$1;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/tablayout/SlidingTabLayout;->a(ILjava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flyco/tablayout/SlidingTabLayout;


# direct methods
.method constructor <init>(Lcom/flyco/tablayout/SlidingTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->a(Lcom/flyco/tablayout/SlidingTabLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v1}, Lcom/flyco/tablayout/SlidingTabLayout;->b(Lcom/flyco/tablayout/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v1}, Lcom/flyco/tablayout/SlidingTabLayout;->c(Lcom/flyco/tablayout/SlidingTabLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v1}, Lcom/flyco/tablayout/SlidingTabLayout;->b(Lcom/flyco/tablayout/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v1}, Lcom/flyco/tablayout/SlidingTabLayout;->d(Lcom/flyco/tablayout/SlidingTabLayout;)Lcom/flyco/tablayout/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v1}, Lcom/flyco/tablayout/SlidingTabLayout;->d(Lcom/flyco/tablayout/SlidingTabLayout;)Lcom/flyco/tablayout/a/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flyco/tablayout/a/b;->a(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v1}, Lcom/flyco/tablayout/SlidingTabLayout;->b(Lcom/flyco/tablayout/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v1}, Lcom/flyco/tablayout/SlidingTabLayout;->d(Lcom/flyco/tablayout/SlidingTabLayout;)Lcom/flyco/tablayout/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyco/tablayout/SlidingTabLayout$1;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v1}, Lcom/flyco/tablayout/SlidingTabLayout;->d(Lcom/flyco/tablayout/SlidingTabLayout;)Lcom/flyco/tablayout/a/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flyco/tablayout/a/b;->b(I)V

    goto :goto_1
.end method
