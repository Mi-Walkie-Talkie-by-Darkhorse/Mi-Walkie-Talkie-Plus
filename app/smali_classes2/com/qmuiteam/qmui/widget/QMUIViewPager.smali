.class public Lcom/qmuiteam/qmui/widget/QMUIViewPager;
.super Landroidx/viewpager/widget/ViewPager;

# interfaces
.implements Lcom/qmuiteam/qmui/widget/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUIViewPager$a;
    }
.end annotation


# instance fields
.field private k0:Z

.field private l0:Lcom/qmuiteam/qmui/util/o;

.field private m0:Z

.field private n0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->k0:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->m0:Z

    const/16 p1, 0x64

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->n0:I

    new-instance p1, Lcom/qmuiteam/qmui/util/o;

    invoke-direct {p1, p0, p0}, Lcom/qmuiteam/qmui/util/o;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/c;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->l0:Lcom/qmuiteam/qmui/util/o;

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/QMUIViewPager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->m0:Z

    return p0
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/QMUIViewPager;)I
    .locals 0

    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->n0:I

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->l0:Lcom/qmuiteam/qmui/util/o;

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/util/o;->a(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->l0:Lcom/qmuiteam/qmui/util/o;

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/util/o;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;)V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->a(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getInfiniteRatio()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->n0:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->k0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->k0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAdapter(Landroidx/viewpager/widget/a;)V
    .locals 1

    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/e;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIViewPager$a;

    check-cast p1, Lcom/qmuiteam/qmui/widget/e;

    invoke-direct {v0, p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIViewPager$a;-><init>(Lcom/qmuiteam/qmui/widget/QMUIViewPager;Lcom/qmuiteam/qmui/widget/e;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    :goto_0
    return-void
.end method

.method public setEnableLoop(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->m0:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->m0:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setInfiniteRatio(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->n0:I

    return-void
.end method

.method public setSwipeable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->k0:Z

    return-void
.end method
