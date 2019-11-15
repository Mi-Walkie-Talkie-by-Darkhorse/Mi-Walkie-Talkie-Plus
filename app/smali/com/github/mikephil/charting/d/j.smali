.class public final Lcom/github/mikephil/charting/d/j;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field public a:F

.field public b:F


# virtual methods
.method public a(F)Z
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/d/j;->a:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/d/j;->b:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
