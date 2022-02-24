.class final Lcom/ifengyu/intercom/ui/widget/dialog/b0;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static a(IZ)I
    .locals 2

    and-int/lit8 v0, p0, 0x50

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x7f010020

    goto :goto_0

    :cond_0
    const p0, 0x7f010022

    :goto_0
    return p0

    :cond_1
    const/16 v0, 0x11

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    const p0, 0x7f010021

    goto :goto_1

    :cond_2
    const p0, 0x7f010023

    :goto_1
    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method static a(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 1

    .line 6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method static a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/l;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/l;-><init>(Landroid/view/View;II)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 p1, 0xc8

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static a(Landroid/widget/AbsListView;)Z
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result p0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
