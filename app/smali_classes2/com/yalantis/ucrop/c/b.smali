.class public final Lcom/yalantis/ucrop/c/b;
.super Ljava/lang/Object;
.source "CubicEasing.java"


# direct methods
.method public static a(FFFF)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, p0, p3

    sub-float/2addr v0, v2

    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public static b(FFFF)F
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, p3, v3

    div-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    div-float v1, p2, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    div-float v1, p2, v3

    sub-float/2addr v0, v3

    mul-float v2, v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    goto :goto_0
.end method
