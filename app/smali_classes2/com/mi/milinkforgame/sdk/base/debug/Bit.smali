.class public final Lcom/mi/milinkforgame/sdk/base/debug/Bit;
.super Ljava/lang/Object;
.source "Bit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final add(II)I
    .locals 1

    or-int v0, p0, p1

    return v0
.end method

.method public static final has(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final log2(I)I
    .locals 4

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static final remove(II)I
    .locals 1

    and-int v0, p0, p1

    xor-int/2addr v0, p0

    return v0
.end method
