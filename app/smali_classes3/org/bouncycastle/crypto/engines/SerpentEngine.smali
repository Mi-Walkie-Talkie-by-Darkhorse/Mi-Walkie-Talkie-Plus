.class public final Lorg/bouncycastle/crypto/engines/SerpentEngine;
.super Lorg/bouncycastle/crypto/engines/SerpentEngineBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected decryptBlock([BI[BI)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x78

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x74

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x77

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x70

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x73

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x68

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x64

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x66

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x67

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x60

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x62

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x63

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x58

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x54

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x56

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x57

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x50

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x52

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x53

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x48

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x44

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x46

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x47

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x40

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x42

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x43

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x38

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x34

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x36

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x37

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x30

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x32

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x33

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x28

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x24

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x26

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x27

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x20

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x22

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x23

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x16

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x17

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x10

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method protected encryptBlock([BI[BI)V
    .locals 5

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x1c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x20

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x22

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x24

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x26

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x28

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x2c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x30

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x32

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x33

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x34

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x36

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x37

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x38

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x3c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x40

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x42

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x43

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x44

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x46

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x47

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x48

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x4c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x50

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x52

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x53

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x54

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x56

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x57

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x58

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x5c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x60

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x62

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x63

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x64

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x66

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x67

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x68

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x6c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x70

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x72

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x73

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x74

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x76

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x77

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x78

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7a

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7b

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x7c

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7e

    aget v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7f

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method protected makeWorkingKey([B)[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v10, 0x1

    const/16 v9, 0x10

    const/16 v8, 0xb

    const/4 v1, 0x0

    const/16 v4, 0x8

    new-array v5, v9, [I

    move v0, v1

    move v3, v1

    :goto_0
    add-int/lit8 v2, v3, 0x4

    array-length v6, p1

    if-ge v2, v6, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v3, 0x4

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_0
    rem-int/lit8 v2, v3, 0x4

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v5, v0

    if-ge v2, v4, :cond_1

    aput v10, v5, v2

    :cond_1
    const/16 v2, 0x84

    new-array v3, v2, [I

    move v0, v4

    :goto_1
    if-ge v0, v9, :cond_3

    add-int/lit8 v6, v0, -0x8

    aget v6, v5, v6

    add-int/lit8 v7, v0, -0x5

    aget v7, v5, v7

    xor-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x3

    aget v7, v5, v7

    xor-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x1

    aget v7, v5, v7

    xor-int/2addr v6, v7

    const v7, -0x61c88647

    xor-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x8

    xor-int/2addr v6, v7

    invoke-static {v6, v8}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be a multiple of 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v5, v4, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v4

    :goto_2
    if-ge v0, v2, :cond_4

    add-int/lit8 v5, v0, -0x8

    aget v5, v3, v5

    add-int/lit8 v6, v0, -0x5

    aget v6, v3, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v0, -0x3

    aget v6, v3, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v0, -0x1

    aget v6, v3, v6

    xor-int/2addr v5, v6

    const v6, -0x61c88647

    xor-int/2addr v5, v6

    xor-int/2addr v5, v0

    invoke-static {v5, v8}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    aget v0, v3, v1

    aget v2, v3, v10

    const/4 v5, 0x2

    aget v5, v3, v5

    const/4 v6, 0x3

    aget v6, v3, v6

    invoke-virtual {p0, v0, v2, v5, v6}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v3, v1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v3, v10

    const/4 v0, 0x2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/4 v0, 0x3

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/4 v0, 0x4

    aget v0, v3, v0

    const/4 v1, 0x5

    aget v1, v3, v1

    const/4 v2, 0x6

    aget v2, v3, v2

    const/4 v5, 0x7

    aget v5, v3, v5

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/4 v0, 0x4

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/4 v0, 0x5

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/4 v0, 0x6

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/4 v0, 0x7

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    aget v0, v3, v4

    const/16 v1, 0x9

    aget v1, v3, v1

    const/16 v2, 0xa

    aget v2, v3, v2

    aget v5, v3, v8

    invoke-virtual {p0, v0, v1, v2, v5}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v3, v4

    const/16 v0, 0x9

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0xa

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v3, v8

    const/16 v0, 0xc

    aget v0, v3, v0

    const/16 v1, 0xd

    aget v1, v3, v1

    const/16 v2, 0xe

    aget v2, v3, v2

    const/16 v4, 0xf

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 v0, 0xc

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0xd

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0xe

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0xf

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    aget v0, v3, v9

    const/16 v1, 0x11

    aget v1, v3, v1

    const/16 v2, 0x12

    aget v2, v3, v2

    const/16 v4, 0x13

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v3, v9

    const/16 v0, 0x11

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x12

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x13

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x14

    aget v0, v3, v0

    const/16 v1, 0x15

    aget v1, v3, v1

    const/16 v2, 0x16

    aget v2, v3, v2

    const/16 v4, 0x17

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 v0, 0x14

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x15

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x16

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x17

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x18

    aget v0, v3, v0

    const/16 v1, 0x19

    aget v1, v3, v1

    const/16 v2, 0x1a

    aget v2, v3, v2

    const/16 v4, 0x1b

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 v0, 0x18

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x19

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x1a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x1b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x1c

    aget v0, v3, v0

    const/16 v1, 0x1d

    aget v1, v3, v1

    const/16 v2, 0x1e

    aget v2, v3, v2

    const/16 v4, 0x1f

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 v0, 0x1c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x1d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x1e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x20

    aget v0, v3, v0

    const/16 v1, 0x21

    aget v1, v3, v1

    const/16 v2, 0x22

    aget v2, v3, v2

    const/16 v4, 0x23

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 v0, 0x20

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x21

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x22

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x23

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x24

    aget v0, v3, v0

    const/16 v1, 0x25

    aget v1, v3, v1

    const/16 v2, 0x26

    aget v2, v3, v2

    const/16 v4, 0x27

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 v0, 0x24

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x25

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x26

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x27

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x28

    aget v0, v3, v0

    const/16 v1, 0x29

    aget v1, v3, v1

    const/16 v2, 0x2a

    aget v2, v3, v2

    const/16 v4, 0x2b

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 v0, 0x28

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x29

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x2a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x2b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x2c

    aget v0, v3, v0

    const/16 v1, 0x2d

    aget v1, v3, v1

    const/16 v2, 0x2e

    aget v2, v3, v2

    const/16 v4, 0x2f

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 v0, 0x2c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x2d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x2e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x2f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x30

    aget v0, v3, v0

    const/16 v1, 0x31

    aget v1, v3, v1

    const/16 v2, 0x32

    aget v2, v3, v2

    const/16 v4, 0x33

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 v0, 0x30

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x31

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x32

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x33

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x34

    aget v0, v3, v0

    const/16 v1, 0x35

    aget v1, v3, v1

    const/16 v2, 0x36

    aget v2, v3, v2

    const/16 v4, 0x37

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 v0, 0x34

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x35

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x36

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x37

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x38

    aget v0, v3, v0

    const/16 v1, 0x39

    aget v1, v3, v1

    const/16 v2, 0x3a

    aget v2, v3, v2

    const/16 v4, 0x3b

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 v0, 0x38

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x39

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x3a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x3b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x3c

    aget v0, v3, v0

    const/16 v1, 0x3d

    aget v1, v3, v1

    const/16 v2, 0x3e

    aget v2, v3, v2

    const/16 v4, 0x3f

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 v0, 0x3c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x3d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x3e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x3f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x40

    aget v0, v3, v0

    const/16 v1, 0x41

    aget v1, v3, v1

    const/16 v2, 0x42

    aget v2, v3, v2

    const/16 v4, 0x43

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 v0, 0x40

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x41

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x42

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x43

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x44

    aget v0, v3, v0

    const/16 v1, 0x45

    aget v1, v3, v1

    const/16 v2, 0x46

    aget v2, v3, v2

    const/16 v4, 0x47

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 v0, 0x44

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x45

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x46

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x47

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x48

    aget v0, v3, v0

    const/16 v1, 0x49

    aget v1, v3, v1

    const/16 v2, 0x4a

    aget v2, v3, v2

    const/16 v4, 0x4b

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 v0, 0x48

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x49

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x4a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x4b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x4c

    aget v0, v3, v0

    const/16 v1, 0x4d

    aget v1, v3, v1

    const/16 v2, 0x4e

    aget v2, v3, v2

    const/16 v4, 0x4f

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 v0, 0x4c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x4d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x4e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x4f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x50

    aget v0, v3, v0

    const/16 v1, 0x51

    aget v1, v3, v1

    const/16 v2, 0x52

    aget v2, v3, v2

    const/16 v4, 0x53

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 v0, 0x50

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x51

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x52

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x53

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x54

    aget v0, v3, v0

    const/16 v1, 0x55

    aget v1, v3, v1

    const/16 v2, 0x56

    aget v2, v3, v2

    const/16 v4, 0x57

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 v0, 0x54

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x55

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x56

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x57

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x58

    aget v0, v3, v0

    const/16 v1, 0x59

    aget v1, v3, v1

    const/16 v2, 0x5a

    aget v2, v3, v2

    const/16 v4, 0x5b

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 v0, 0x58

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x59

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x5a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x5b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x5c

    aget v0, v3, v0

    const/16 v1, 0x5d

    aget v1, v3, v1

    const/16 v2, 0x5e

    aget v2, v3, v2

    const/16 v4, 0x5f

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 v0, 0x5c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x5d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x5e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x5f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x60

    aget v0, v3, v0

    const/16 v1, 0x61

    aget v1, v3, v1

    const/16 v2, 0x62

    aget v2, v3, v2

    const/16 v4, 0x63

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 v0, 0x60

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x61

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x62

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x63

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x64

    aget v0, v3, v0

    const/16 v1, 0x65

    aget v1, v3, v1

    const/16 v2, 0x66

    aget v2, v3, v2

    const/16 v4, 0x67

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 v0, 0x64

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x65

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x66

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x67

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x68

    aget v0, v3, v0

    const/16 v1, 0x69

    aget v1, v3, v1

    const/16 v2, 0x6a

    aget v2, v3, v2

    const/16 v4, 0x6b

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 v0, 0x68

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x69

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x6a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x6b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x6c

    aget v0, v3, v0

    const/16 v1, 0x6d

    aget v1, v3, v1

    const/16 v2, 0x6e

    aget v2, v3, v2

    const/16 v4, 0x6f

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 v0, 0x6c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x6d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x6e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x6f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x70

    aget v0, v3, v0

    const/16 v1, 0x71

    aget v1, v3, v1

    const/16 v2, 0x72

    aget v2, v3, v2

    const/16 v4, 0x73

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 v0, 0x70

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x71

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x72

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x73

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x74

    aget v0, v3, v0

    const/16 v1, 0x75

    aget v1, v3, v1

    const/16 v2, 0x76

    aget v2, v3, v2

    const/16 v4, 0x77

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 v0, 0x74

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x75

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x76

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x77

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x78

    aget v0, v3, v0

    const/16 v1, 0x79

    aget v1, v3, v1

    const/16 v2, 0x7a

    aget v2, v3, v2

    const/16 v4, 0x7b

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 v0, 0x78

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x79

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x7a

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x7b

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x7c

    aget v0, v3, v0

    const/16 v1, 0x7d

    aget v1, v3, v1

    const/16 v2, 0x7e

    aget v2, v3, v2

    const/16 v4, 0x7f

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 v0, 0x7c

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x7d

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x7e

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x7f

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    const/16 v0, 0x80

    aget v0, v3, v0

    const/16 v1, 0x81

    aget v1, v3, v1

    const/16 v2, 0x82

    aget v2, v3, v2

    const/16 v4, 0x83

    aget v4, v3, v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 v0, 0x80

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v3, v0

    const/16 v0, 0x81

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v3, v0

    const/16 v0, 0x82

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v3, v0

    const/16 v0, 0x83

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v3, v0

    return-object v3
.end method
