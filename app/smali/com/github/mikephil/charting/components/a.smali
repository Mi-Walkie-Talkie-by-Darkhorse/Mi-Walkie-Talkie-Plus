.class public abstract Lcom/github/mikephil/charting/components/a;
.super Lcom/github/mikephil/charting/components/b;
.source "AxisBase.java"


# instance fields
.field protected A:Z

.field protected B:F

.field protected C:F

.field protected D:Z

.field protected E:Z

.field public F:F

.field public G:F

.field public H:F

.field protected g:Lb/a/a/a/c/d;

.field private h:I

.field private i:F

.field private j:I

.field private k:F

.field public l:[F

.field public m:[F

.field public n:I

.field public o:I

.field private p:I

.field protected q:F

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Z

.field private x:Landroid/graphics/DashPathEffect;

.field private y:Landroid/graphics/DashPathEffect;

.field protected z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/b;-><init>()V

    const v0, -0x777778

    .line 2
    iput v0, p0, Lcom/github/mikephil/charting/components/a;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/github/mikephil/charting/components/a;->i:F

    .line 4
    iput v0, p0, Lcom/github/mikephil/charting/components/a;->j:I

    .line 5
    iput v1, p0, Lcom/github/mikephil/charting/components/a;->k:F

    const/4 v0, 0x0

    new-array v2, v0, [F

    .line 6
    iput-object v2, p0, Lcom/github/mikephil/charting/components/a;->l:[F

    new-array v2, v0, [F

    .line 7
    iput-object v2, p0, Lcom/github/mikephil/charting/components/a;->m:[F

    const/4 v2, 0x6

    .line 8
    iput v2, p0, Lcom/github/mikephil/charting/components/a;->p:I

    .line 9
    iput v1, p0, Lcom/github/mikephil/charting/components/a;->q:F

    .line 10
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->r:Z

    .line 11
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->s:Z

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->t:Z

    .line 13
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->u:Z

    .line 14
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->v:Z

    .line 15
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->w:Z

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/github/mikephil/charting/components/a;->x:Landroid/graphics/DashPathEffect;

    .line 17
    iput-object v1, p0, Lcom/github/mikephil/charting/components/a;->y:Landroid/graphics/DashPathEffect;

    .line 18
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->A:Z

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/github/mikephil/charting/components/a;->B:F

    .line 20
    iput v1, p0, Lcom/github/mikephil/charting/components/a;->C:F

    .line 21
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->D:Z

    .line 22
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->E:Z

    .line 23
    iput v1, p0, Lcom/github/mikephil/charting/components/a;->F:F

    .line 24
    iput v1, p0, Lcom/github/mikephil/charting/components/a;->G:F

    .line 25
    iput v1, p0, Lcom/github/mikephil/charting/components/a;->H:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 26
    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->e:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 27
    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/components/b;->b:F

    .line 28
    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->c:F

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/a;->z:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/a/a/a/g/i;->a(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->k:F

    return-void
.end method

.method public a(FF)V
    .locals 2

    .line 6
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->D:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/components/a;->G:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->B:F

    sub-float/2addr p1, v0

    .line 7
    :goto_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->E:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/github/mikephil/charting/components/a;->F:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->C:F

    add-float/2addr p2, v0

    :goto_1
    sub-float v0, p2, p1

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    .line 9
    :cond_2
    iput p1, p0, Lcom/github/mikephil/charting/components/a;->G:F

    .line 10
    iput p2, p0, Lcom/github/mikephil/charting/components/a;->F:F

    sub-float/2addr p2, p1

    .line 11
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->H:F

    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/a;->d(I)V

    .line 3
    iput-boolean p2, p0, Lcom/github/mikephil/charting/components/a;->s:Z

    return-void
.end method

.method public a(Lb/a/a/a/c/d;)V
    .locals 1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lb/a/a/a/c/a;

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->o:I

    invoke-direct {p1, v0}, Lb/a/a/a/c/a;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/components/a;->g:Lb/a/a/a/c/d;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/a;->g:Lb/a/a/a/c/d;

    :goto_0
    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->l:[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/a;->q()Lb/a/a/a/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/components/a;->l:[F

    aget p1, v1, p1

    invoke-interface {v0, p1, p0}, Lb/a/a/a/c/d;->a(FLcom/github/mikephil/charting/components/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public b(F)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->E:Z

    .line 5
    iput p1, p0, Lcom/github/mikephil/charting/components/a;->F:F

    .line 6
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->G:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->H:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/a;->t:Z

    return-void
.end method

.method public c(F)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->D:Z

    .line 3
    iput p1, p0, Lcom/github/mikephil/charting/components/a;->G:F

    .line 4
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->F:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->H:F

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/a;->j:I

    return-void
.end method

.method public d(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/github/mikephil/charting/components/a;->C:F

    return-void
.end method

.method public d(I)V
    .locals 1

    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    const/16 p1, 0x19

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    const/4 p1, 0x2

    .line 1
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/components/a;->p:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/a;->s:Z

    return-void
.end method

.method public e(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/a;->B:F

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->j:I

    return v0
.end method

.method public h()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->x:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->k:F

    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->q:F

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->h:I

    return v0
.end method

.method public l()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->y:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->i:F

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->p:I

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->z:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/a;->l:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/components/a;->b(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public q()Lb/a/a/a/c/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->g:Lb/a/a/a/c/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lb/a/a/a/c/a;

    if-eqz v1, :cond_1

    check-cast v0, Lb/a/a/a/c/a;

    .line 2
    invoke-virtual {v0}, Lb/a/a/a/c/a;->a()I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/components/a;->o:I

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lb/a/a/a/c/a;

    iget v1, p0, Lcom/github/mikephil/charting/components/a;->o:I

    invoke-direct {v0, v1}, Lb/a/a/a/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/a;->g:Lb/a/a/a/c/d;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->g:Lb/a/a/a/c/d;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->w:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->n:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->u:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->t:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->v:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->A:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->s:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->r:Z

    return v0
.end method
