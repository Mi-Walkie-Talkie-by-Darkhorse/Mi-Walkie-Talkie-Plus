.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$OldECIESwithDESedeCBC;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$OldECIESwithCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldECIESwithDESedeCBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$OldECIESwithCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method
