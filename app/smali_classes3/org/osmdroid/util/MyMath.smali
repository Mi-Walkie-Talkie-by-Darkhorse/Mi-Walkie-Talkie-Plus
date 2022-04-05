.class public Lorg/osmdroid/util/MyMath;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/osmdroid/views/util/constants/MathConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gudermann(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide v0, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static gudermannInverse(D)D
    .locals 2

    const-wide v0, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    const-wide v0, 0x3fe921fb60000000L    # 0.7853981852531433

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static mod(II)I
    .locals 0

    if-lez p0, :cond_0

    rem-int/2addr p0, p1

    return p0

    :cond_0
    :goto_0
    if-gez p0, :cond_1

    add-int/2addr p0, p1

    goto :goto_0

    :cond_1
    return p0
.end method
