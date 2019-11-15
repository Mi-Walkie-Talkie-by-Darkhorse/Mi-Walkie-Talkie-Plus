.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$OldECIESwithAES;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$OldECIESwithCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldECIESwithAES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$OldECIESwithCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
