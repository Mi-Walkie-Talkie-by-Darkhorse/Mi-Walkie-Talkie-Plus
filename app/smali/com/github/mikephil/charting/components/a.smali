.class public abstract Lcom/github/mikephil/charting/components/a;
.super Lcom/github/mikephil/charting/components/b;
.source "AxisBase.java"


# instance fields
.field private B:I

.field private C:F

.field private D:I

.field private E:F

.field private F:I

.field private G:Landroid/graphics/DashPathEffect;

.field private H:Landroid/graphics/DashPathEffect;

.field protected a:Lcom/github/mikephil/charting/c/d;

.field public b:[F

.field public c:[F

.field public d:I

.field public e:I

.field protected f:F

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Z

.field protected o:F

.field protected p:F

.field protected q:Z

.field protected r:Z

.field public s:F

.field public t:F

.field public u:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/b;-><init>()V

    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->B:I

    iput v3, p0, Lcom/github/mikephil/charting/components/a;->C:F

    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->D:I

    iput v3, p0, Lcom/github/mikephil/charting/components/a;->E:F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/components/a;->b:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/components/a;->c:[F

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->F:I

    iput v3, p0, Lcom/github/mikephil/charting/components/a;->f:F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->g:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->h:Z

    iput-boolean v4, p0, Lcom/github/mikephil/charting/components/a;->i:Z

    iput-boolean v4, p0, Lcom/github/mikephil/charting/components/a;->j:Z

    iput-boolean v4, p0, Lcom/github/mikephil/charting/components/a;->k:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/a;->G:Landroid/graphics/DashPathEffect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/a;->H:Landroid/graphics/DashPathEffect;

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->n:Z

    iput v2, p0, Lcom/github/mikephil/charting/components/a;->o:F

    iput v2, p0, Lcom/github/mikephil/charting/components/a;->p:F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->q:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->r:Z

    iput v2, p0, Lcom/github/mikephil/charting/components/a;->s:F

    iput v2, p0, Lcom/github/mikephil/charting/components/a;->t:F

    iput v2, p0, Lcom/github/mikephil/charting/components/a;->u:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->z:F

    invoke-static {v5}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->w:F

    invoke-static {v5}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->x:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/a;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->E:F

    return-void
.end method

.method public a(FF)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->q:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->t:F

    :goto_0
    iget-boolean v1, p0, Lcom/github/mikephil/charting/components/a;->r:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/github/mikephil/charting/components/a;->s:F

    :goto_1
    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    add-float/2addr v1, v4

    sub-float/2addr v0, v4

    :cond_0
    iput v0, p0, Lcom/github/mikephil/charting/components/a;->t:F

    iput v1, p0, Lcom/github/mikephil/charting/components/a;->s:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->u:F

    return-void

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/components/a;->o:F

    sub-float v0, p1, v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/github/mikephil/charting/components/a;->p:F

    add-float/2addr v1, p2

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->D:I

    return-void
.end method

.method public a(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/a;->b(I)V

    iput-boolean p2, p0, Lcom/github/mikephil/charting/components/a;->h:Z

    return-void
.end method

.method public a(Lcom/github/mikephil/charting/c/d;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/github/mikephil/charting/c/a;

    iget v1, p0, Lcom/github/mikephil/charting/components/a;->e:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/a;->a:Lcom/github/mikephil/charting/c/d;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/a;->a:Lcom/github/mikephil/charting/c/d;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/a;->i:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->i:Z

    return v0
.end method

.method public b(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->q:Z

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->t:F

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->s:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->u:F

    return-void
.end method

.method public b(I)V
    .locals 2

    const/16 v1, 0x19

    const/4 v0, 0x2

    if-le p1, v1, :cond_1

    :goto_0
    if-ge v1, v0, :cond_0

    :goto_1
    iput v0, p0, Lcom/github/mikephil/charting/components/a;->F:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->h:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->j:Z

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->b:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/a;->p()Lcom/github/mikephil/charting/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/components/a;->b:[F

    aget v1, v1, p1

    invoke-interface {v0, v1, p0}, Lcom/github/mikephil/charting/c/d;->a(FLcom/github/mikephil/charting/components/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->r:Z

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->s:F

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->t:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/a;->u:F

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->B:I

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->o:F

    return-void
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->E:F

    return v0
.end method

.method public e(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/a;->p:F

    return-void
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->C:F

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->D:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->k:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->h:Z

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->F:I

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->g:Z

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/a;->f:F

    return v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->m:Ljava/util/List;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/a;->n:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 5

    const-string v1, ""

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->b:[F

    array-length v0, v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/components/a;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public p()Lcom/github/mikephil/charting/c/d;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->a:Lcom/github/mikephil/charting/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->a:Lcom/github/mikephil/charting/c/d;

    instance-of v0, v0, Lcom/github/mikephil/charting/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->a:Lcom/github/mikephil/charting/c/d;

    check-cast v0, Lcom/github/mikephil/charting/c/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/c/a;->a()I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/components/a;->e:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/c/a;

    iget v1, p0, Lcom/github/mikephil/charting/components/a;->e:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/a;->a:Lcom/github/mikephil/charting/c/d;

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->a:Lcom/github/mikephil/charting/c/d;

    return-object v0
.end method

.method public q()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->H:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public r()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/a;->G:Landroid/graphics/DashPathEffect;

    return-object v0
.end method
