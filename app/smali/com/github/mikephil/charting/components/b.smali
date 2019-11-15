.class public abstract Lcom/github/mikephil/charting/components/b;
.super Ljava/lang/Object;
.source "ComponentBase.java"


# instance fields
.field protected A:I

.field protected v:Z

.field protected w:F

.field protected x:F

.field protected y:Landroid/graphics/Typeface;

.field protected z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/b;->v:Z

    iput v1, p0, Lcom/github/mikephil/charting/components/b;->w:F

    iput v1, p0, Lcom/github/mikephil/charting/components/b;->x:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/b;->y:Landroid/graphics/Typeface;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->z:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->A:I

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/b;->v:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/b;->A:I

    return-void
.end method

.method public s()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/b;->w:F

    return v0
.end method

.method public t()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/b;->x:F

    return v0
.end method

.method public u()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/b;->y:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public v()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/b;->z:F

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/b;->A:I

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/b;->v:Z

    return v0
.end method
