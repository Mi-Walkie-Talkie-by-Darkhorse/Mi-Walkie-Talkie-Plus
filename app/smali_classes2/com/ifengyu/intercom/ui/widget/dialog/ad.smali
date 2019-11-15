.class final Lcom/ifengyu/intercom/ui/widget/dialog/ad;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static a(IZ)I
    .locals 2

    and-int/lit8 v0, p0, 0x50

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x7f050014

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f050016

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p0, 0x11

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    const v0, 0x7f050015

    goto :goto_0

    :cond_2
    const v0, 0x7f050017

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static a(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method static a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/l;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/l;-><init>(Landroid/view/View;II)V

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/l;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/l;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static a(Landroid/widget/AbsListView;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
