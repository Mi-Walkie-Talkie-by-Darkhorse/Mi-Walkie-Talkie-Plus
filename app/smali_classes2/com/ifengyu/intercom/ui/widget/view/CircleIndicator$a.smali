.class Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 18
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;I)I

    :cond_5
    :goto_0
    return-void
.end method
