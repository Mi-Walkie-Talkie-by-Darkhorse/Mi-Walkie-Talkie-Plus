.class public Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "NoScrollViewPager.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;->a:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setNoScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;->a:Z

    return-void
.end method
