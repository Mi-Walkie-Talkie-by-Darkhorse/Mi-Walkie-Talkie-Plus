.class public Lcom/github/mikephil/charting/data/m;
.super Lcom/github/mikephil/charting/data/h;
.source "PieData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/h",
        "<",
        "Lcom/github/mikephil/charting/e/b/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/mikephil/charting/data/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/mikephil/charting/d/d;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/m;->a()Lcom/github/mikephil/charting/e/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/e/b/i;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)Lcom/github/mikephil/charting/e/b/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/m;->b(I)Lcom/github/mikephil/charting/e/b/i;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/github/mikephil/charting/e/b/i;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/m;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/i;

    return-object v0
.end method

.method public b(I)Lcom/github/mikephil/charting/e/b/i;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/m;->a()Lcom/github/mikephil/charting/e/b/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()F
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/m;->a()Lcom/github/mikephil/charting/e/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/i;->s()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/m;->a()Lcom/github/mikephil/charting/e/b/i;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/e/b/i;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->b()F

    move-result v0

    add-float/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v2
.end method
