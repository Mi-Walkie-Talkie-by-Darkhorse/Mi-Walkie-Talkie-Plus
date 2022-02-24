.class public Lcom/qmuiteam/qmui/arch/SwipeBackLayout$h;
.super Ljava/lang/Object;
.source "SwipeBackLayout.java"

# interfaces
.implements Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/4 p1, 0x0

    .line 2
    invoke-static {p2, p1, p3}, Lcom/qmuiteam/qmui/util/g;->a(FFF)F

    move-result p1

    return p1
.end method

.method public a(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;I)I
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    return p1
.end method

.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;FIF)I
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-gtz p3, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$h;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F

    move-result p2

    cmpl-float p2, p2, p5

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    return p1
.end method

.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;Lcom/qmuiteam/qmui/util/m;IF)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/qmuiteam/qmui/util/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x4

    if-eq p4, p2, :cond_0

    const/4 p2, 0x3

    if-ne p4, p2, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p5, p5, p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p5, p2

    .line 7
    :cond_1
    invoke-virtual {p3}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p5

    float-to-int p2, p2

    const/4 p4, 0x0

    .line 8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-static {p2, p4, p1}, Lcom/qmuiteam/qmui/util/g;->a(III)I

    move-result p1

    .line 9
    invoke-virtual {p3, p1}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    return-void
.end method
