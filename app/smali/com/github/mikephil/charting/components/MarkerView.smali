.class public Lcom/github/mikephil/charting/components/MarkerView;
.super Landroid/widget/RelativeLayout;
.source "MarkerView.java"

# interfaces
.implements Lcom/github/mikephil/charting/components/d;


# instance fields
.field private a:Lcom/github/mikephil/charting/g/e;

.field private b:Lcom/github/mikephil/charting/g/e;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/github/mikephil/charting/charts/Chart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private setupLayoutResource(I)V
    .locals 4

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/MarkerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public a(FF)Lcom/github/mikephil/charting/g/e;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/MarkerView;->getOffset()Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    iget v2, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iput v2, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v1, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->b:F

    iput v0, v1, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/MarkerView;->getChartView()Lcom/github/mikephil/charting/charts/Chart;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/MarkerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/MarkerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    iget v3, v3, Lcom/github/mikephil/charting/g/e;->a:F

    add-float/2addr v3, p1

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    iget-object v1, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    neg-float v3, p1

    iput v3, v1, Lcom/github/mikephil/charting/g/e;->a:F

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    iget v1, v1, Lcom/github/mikephil/charting/g/e;->b:F

    add-float/2addr v1, p2

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    neg-float v1, p2

    iput v1, v0, Lcom/github/mikephil/charting/g/e;->b:F

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    return-object v0

    :cond_2
    if-eqz v0, :cond_0

    add-float v3, p1, v1

    iget-object v4, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    iget v4, v4, Lcom/github/mikephil/charting/g/e;->a:F

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, p1

    sub-float v1, v4, v1

    iput v1, v3, Lcom/github/mikephil/charting/g/e;->a:F

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    add-float v1, p2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    iget v3, v3, Lcom/github/mikephil/charting/g/e;->b:F

    add-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/github/mikephil/charting/components/MarkerView;->b:Lcom/github/mikephil/charting/g/e;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    sub-float/2addr v0, v2

    iput v0, v1, Lcom/github/mikephil/charting/g/e;->b:F

    goto :goto_1
.end method

.method public a(Landroid/graphics/Canvas;FF)V
    .locals 3

    invoke-virtual {p0, p2, p3}, Lcom/github/mikephil/charting/components/MarkerView;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, v0, Lcom/github/mikephil/charting/g/e;->a:F

    add-float/2addr v2, p2

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->b:F

    add-float/2addr v0, p3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/MarkerView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public a(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/d/d;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/components/MarkerView;->measure(II)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/MarkerView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/MarkerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/github/mikephil/charting/components/MarkerView;->layout(IIII)V

    return-void
.end method

.method public getChartView()Lcom/github/mikephil/charting/charts/Chart;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/Chart;

    goto :goto_0
.end method

.method public getOffset()Lcom/github/mikephil/charting/g/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->a:Lcom/github/mikephil/charting/g/e;

    return-object v0
.end method

.method public setChartView(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOffset(FF)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->a:Lcom/github/mikephil/charting/g/e;

    iput p1, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->a:Lcom/github/mikephil/charting/g/e;

    iput p2, v0, Lcom/github/mikephil/charting/g/e;->b:F

    return-void
.end method

.method public setOffset(Lcom/github/mikephil/charting/g/e;)V
    .locals 1

    iput-object p1, p0, Lcom/github/mikephil/charting/components/MarkerView;->a:Lcom/github/mikephil/charting/g/e;

    iget-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->a:Lcom/github/mikephil/charting/g/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/mikephil/charting/g/e;

    invoke-direct {v0}, Lcom/github/mikephil/charting/g/e;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/MarkerView;->a:Lcom/github/mikephil/charting/g/e;

    :cond_0
    return-void
.end method
