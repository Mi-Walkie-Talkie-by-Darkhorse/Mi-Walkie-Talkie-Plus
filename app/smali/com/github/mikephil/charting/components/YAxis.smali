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
.field private I:Z

.field protected J:Z

.field protected K:Z

.field protected L:I

.field protected M:F

.field protected N:F

.field protected O:F

.field private P:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field private Q:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected R:F

.field protected S:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->I:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->J:Z

    .line 4
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->K:Z

    const v0, -0x777778

    .line 5
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->L:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->M:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 7
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->N:F

    .line 8
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->O:F

    .line 9
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->P:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->R:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 11
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->S:F

    .line 12
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->Q:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 13
    iput v0, p0, Lcom/github/mikephil/charting/components/b;->c:F

    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->S:F

    return v0
.end method

.method public B()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->R:F

    return v0
.end method

.method public C()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->O:F

    return v0
.end method

.method public D()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->N:F

    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->L:I

    return v0
.end method

.method public F()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->M:F

    return v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->I:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->K:Z

    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->J:Z

    return v0
.end method

.method public J()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->z()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/Paint;)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/b;->e:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/a;->p()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/b;->e()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    return p1
.end method

.method public a(FF)V
    .locals 4

    .line 4
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->D:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/components/a;->G:F

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->E:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/github/mikephil/charting/components/a;->F:F

    :cond_1
    sub-float v0, p2, p1

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p2, v1

    sub-float/2addr p1, v1

    .line 7
    :cond_2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->D:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_3

    div-float v1, v0, v2

    .line 8
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->C()F

    move-result v3

    mul-float v1, v1, v3

    sub-float/2addr p1, v1

    .line 9
    iput p1, p0, Lcom/github/mikephil/charting/components/a;->G:F

    .line 10
    :cond_3
    iget-boolean p1, p0, Lcom/github/mikephil/charting/components/a;->E:Z

    if-nez p1, :cond_4

    div-float/2addr v0, v2

    .line 11
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->D()F

    move-result p1

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 12
    iput p2, p0, Lcom/github/mikephil/charting/components/a;->F:F

    .line 13
    :cond_4
    iget p1, p0, Lcom/github/mikephil/charting/components/a;->F:F

    iget p2, p0, Lcom/github/mikephil/charting/components/a;->G:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->H:F

    return-void
.end method

.method public b(Landroid/graphics/Paint;)F
    .locals 7

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/b;->e:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/a;->p()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lb/a/a/a/g/i;->c(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/b;->d()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->B()F

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->A()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    .line 6
    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v0

    :cond_0
    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v1}, Lb/a/a/a/g/i;->a(F)F

    move-result v1

    :cond_1
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    .line 8
    :goto_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public f(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->O:F

    return-void
.end method

.method public g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->N:F

    return-void
.end method

.method public y()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->Q:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public z()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->P:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object v0
.end method
