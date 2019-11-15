.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BarEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private a:[F

.field private b:[Lcom/github/mikephil/charting/d/j;

.field private c:F

.field private d:F


# virtual methods
.method public a()[F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    return-object v0
.end method

.method public b()F
    .locals 1

    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v0

    return v0
.end method

.method public c()[Lcom/github/mikephil/charting/d/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->b:[Lcom/github/mikephil/charting/d/j;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->a:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->d:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->c:F

    return v0
.end method
