.class public Lcom/qmuiteam/qmui/widget/tab/c;
.super Landroid/graphics/drawable/Drawable;
.source "QMUITabIcon.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:F

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->c:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->d:Z

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 14
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    :cond_1
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/tab/c;->d:Z

    return-void
.end method


# virtual methods
.method public a(FI)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 27
    invoke-static {p1, v1, v0}, Lcom/qmuiteam/qmui/util/g;->a(FFF)F

    move-result p1

    .line 28
    iput p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->c:F

    .line 29
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 30
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->d:Z

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x437f0000    # 255.0f

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    float-to-int p1, v0

    .line 32
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 33
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    rsub-int p1, p1, 0xff

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->c:F

    invoke-static {p1, p2, v1}, Lcom/qmuiteam/qmui/util/b;->a(IIF)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    .line 20
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 23
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    .line 24
    :cond_0
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->d:Z

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->c:F

    invoke-static {p2, p3, v0}, Lcom/qmuiteam/qmui/util/b;->a(IIF)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 8
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 16
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    rsub-int p2, v0, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/c;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
