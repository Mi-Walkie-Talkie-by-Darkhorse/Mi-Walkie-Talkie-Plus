.class public abstract Lcom/github/mikephil/charting/data/l;
.super Lcom/github/mikephil/charting/data/c;
.source "LineScatterCandleRadarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/c",
        "<TT;>;",
        "Lcom/github/mikephil/charting/e/b/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected q:Z

.field protected r:Z

.field protected s:F

.field protected t:Landroid/graphics/DashPathEffect;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/c;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/l;->q:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/l;->r:Z

    iput v1, p0, Lcom/github/mikephil/charting/data/l;->s:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/l;->t:Landroid/graphics/DashPathEffect;

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/l;->s:F

    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/l;->q:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/l;->r:Z

    return v0
.end method

.method public R()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/l;->s:F

    return v0
.end method

.method public S()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/l;->t:Landroid/graphics/DashPathEffect;

    return-object v0
.end method
