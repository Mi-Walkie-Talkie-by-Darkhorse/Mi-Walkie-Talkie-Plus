.class public Lcom/github/mikephil/charting/charts/HorizontalBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "HorizontalBarChart.java"


# instance fields
.field protected ac:[F

.field private ad:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ad:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ac:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ad:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ac:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ad:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ac:[F

    return-void
.end method


# virtual methods
.method public a(FF)Lcom/github/mikephil/charting/d/d;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getHighlighter()Lcom/github/mikephil/charting/d/f;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/github/mikephil/charting/d/f;->a(FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    new-instance v0, Lcom/github/mikephil/charting/g/c;

    invoke-direct {v0}, Lcom/github/mikephil/charting/g/c;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarChart;->a()V

    new-instance v0, Lcom/github/mikephil/charting/g/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/g/h;-><init>(Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->s:Lcom/github/mikephil/charting/g/g;

    new-instance v0, Lcom/github/mikephil/charting/g/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/g/h;-><init>(Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->t:Lcom/github/mikephil/charting/g/g;

    new-instance v0, Lcom/github/mikephil/charting/f/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->T:Lcom/github/mikephil/charting/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/f/h;-><init>(Lcom/github/mikephil/charting/e/a/a;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->Q:Lcom/github/mikephil/charting/f/g;

    new-instance v0, Lcom/github/mikephil/charting/d/e;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/d/e;-><init>(Lcom/github/mikephil/charting/e/a/a;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->setHighlighter(Lcom/github/mikephil/charting/d/b;)V

    new-instance v0, Lcom/github/mikephil/charting/f/u;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->s:Lcom/github/mikephil/charting/g/g;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/u;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/g/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->q:Lcom/github/mikephil/charting/f/t;

    new-instance v0, Lcom/github/mikephil/charting/f/u;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->t:Lcom/github/mikephil/charting/g/g;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/u;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/g/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->r:Lcom/github/mikephil/charting/f/t;

    new-instance v0, Lcom/github/mikephil/charting/f/r;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->s:Lcom/github/mikephil/charting/g/g;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/github/mikephil/charting/f/r;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/charts/BarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->u:Lcom/github/mikephil/charting/f/q;

    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/d/d;)[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->j()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->i()F

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method protected f()V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->t:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->u:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/XAxis;->t:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/g/g;->a(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->s:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->u:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/XAxis;->t:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/g/g;->a(FFFF)V

    return-void
.end method

.method public getHighestVisibleX()F
    .locals 4

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->B:Lcom/github/mikephil/charting/g/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/g/g;->a(FFLcom/github/mikephil/charting/g/d;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->s:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->B:Lcom/github/mikephil/charting/g/d;

    iget-wide v2, v2, Lcom/github/mikephil/charting/g/d;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getLowestVisibleX()F
    .locals 4

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->A:Lcom/github/mikephil/charting/g/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/g/g;->a(FFLcom/github/mikephil/charting/g/d;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->t:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->A:Lcom/github/mikephil/charting/g/d;

    iget-wide v2, v2, Lcom/github/mikephil/charting/g/d;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public j()V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ad:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->a(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ad:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v3, v4, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ad:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ad:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v2, v4, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ad:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->J()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->q:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/f/t;->a()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/YAxis;->b(Landroid/graphics/Paint;)F

    move-result v4

    add-float/2addr v0, v4

    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->J()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->r:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/f/t;->a()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/YAxis;->b(Landroid/graphics/Paint;)F

    move-result v4

    add-float/2addr v1, v4

    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/XAxis;->D:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v5, v6, :cond_4

    add-float/2addr v3, v4

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getExtraTopOffset()F

    move-result v4

    add-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getExtraRightOffset()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getExtraBottomOffset()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getExtraLeftOffset()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->l:F

    invoke-static {v4}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/github/mikephil/charting/g/j;->a(FFFF)V

    iget-boolean v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->D:Z

    if-eqz v4, :cond_3

    const-string v4, "MPAndroidChart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetLeft: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", offsetTop: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", offsetRight: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", offsetBottom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MPAndroidChart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->g()V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->f()V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->a:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v5, v6, :cond_5

    add-float/2addr v2, v4

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->c:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v5, v6, :cond_2

    add-float/2addr v3, v4

    add-float/2addr v2, v4

    goto/16 :goto_0
.end method

.method public setVisibleXRange(FF)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->u:F

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->u:F

    div-float/2addr v1, p2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/g/j;->c(FF)V

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->u:F

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->c(F)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->u:F

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->d(F)V

    return-void
.end method

.method public setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    div-float/2addr v0, p1

    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    div-float/2addr v1, p2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/g/j;->b(FF)V

    return-void
.end method

.method public setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->a(F)V

    return-void
.end method

.method public setVisibleYRangeMinimum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->b(F)V

    return-void
.end method
