.class public Lcom/github/mikephil/charting/d/d;
.super Ljava/lang/Object;
.source "Highlight.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/d/d;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput p6, p0, Lcom/github/mikephil/charting/d/d;->g:I

    return-void
.end method

.method public constructor <init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    const/4 v1, -0x1

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/github/mikephil/charting/d/d;->a:F

    iput v0, p0, Lcom/github/mikephil/charting/d/d;->b:F

    iput v1, p0, Lcom/github/mikephil/charting/d/d;->e:I

    iput v1, p0, Lcom/github/mikephil/charting/d/d;->g:I

    iput p1, p0, Lcom/github/mikephil/charting/d/d;->a:F

    iput p2, p0, Lcom/github/mikephil/charting/d/d;->b:F

    iput p3, p0, Lcom/github/mikephil/charting/d/d;->c:F

    iput p4, p0, Lcom/github/mikephil/charting/d/d;->d:F

    iput p5, p0, Lcom/github/mikephil/charting/d/d;->f:I

    iput-object p6, p0, Lcom/github/mikephil/charting/d/d;->h:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/d;->a:F

    return v0
.end method

.method public a(FF)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/d/d;->i:F

    iput p2, p0, Lcom/github/mikephil/charting/d/d;->j:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/d/d;->e:I

    return-void
.end method

.method public a(Lcom/github/mikephil/charting/d/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/github/mikephil/charting/d/d;->f:I

    iget v2, p1, Lcom/github/mikephil/charting/d/d;->f:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/github/mikephil/charting/d/d;->a:F

    iget v2, p1, Lcom/github/mikephil/charting/d/d;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/github/mikephil/charting/d/d;->g:I

    iget v2, p1, Lcom/github/mikephil/charting/d/d;->g:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/github/mikephil/charting/d/d;->e:I

    iget v2, p1, Lcom/github/mikephil/charting/d/d;->e:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/d;->b:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/d;->c:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/d;->d:F

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/d;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/d;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/d;->g:I

    return v0
.end method

.method public h()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/d/d;->h:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/d;->i:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/d;->j:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Highlight, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/d/d;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/d/d;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSetIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/d/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stackIndex (only stacked barentry): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/d/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
