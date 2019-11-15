.class public abstract Lcom/github/mikephil/charting/charts/BarLineChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "BarLineChartBase.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/a/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/b",
        "<+",
        "Lcom/github/mikephil/charting/e/b/b",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TT;>;",
        "Lcom/github/mikephil/charting/e/a/b;"
    }
.end annotation


# instance fields
.field protected A:Lcom/github/mikephil/charting/g/d;

.field protected B:Lcom/github/mikephil/charting/g/d;

.field protected C:[F

.field private a:Z

.field private ac:Z

.field private ad:Z

.field private ae:J

.field private af:J

.field private ag:Landroid/graphics/RectF;

.field private ah:Z

.field protected b:I

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Landroid/graphics/Paint;

.field protected h:Landroid/graphics/Paint;

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:F

.field protected m:Z

.field protected n:Lcom/github/mikephil/charting/listener/d;

.field protected o:Lcom/github/mikephil/charting/components/YAxis;

.field protected p:Lcom/github/mikephil/charting/components/YAxis;

.field protected q:Lcom/github/mikephil/charting/f/t;

.field protected r:Lcom/github/mikephil/charting/f/t;

.field protected s:Lcom/github/mikephil/charting/g/g;

.field protected t:Lcom/github/mikephil/charting/g/g;

.field protected u:Lcom/github/mikephil/charting/f/q;

.field protected v:Landroid/graphics/Matrix;

.field protected w:Landroid/graphics/Matrix;

.field protected x:Landroid/graphics/Matrix;

.field protected y:Landroid/graphics/Matrix;

.field protected z:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ac:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ae:J

    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af:J

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ag:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y:Landroid/graphics/Matrix;

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z:[F

    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/g/d;->a(DD)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:Lcom/github/mikephil/charting/g/d;

    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/g/d;->a(DD)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->B:Lcom/github/mikephil/charting/g/d;

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ac:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ae:J

    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af:J

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ag:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y:Landroid/graphics/Matrix;

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z:[F

    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/g/d;->a(DD)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:Lcom/github/mikephil/charting/g/d;

    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/g/d;->a(DD)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->B:Lcom/github/mikephil/charting/g/d;

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ac:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ae:J

    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af:J

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ag:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y:Landroid/graphics/Matrix;

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z:[F

    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/g/d;->a(DD)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:Lcom/github/mikephil/charting/g/d;

    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/g/d;->a(DD)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->B:Lcom/github/mikephil/charting/g/d;

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    return-void
.end method


# virtual methods
.method public a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcom/github/mikephil/charting/g/g;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcom/github/mikephil/charting/g/g;

    goto :goto_0
.end method

.method protected a()V
    .locals 5

    const/16 v4, 0xf0

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    new-instance v0, Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/g/g;-><init>(Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcom/github/mikephil/charting/g/g;

    new-instance v0, Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/g/g;-><init>(Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcom/github/mikephil/charting/g/g;

    new-instance v0, Lcom/github/mikephil/charting/f/t;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcom/github/mikephil/charting/g/g;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/t;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/g/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    new-instance v0, Lcom/github/mikephil/charting/f/t;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcom/github/mikephil/charting/g/g;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/t;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/g/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    new-instance v0, Lcom/github/mikephil/charting/f/q;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcom/github/mikephil/charting/g/g;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/q;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/g/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    new-instance v0, Lcom/github/mikephil/charting/d/b;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/d/b;-><init>(Lcom/github/mikephil/charting/e/a/b;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setHighlighter(Lcom/github/mikephil/charting/d/b;)V

    new-instance v0, Lcom/github/mikephil/charting/listener/a;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->p()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/listener/a;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public a(FFFF)V
    .locals 6

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    neg-float v4, p4

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/g/j;->a(FFFFLandroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, p0, v1}, Lcom/github/mikephil/charting/g/j;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j()V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/RectF;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->c:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->f()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->b:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->d()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->a:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->n()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->s()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->a:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->n()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->s()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->a:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->e()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->t()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    :pswitch_5
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->t()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->a:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->e()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_7
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->t()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->E:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    :pswitch_8
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->t()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->E:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->u:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->u:F

    goto :goto_0
.end method

.method public b(FF)Lcom/github/mikephil/charting/e/b/b;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/b;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/b;->g()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/b;->h()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->a(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/b;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->a(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/b;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->a(FF)V

    return-void
.end method

.method public c(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    instance-of v0, v0, Lcom/github/mikephil/charting/listener/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    check-cast v0, Lcom/github/mikephil/charting/listener/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/listener/a;->b()V

    :cond_0
    return-void
.end method

.method public d(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v0

    return v0
.end method

.method protected f()V
    .locals 5

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "MPAndroidChart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing Value-Px Matrix, xmin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->t:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xmax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->s:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xdelta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->u:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->u:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->t:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/g/g;->a(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->u:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->t:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/g/g;->a(FFFF)V

    return-void
.end method

.method protected g()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/g;->a(Z)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/g;->a(Z)V

    return-void
.end method

.method public getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    return-object v0
.end method

.method public getAxisRight()Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/github/mikephil/charting/data/b;
    .locals 1

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    return-object v0
.end method

.method public getDrawListener()Lcom/github/mikephil/charting/listener/d;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n:Lcom/github/mikephil/charting/listener/d;

    return-object v0
.end method

.method public getHighestVisibleX()F
    .locals 4

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->B:Lcom/github/mikephil/charting/g/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/g/g;->a(FFLcom/github/mikephil/charting/g/d;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->s:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->B:Lcom/github/mikephil/charting/g/d;

    iget-wide v2, v2, Lcom/github/mikephil/charting/g/d;->a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getLowestVisibleX()F
    .locals 4

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:Lcom/github/mikephil/charting/g/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/g/g;->a(FFLcom/github/mikephil/charting/g/d;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->t:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:Lcom/github/mikephil/charting/g/d;

    iget-wide v2, v2, Lcom/github/mikephil/charting/g/d;->a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    return v0
.end method

.method public getMinOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    return v0
.end method

.method public getRendererLeftYAxis()Lcom/github/mikephil/charting/f/t;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    return-object v0
.end method

.method public getRendererRightYAxis()Lcom/github/mikephil/charting/f/t;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    return-object v0
.end method

.method public getRendererXAxis()Lcom/github/mikephil/charting/f/q;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->q()F

    move-result v0

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->r()F

    move-result v0

    goto :goto_0
.end method

.method public getVisibleXRange()F
    .locals 2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getYChartMax()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->s:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->s:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getYChartMin()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->t:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->t:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "MPAndroidChart"

    const-string v1, "Preparing... DATA NOT SET."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Z

    if-eqz v0, :cond_2

    const-string v0, "MPAndroidChart"

    const-string v1, "Preparing..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Lcom/github/mikephil/charting/f/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/g;->a()V

    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->s:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/t;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->s:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/t;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->s:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/q;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Lcom/github/mikephil/charting/f/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/f/i;->a(Lcom/github/mikephil/charting/data/h;)V

    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j()V

    goto :goto_0
.end method

.method protected i()V
    .locals 4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/data/b;->a(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/b;->g()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/b;->h()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->a(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/b;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->a(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/b;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->a(FF)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j()V

    return-void
.end method

.method public j()V
    .locals 9

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ag:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ag:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v4

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ag:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v3, v4, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ag:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ag:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->J()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/f/t;->a()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/YAxis;->a(Landroid/graphics/Paint;)F

    move-result v4

    add-float/2addr v0, v4

    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->J()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/f/t;->a()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/YAxis;->a(Landroid/graphics/Paint;)F

    move-result v4

    add-float/2addr v1, v4

    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/XAxis;->E:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->t()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v5, v6, :cond_4

    add-float/2addr v2, v4

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraTopOffset()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraRightOffset()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraBottomOffset()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraLeftOffset()F

    move-result v4

    add-float/2addr v0, v4

    iget v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    invoke-static {v4}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/github/mikephil/charting/g/j;->a(FFFF)V

    iget-boolean v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Z

    if-eqz v4, :cond_3

    const-string v4, "MPAndroidChart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetLeft: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", offsetTop: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", offsetRight: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetBottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

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
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g()V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f()V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->a:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v5, v6, :cond_5

    add-float/2addr v3, v4

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->c:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v5, v6, :cond_2

    add-float/2addr v2, v4

    add-float/2addr v3, v4

    goto/16 :goto_0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ac:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->x()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->t:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->s:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/github/mikephil/charting/f/t;->a(FFZ)V

    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->x()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->t:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->s:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/github/mikephil/charting/f/t;->a(FFZ)V

    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->t:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/XAxis;->s:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/github/mikephil/charting/f/q;->a(FFZ)V

    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/q;->b(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->b(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->b(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i()V

    :cond_5
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/q;->c(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->c(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->c(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->n()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/q;->d(Landroid/graphics/Canvas;)V

    :cond_6
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->n()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->e(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->n()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->e(Landroid/graphics/Canvas;)V

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/f/g;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Lcom/github/mikephil/charting/f/g;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->U:[Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v3, p1, v4}, Lcom/github/mikephil/charting/f/g;->a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V

    :cond_9
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/g;->c(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->n()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/q;->d(Landroid/graphics/Canvas;)V

    :cond_a
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->n()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->e(Landroid/graphics/Canvas;)V

    :cond_b
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->n()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->e(Landroid/graphics/Canvas;)V

    :cond_c
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->a(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/t;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/f/g;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Lcom/github/mikephil/charting/f/i;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/i;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Z

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ae:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ae:J

    iget-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af:J

    iget-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ae:J

    iget-wide v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af:J

    div-long/2addr v2, v4

    const-string v4, "MPAndroidChart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drawtime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms, average: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms, cycles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/f/g;->b(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    const/4 v2, 0x0

    aput v2, v1, v3

    aput v2, v0, v4

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v1

    aput v1, v0, v3

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/g;->b([F)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/Chart;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:[F

    invoke-virtual {v0, v1, p0}, Lcom/github/mikephil/charting/g/j;->a([FLandroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->p()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v3}, Lcom/github/mikephil/charting/g/j;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->K:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->s()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->v()Z

    move-result v0

    return v0
.end method

.method public setAutoScaleMinMaxEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setClipValuesToContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/g/j;->k(F)V

    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/g/j;->l(F)V

    return-void
.end method

.method public setDrawBorders(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    return-void
.end method

.method public setDrawGridBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    return-void
.end method

.method public setGridBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHighlightPerDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    return-void
.end method

.method public setKeepPositionOnRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    return-void
.end method

.method public setMaxVisibleValueCount(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    return-void
.end method

.method public setMinOffset(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    return-void
.end method

.method public setOnDrawListener(Lcom/github/mikephil/charting/listener/d;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n:Lcom/github/mikephil/charting/listener/d;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;->setPaint(Landroid/graphics/Paint;I)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setPinchZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    return-void
.end method

.method public setRendererLeftYAxis(Lcom/github/mikephil/charting/f/t;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lcom/github/mikephil/charting/f/t;

    return-void
.end method

.method public setRendererRightYAxis(Lcom/github/mikephil/charting/f/t;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lcom/github/mikephil/charting/f/t;

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ac:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad:Z

    return-void
.end method

.method public setScaleMinima(FF)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/g/j;->a(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/g/j;->c(F)V

    return-void
.end method

.method public setScaleXEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ac:Z

    return-void
.end method

.method public setScaleYEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad:Z

    return-void
.end method

.method public setViewPortOffsets(FFFF)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    new-instance v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/mikephil/charting/charts/BarLineChartBase$1;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;FFFF)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVisibleXRange(FF)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->u:F

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->u:F

    div-float/2addr v1, p2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/g/j;->b(FF)V

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->u:F

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->a(F)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->u:F

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->b(F)V

    return-void
.end method

.method public setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    div-float/2addr v0, p1

    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    div-float/2addr v1, p2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/g/j;->c(FF)V

    return-void
.end method

.method public setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->c(F)V

    return-void
.end method

.method public setVisibleYRangeMinimum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->d(F)V

    return-void
.end method

.method public setXAxisRenderer(Lcom/github/mikephil/charting/f/q;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lcom/github/mikephil/charting/f/q;

    return-void
.end method

.method public t()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
