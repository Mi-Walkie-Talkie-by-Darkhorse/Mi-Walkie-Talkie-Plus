.class public abstract Lcom/github/mikephil/charting/data/l;
.super Lcom/github/mikephil/charting/data/c;
.source "LineScatterCandleRadarDataSet.java"

# interfaces
.implements Lb/a/a/a/e/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/c<",
        "TT;>;",
        "Lb/a/a/a/e/b/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected u:Z

.field protected v:Z

.field protected w:F

.field protected x:Landroid/graphics/DashPathEffect;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/c;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/l;->u:Z

    .line 3
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/l;->v:Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 4
    iput p1, p0, Lcom/github/mikephil/charting/data/l;->w:F

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/github/mikephil/charting/data/l;->x:Landroid/graphics/DashPathEffect;

    .line 6
    invoke-static {p1}, Lb/a/a/a/g/i;->a(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/l;->w:F

    return-void
.end method


# virtual methods
.method public V()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/l;->x:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public t0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/l;->u:Z

    return v0
.end method

.method public v0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/l;->v:Z

    return v0
.end method

.method public w()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/l;->w:F

    return v0
.end method
