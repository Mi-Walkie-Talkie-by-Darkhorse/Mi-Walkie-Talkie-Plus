.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private d:[F

.field private e:[Lb/a/a/a/d/j;

.field private f:F

.field private g:F


# virtual methods
.method public b()F
    .locals 1

    invoke-super {p0}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->f:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->g:F

    return v0
.end method

.method public f()[Lb/a/a/a/d/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->e:[Lb/a/a/a/d/j;

    return-object v0
.end method

.method public g()[F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
