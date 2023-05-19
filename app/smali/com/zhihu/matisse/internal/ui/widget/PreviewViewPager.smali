.class public Lcom/zhihu/matisse/internal/ui/widget/PreviewViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "PreviewViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected e(Landroid/view/View;ZIII)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->G(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->e(Landroid/view/View;ZIII)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 3
    :cond_2
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->e(Landroid/view/View;ZIII)Z

    move-result p1

    return p1
.end method
