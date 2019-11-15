.class public abstract Lcom/google/zxing/LuminanceSource;
.super Ljava/lang/Object;
.source "LuminanceSource.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/LuminanceSource;->width:I

    iput p2, p0, Lcom/google/zxing/LuminanceSource;->height:I

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support cropping."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/LuminanceSource;->height:I

    return v0
.end method

.method public abstract getMatrix()[B
.end method

.method public abstract getRow(I[B)[B
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/LuminanceSource;->width:I

    return v0
.end method

.method public invert()Lcom/google/zxing/LuminanceSource;
    .locals 1

    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 90 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 45 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/zxing/LuminanceSource;->width:I

    new-array v0, v0, [B

    new-instance v5, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/zxing/LuminanceSource;->height:I

    iget v3, p0, Lcom/google/zxing/LuminanceSource;->width:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/google/zxing/LuminanceSource;->height:I

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v2

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/google/zxing/LuminanceSource;->width:I

    if-ge v3, v4, :cond_3

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x40

    if-ge v4, v6, :cond_0

    const/16 v4, 0x23

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0x80

    if-ge v4, v6, :cond_1

    const/16 v4, 0x2b

    goto :goto_2

    :cond_1
    const/16 v6, 0xc0

    if-ge v4, v6, :cond_2

    const/16 v4, 0x2e

    goto :goto_2

    :cond_2
    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
