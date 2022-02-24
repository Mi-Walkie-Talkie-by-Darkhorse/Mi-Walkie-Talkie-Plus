.class public Lcom/github/mikephil/charting/data/m;
.super Lcom/github/mikephil/charting/data/h;
.source "PieData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/h<",
        "Lb/a/a/a/e/b/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/h;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lb/a/a/a/e/b/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/m;->a(I)Lb/a/a/a/e/b/i;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lb/a/a/a/e/b/i;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/m;->k()Lb/a/a/a/e/b/i;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Lb/a/a/a/d/d;)Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/m;->k()Lb/a/a/a/e/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/a/d/d;->g()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    return-object p1
.end method

.method public k()Lb/a/a/a/e/b/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/h;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/i;

    return-object v0
.end method

.method public l()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/m;->k()Lb/a/a/a/e/b/i;

    move-result-object v2

    invoke-interface {v2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/m;->k()Lb/a/a/a/e/b/i;

    move-result-object v2

    invoke-interface {v2, v1}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
