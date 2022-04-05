.class public Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;->b(I)Z

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :goto_0
    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/qmuiteam/qmui/util/g;->a(FFF)F

    move-result p1

    return p1
.end method

.method public a(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/16 p1, 0x8

    return p1
.end method

.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;I)I
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;->b(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    return p1
.end method

.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;FIF)I
    .locals 2
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    cmpl-float p3, p3, v0

    if-gtz p3, :cond_0

    if-nez p3, :cond_6

    invoke-virtual {p0, p1, p2, p4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F

    move-result p2

    cmpl-float p2, p2, p5

    if-lez p2, :cond_6

    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x2

    if-ne p4, v1, :cond_3

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_2

    cmpl-float p3, p3, v0

    if-nez p3, :cond_6

    invoke-virtual {p0, p1, p2, p4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F

    move-result p2

    cmpl-float p2, p2, p5

    if-lez p2, :cond_6

    :cond_2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    :goto_0
    neg-int p1, p1

    return p1

    :cond_3
    const/4 v1, 0x3

    if-ne p4, v1, :cond_5

    cmpl-float p3, p3, v0

    if-gtz p3, :cond_4

    if-nez p3, :cond_6

    invoke-virtual {p0, p1, p2, p4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F

    move-result p2

    cmpl-float p2, p2, p5

    if-lez p2, :cond_6

    :cond_4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    return p1

    :cond_5
    cmpg-float v1, p3, v0

    if-ltz v1, :cond_7

    cmpl-float p3, p3, v0

    if-nez p3, :cond_6

    invoke-virtual {p0, p1, p2, p4}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$g;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;I)F

    move-result p2

    cmpl-float p2, p2, p5

    if-lez p2, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    goto :goto_0
.end method

.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Landroid/view/View;Lcom/qmuiteam/qmui/util/m;IF)V
    .locals 1
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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p4, p5

    float-to-int p4, p4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-static {p4, p2, p1}, Lcom/qmuiteam/qmui/util/g;->a(III)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/util/m;->c()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p4, p5

    float-to-int p4, p4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    invoke-static {p4, p1, p2}, Lcom/qmuiteam/qmui/util/g;->a(III)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/qmuiteam/qmui/util/m;->a(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p4, p5

    float-to-int p4, p4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    invoke-static {p4, p2, p1}, Lcom/qmuiteam/qmui/util/g;->a(III)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p4, p5

    float-to-int p4, p4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    neg-int p1, p1

    invoke-static {p4, p1, p2}, Lcom/qmuiteam/qmui/util/g;->a(III)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    :goto_0
    return-void
.end method
