.class public Lcom/github/mikephil/charting/g/h;
.super Lcom/github/mikephil/charting/g/g;
.source "TransformerHorizontalBarChart.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/g/g;-><init>(Lcom/github/mikephil/charting/g/j;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/g/h;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/g/h;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/g/h;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->a()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/g/h;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/g/h;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->d()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/g/h;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/g/h;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->n()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/g/h;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->b()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/g/h;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/g/h;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->d()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/g/h;->b:Landroid/graphics/Matrix;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0
.end method
