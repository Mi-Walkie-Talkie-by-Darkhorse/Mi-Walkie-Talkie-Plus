.class public abstract Lorg/bouncycastle/crypto/StreamBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/StreamBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-void
.end method


# virtual methods
.method protected abstract calculateByte(B)B
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/StreamBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too small"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v2, p2, p3

    :goto_0
    if-ge p2, v2, :cond_2

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v3

    aput-byte v3, p4, p5

    move p5, v0

    move p2, v1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public final returnByte(B)B
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v0

    return v0
.end method
