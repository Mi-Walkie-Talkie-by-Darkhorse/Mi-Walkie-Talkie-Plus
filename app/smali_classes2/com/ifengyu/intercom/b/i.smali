.class public Lcom/ifengyu/intercom/b/i;
.super Ljava/lang/Object;
.source "Calculate.java"


# direct methods
.method public static a(FF)I
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    div-float v0, p0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method
