.class public Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "QMUIPullRefreshView.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;
.implements Lcom/qmuiteam/qmui/c/i/a;


# static fields
.field private static c:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La/b/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, La/b/g;-><init>(I)V

    sput-object v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->c:La/b/g;

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_refresh_view_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tintColor"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-direct {p2, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 p2, 0x1

    new-array p2, p2, [I

    .line 4
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_refresh_view_color:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x0

    aput p1, p2, v0

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->setColorSchemeColors([I)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->a(I)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const p2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->a(F)V

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 10
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42200000    # 40.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    const v0, 0x3f59999a    # 0.85f

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    const v0, 0x3ecccccd    # 0.4f

    int-to-float p2, p2

    mul-float p2, p2, v0

    div-float/2addr p2, p1

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->a(Z)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->a(FF)V

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->b(F)V

    return-void
.end method

.method public getDefaultSkinAttrs()La/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->c:La/b/g;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->b:I

    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->a([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 4
    aget v3, p1, v2

    invoke-static {v0, v3}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->setColorSchemeColors([I)V

    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->b:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->b:I

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->a(I)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullRefreshView;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
