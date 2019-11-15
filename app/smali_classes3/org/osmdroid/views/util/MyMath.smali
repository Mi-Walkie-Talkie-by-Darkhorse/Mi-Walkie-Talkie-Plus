.class public Lorg/osmdroid/views/util/MyMath;
.super Ljava/lang/Object;
.source "MyMath.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextSquareNumberAbove(F)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    int-to-float v3, v1

    cmpl-float v3, v3, p0

    if-lez v3, :cond_0

    return v2

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v0, 0x1

    move v4, v1

    move v1, v2

    move v2, v0

    move v0, v4

    goto :goto_0
.end method
