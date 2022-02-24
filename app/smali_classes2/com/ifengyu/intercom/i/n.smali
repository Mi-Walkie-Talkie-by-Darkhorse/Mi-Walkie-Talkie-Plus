.class public Lcom/ifengyu/intercom/i/n;
.super Ljava/lang/Object;
.source "Calculate.java"


# direct methods
.method public static a(FF)I
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_0

    cmpl-float v2, p0, p1

    if-ltz v2, :cond_0

    const/16 p0, 0x64

    return p0

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p0, p0, p1

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method
