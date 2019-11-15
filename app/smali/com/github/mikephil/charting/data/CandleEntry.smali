.class public Lcom/github/mikephil/charting/data/CandleEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "CandleEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->a:F

    return v0
.end method

.method public b()F
    .locals 1

    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v0

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->b:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->c:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->d:F

    return v0
.end method
