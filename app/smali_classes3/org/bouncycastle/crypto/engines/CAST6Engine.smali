.class public final Lorg/bouncycastle/crypto/engines/CAST6Engine;
.super Lorg/bouncycastle/crypto/engines/CAST5Engine;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field protected static final ROUNDS:I = 0xc


# instance fields
.field protected _Km:[I

.field protected _Kr:[I

.field protected _Tm:[I

.field protected _Tr:[I

.field private _workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xc0

    const/16 v1, 0x30

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/CAST5Engine;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    return-void
.end method


# virtual methods
.method protected final CAST_Decipher(IIII[I)V
    .locals 9

    const/4 v0, 0x0

    move v1, p4

    move v2, p3

    move v3, p2

    move v4, p1

    :goto_0
    const/4 v5, 0x6

    if-ge v0, v5, :cond_0

    rsub-int/lit8 v5, v0, 0xb

    mul-int/lit8 v5, v5, 0x4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v7, v7, v5

    invoke-virtual {p0, v1, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v6

    xor-int/2addr v2, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    invoke-virtual {p0, v2, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v6

    xor-int/2addr v3, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x2

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x2

    aget v7, v7, v8

    invoke-virtual {p0, v3, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v6

    xor-int/2addr v4, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v5, v5, 0x3

    aget v5, v7, v5

    invoke-virtual {p0, v4, v6, v5}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v5

    xor-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_1
    const/16 v5, 0xc

    if-ge v0, v5, :cond_1

    rsub-int/lit8 v5, v0, 0xb

    mul-int/lit8 v5, v5, 0x4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x3

    aget v7, v7, v8

    invoke-virtual {p0, v4, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v6

    xor-int/2addr v1, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x2

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x2

    aget v7, v7, v8

    invoke-virtual {p0, v3, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v6

    xor-int/2addr v4, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    invoke-virtual {p0, v2, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v6

    xor-int/2addr v3, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v5, v7, v5

    invoke-virtual {p0, v1, v6, v5}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v5

    xor-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    aput v4, p5, v0

    const/4 v0, 0x1

    aput v3, p5, v0

    const/4 v0, 0x2

    aput v2, p5, v0

    const/4 v0, 0x3

    aput v1, p5, v0

    return-void
.end method

.method protected final CAST_Encipher(IIII[I)V
    .locals 9

    const/4 v0, 0x0

    move v1, p4

    move v2, p3

    move v3, p2

    move v4, p1

    :goto_0
    const/4 v5, 0x6

    if-ge v0, v5, :cond_0

    mul-int/lit8 v5, v0, 0x4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v7, v7, v5

    invoke-virtual {p0, v1, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v6

    xor-int/2addr v2, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    invoke-virtual {p0, v2, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v6

    xor-int/2addr v3, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x2

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x2

    aget v7, v7, v8

    invoke-virtual {p0, v3, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v6

    xor-int/2addr v4, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v5, v5, 0x3

    aget v5, v7, v5

    invoke-virtual {p0, v4, v6, v5}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v5

    xor-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_1
    const/16 v5, 0xc

    if-ge v0, v5, :cond_1

    mul-int/lit8 v5, v0, 0x4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x3

    aget v7, v7, v8

    invoke-virtual {p0, v4, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v6

    xor-int/2addr v1, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x2

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x2

    aget v7, v7, v8

    invoke-virtual {p0, v3, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v6

    xor-int/2addr v4, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v7, v5, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    invoke-virtual {p0, v2, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v6

    xor-int/2addr v3, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v5, v7, v5

    invoke-virtual {p0, v1, v6, v5}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v5

    xor-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    aput v4, p5, v0

    const/4 v0, 0x1

    aput v3, p5, v0

    const/4 v0, 0x2

    aput v2, p5, v0

    const/4 v0, 0x3

    aput v1, p5, v0

    return-void
.end method

.method protected decryptBlock([BI[BI)I
    .locals 6

    const/4 v0, 0x4

    new-array v5, v0, [I

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v1

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v2

    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v3

    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->CAST_Decipher(IIII[I)V

    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x1

    aget v0, v5, v0

    add-int/lit8 v1, p4, 0x4

    invoke-virtual {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x2

    aget v0, v5, v0

    add-int/lit8 v1, p4, 0x8

    invoke-virtual {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x3

    aget v0, v5, v0

    add-int/lit8 v1, p4, 0xc

    invoke-virtual {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/16 v0, 0x10

    return v0
.end method

.method protected encryptBlock([BI[BI)I
    .locals 6

    const/4 v0, 0x4

    new-array v5, v0, [I

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v1

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v2

    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v3

    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->CAST_Encipher(IIII[I)V

    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x1

    aget v0, v5, v0

    add-int/lit8 v1, p4, 0x4

    invoke-virtual {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x2

    aget v0, v5, v0

    add-int/lit8 v1, p4, 0x8

    invoke-virtual {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x3

    aget v0, v5, v0

    add-int/lit8 v1, p4, 0xc

    invoke-virtual {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "CAST6"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method protected setKey([B)V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    const v2, 0x5a827999

    const v5, 0x6ed9eba1

    const/16 v0, 0x13

    const/16 v6, 0x11

    move v4, v1

    :goto_0
    const/16 v3, 0x18

    if-ge v4, v3, :cond_1

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_1
    const/16 v7, 0x8

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v0

    aput v3, v7, v8

    add-int/2addr v3, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v0

    aput v2, v7, v8

    add-int/2addr v2, v6

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x40

    new-array v2, v0, [B

    array-length v0, p1

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_2
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    mul-int/lit8 v4, v0, 0x4

    invoke-virtual {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    const/16 v2, 0xc

    if-ge v0, v2, :cond_3

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v4, 0x6

    aget v5, v3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    aget v7, v7, v2

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    aget v8, v8, v2

    invoke-virtual {p0, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v6

    xor-int/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v4, 0x5

    aget v5, v3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    invoke-virtual {p0, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v6

    xor-int/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v13

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x2

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v13

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v12

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v5, v5, v13

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x3

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v12

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v11

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v5, v5, v12

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x4

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x4

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v11

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v10

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v5, v5, v11

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x5

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x5

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v10

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v5, v5, v10

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x6

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x6

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v4, 0x7

    aget v5, v3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v6, v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v8, v2, 0x7

    aget v7, v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v2, v2, 0x7

    aget v2, v8, v2

    invoke-virtual {p0, v6, v7, v2}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v3, v4

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v4, 0x6

    aget v5, v3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    aget v7, v7, v2

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    aget v8, v8, v2

    invoke-virtual {p0, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v6

    xor-int/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v4, 0x5

    aget v5, v3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    invoke-virtual {p0, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v6

    xor-int/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v13

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x2

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v13

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v12

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v5, v5, v13

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x3

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v12

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v11

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v5, v5, v12

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x4

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x4

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v11

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v10

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v5, v5, v11

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x5

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x5

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v10

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v3, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v5, v5, v10

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v7, v2, 0x6

    aget v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v8, v2, 0x6

    aget v7, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v4, 0x7

    aget v5, v3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v6, v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v8, v2, 0x7

    aget v7, v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v2, v2, 0x7

    aget v2, v8, v2

    invoke-virtual {p0, v6, v7, v2}, Lorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr v2, v5

    aput v2, v3, v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v3, v0, 0x4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v4, v1

    and-int/lit8 v4, v4, 0x1f

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v4, v11

    and-int/lit8 v4, v4, 0x1f

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v4, v13

    and-int/lit8 v4, v4, 0x1f

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    and-int/lit8 v4, v4, 0x1f

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v3, v0, 0x4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v4, v12

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    aget v4, v4, v10

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_3
    return-void
.end method
