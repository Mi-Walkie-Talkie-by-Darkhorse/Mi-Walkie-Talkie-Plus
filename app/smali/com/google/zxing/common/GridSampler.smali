.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    move v0, v1

    move v2, v3

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_5

    if-eqz v2, :cond_5

    aget v2, p1, v0

    float-to-int v2, v2

    add-int/lit8 v6, v0, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    if-lt v2, v7, :cond_0

    if-gt v2, v4, :cond_0

    if-lt v6, v7, :cond_0

    if-le v6, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    if-ne v2, v7, :cond_3

    aput v8, p1, v0

    move v2, v3

    :goto_1
    if-ne v6, v7, :cond_4

    add-int/lit8 v2, v0, 0x1

    aput v8, p1, v2

    move v2, v3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    if-ne v2, v4, :cond_d

    add-int/lit8 v2, v4, -0x1

    int-to-float v2, v2

    aput v2, p1, v0

    move v2, v3

    goto :goto_1

    :cond_4
    if-ne v6, v5, :cond_2

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    move v2, v3

    goto :goto_2

    :cond_5
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move v0, v3

    :goto_3
    if-ltz v2, :cond_b

    if-eqz v0, :cond_b

    aget v0, p1, v2

    float-to-int v0, v0

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    if-lt v0, v7, :cond_6

    if-gt v0, v4, :cond_6

    if-lt v6, v7, :cond_6

    if-le v6, v5, :cond_7

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    if-ne v0, v7, :cond_9

    aput v8, p1, v2

    move v0, v3

    :goto_4
    if-ne v6, v7, :cond_a

    add-int/lit8 v0, v2, 0x1

    aput v8, p1, v0

    move v0, v3

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, -0x2

    goto :goto_3

    :cond_9
    if-ne v0, v4, :cond_c

    add-int/lit8 v0, v4, -0x1

    int-to-float v0, v0

    aput v0, p1, v2

    move v0, v3

    goto :goto_4

    :cond_a
    if-ne v6, v5, :cond_8

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    aput v6, p1, v0

    move v0, v3

    goto :goto_5

    :cond_b
    return-void

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    move v2, v1

    goto :goto_1
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .locals 0

    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
