.class public Lcom/github/mikephil/charting/data/LineDataSet;
.super Lcom/github/mikephil/charting/data/k;
.source "LineDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/LineDataSet$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/k",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/e/b/f;"
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/DashPathEffect;

.field private B:Lcom/github/mikephil/charting/c/e;

.field private C:Z

.field private D:Z

.field private u:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/k;-><init>(Ljava/util/List;Ljava/lang/String;)V

    sget-object v0, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->a:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->u:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    iput-object v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->v:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->w:I

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->x:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->y:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->z:F

    iput-object v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->A:Landroid/graphics/DashPathEffect;

    new-instance v0, Lcom/github/mikephil/charting/c/b;

    invoke-direct {v0}, Lcom/github/mikephil/charting/c/b;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->B:Lcom/github/mikephil/charting/c/e;

    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->C:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->D:Z

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->v:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->v:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->v:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->x:F

    return v0
.end method

.method public B()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->y:F

    return v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->A:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public D()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->A:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->C:Z

    return v0
.end method

.method public F()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->u:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->b:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()I
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public H()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->w:I

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->D:Z

    return v0
.end method

.method public J()Lcom/github/mikephil/charting/c/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->B:Lcom/github/mikephil/charting/c/e;

    return-object v0
.end method

.method public a(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->u:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    return-void
.end method

.method public b(F)V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    const v0, 0x3d4ccccd    # 0.05f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    :goto_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    :goto_1
    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->z:F

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->C:Z

    return-void
.end method

.method public e(I)I
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public y()Lcom/github/mikephil/charting/data/LineDataSet$Mode;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->u:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    return-object v0
.end method

.method public z()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->z:F

    return v0
.end method
