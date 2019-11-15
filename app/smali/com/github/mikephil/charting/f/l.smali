.class public abstract Lcom/github/mikephil/charting/f/l;
.super Lcom/github/mikephil/charting/f/c;
.source "LineScatterCandleRadarRenderer.java"


# instance fields
.field private a:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/f/c;-><init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/l;->a:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/e/b/h;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->i:Landroid/graphics/Paint;

    invoke-interface {p4}, Lcom/github/mikephil/charting/e/b/h;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->i:Landroid/graphics/Paint;

    invoke-interface {p4}, Lcom/github/mikephil/charting/e/b/h;->R()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->i:Landroid/graphics/Paint;

    invoke-interface {p4}, Lcom/github/mikephil/charting/e/b/h;->S()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-interface {p4}, Lcom/github/mikephil/charting/e/b/h;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/l;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/l;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/l;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    invoke-interface {p4}, Lcom/github/mikephil/charting/e/b/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/l;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/l;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/l;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/l;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
