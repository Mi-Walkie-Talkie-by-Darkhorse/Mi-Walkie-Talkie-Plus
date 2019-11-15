.class public Lcom/github/mikephil/charting/components/YAxis;
.super Lcom/github/mikephil/charting/components/a;
.source "YAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/YAxis$AxisDependency;,
        Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    }
.end annotation


# instance fields
.field protected B:Z

.field protected C:Z

.field protected D:I

.field protected E:F

.field protected F:F

.field protected G:F

.field protected H:F

.field protected I:F

.field private J:Z

.field private K:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field private L:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->J:Z

    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/YAxis;->B:Z

    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/YAxis;->C:Z

    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->D:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->E:F

    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->F:F

    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->G:F

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->K:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->H:F

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->I:F

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->L:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->x:F

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->J:Z

    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/YAxis;->B:Z

    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/YAxis;->C:Z

    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->D:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->E:F

    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->F:F

    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->G:F

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->K:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->H:F

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->I:F

    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->L:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->x:F

    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->I:F

    return v0
.end method

.method public B()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->K:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->J:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->B:Z

    return v0
.end method

.method public E()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->F:F

    return v0
.end method

.method public F()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->G:F

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->C:Z

    return v0
.end method

.method public H()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->D:I

    return v0
.end method

.method public I()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->E:F

    return v0
.end method

.method public J()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->B()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Paint;)F
    .locals 8

    const/4 v4, 0x0

    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->z:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->s()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->z()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->A()F

    move-result v0

    cmpl-float v3, v2, v4

    if-lez v3, :cond_0

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v2

    :cond_0
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    :cond_1
    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a(FF)V
    .locals 4

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->q:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/components/YAxis;->t:F

    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->r:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/github/mikephil/charting/components/YAxis;->s:F

    :cond_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    add-float/2addr p2, v2

    sub-float/2addr p1, v2

    :cond_2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->q:Z

    if-nez v1, :cond_3

    div-float v1, v0, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->F()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float v1, p1, v1

    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->t:F

    :cond_3
    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->r:Z

    if-nez v1, :cond_4

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->E()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->s:F

    :cond_4
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->s:F

    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->t:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->u:F

    return-void
.end method

.method public b(Landroid/graphics/Paint;)F
    .locals 3

    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->z:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->t()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->F:F

    return-void
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->G:F

    return-void
.end method

.method public y()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->L:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public z()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->H:F

    return v0
.end method
