.class public abstract Lcom/github/mikephil/charting/data/d;
.super Ljava/lang/Object;
.source "BaseDataSet.java"

# interfaces
.implements Lb/a/a/a/e/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Ljava/lang/Object;",
        "Lb/a/a/a/e/b/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field protected d:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected e:Z

.field protected transient f:Lb/a/a/a/c/f;

.field protected g:Landroid/graphics/Typeface;

.field private h:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private i:F

.field private j:F

.field private k:Landroid/graphics/DashPathEffect;

.field protected l:Z

.field protected m:F

.field protected n:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/github/mikephil/charting/data/d;->b:Ljava/util/List;

    const-string v1, "DataSet"

    .line 4
    iput-object v1, p0, Lcom/github/mikephil/charting/data/d;->c:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v1, p0, Lcom/github/mikephil/charting/data/d;->d:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/d;->e:Z

    .line 7
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->c:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v2, p0, Lcom/github/mikephil/charting/data/d;->h:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 8
    iput v2, p0, Lcom/github/mikephil/charting/data/d;->i:F

    .line 9
    iput v2, p0, Lcom/github/mikephil/charting/data/d;->j:F

    .line 10
    iput-object v0, p0, Lcom/github/mikephil/charting/data/d;->k:Landroid/graphics/DashPathEffect;

    .line 11
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/d;->l:Z

    const/high16 v0, 0x41880000    # 17.0f

    .line 12
    iput v0, p0, Lcom/github/mikephil/charting/data/d;->m:F

    .line 13
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/d;->n:Z

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/d;->b:Ljava/util/List;

    .line 16
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->b:Ljava/util/List;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/d;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/github/mikephil/charting/data/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/d;->m:F

    return v0
.end method

.method public E()Lb/a/a/a/c/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/d;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lb/a/a/a/g/i;->b()Lb/a/a/a/c/f;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->f:Lb/a/a/a/c/f;

    return-object v0
.end method

.method public H()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/d;->j:F

    return v0
.end method

.method public L()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/d;->i:F

    return v0
.end method

.method public R()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->g:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->f:Lb/a/a/a/c/f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lb/a/a/a/c/f;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/d;->f:Lb/a/a/a/c/f;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/d;->l:Z

    return-void
.end method

.method public b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public c(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public e(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/d;->z0()V

    .line 2
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/d;->n:Z

    return v0
.end method

.method public k0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/d;->l:Z

    return v0
.end method

.method public o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->d:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public q()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->k:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public s0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/d;->e:Z

    return v0
.end method

.method public t()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->h:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public z0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
