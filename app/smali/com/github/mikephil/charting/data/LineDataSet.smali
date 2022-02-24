.class public Lcom/github/mikephil/charting/data/LineDataSet;
.super Lcom/github/mikephil/charting/data/k;
.source "LineDataSet.java"

# interfaces
.implements Lb/a/a/a/e/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/LineDataSet$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/k<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lb/a/a/a/e/b/f;"
    }
.end annotation


# instance fields
.field private D:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:Landroid/graphics/DashPathEffect;

.field private K:Lb/a/a/a/c/e;

.field private L:Z

.field private M:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/k;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->a:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->D:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->E:Ljava/util/List;

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->F:I

    const/high16 p2, 0x41000000    # 8.0f

    .line 5
    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->G:F

    const/high16 p2, 0x40800000    # 4.0f

    .line 6
    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->H:F

    const p2, 0x3e4ccccd    # 0.2f

    .line 7
    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->I:F

    .line 8
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->J:Landroid/graphics/DashPathEffect;

    .line 9
    new-instance p1, Lb/a/a/a/c/b;

    invoke-direct {p1}, Lb/a/a/a/c/b;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->K:Lb/a/a/a/c/e;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->L:Z

    .line 11
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->M:Z

    .line 12
    iget-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->E:Ljava/util/List;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->E:Ljava/util/List;

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->E:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 15
    iget-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->E:Ljava/util/List;

    const/16 p2, 0x8c

    const/16 v0, 0xea

    const/16 v1, 0xff

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public A()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->J:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public I()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->G:F

    return v0
.end method

.method public a(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->D:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    return-void
.end method

.method public c(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const p1, 0x3d4ccccd    # 0.05f

    .line 1
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->I:F

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->L:Z

    return-void
.end method

.method public d()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->D:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    return-object v0
.end method

.method public k()Lb/a/a/a/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->K:Lb/a/a/a/c/e;

    return-object v0
.end method

.method public r0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->L:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->J:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->F:I

    return v0
.end method

.method public u0()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->H:F

    return v0
.end method

.method public x0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->M:Z

    return v0
.end method

.method public y0()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->D:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->b:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->I:F

    return v0
.end method
