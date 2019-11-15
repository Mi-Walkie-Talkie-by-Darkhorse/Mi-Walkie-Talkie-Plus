.class public Lorg/bouncycastle/jcajce/provider/symmetric/Threefish$CMAC_256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Threefish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMAC_256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/macs/CMac;

    new-instance v1, Lorg/bouncycastle/crypto/engines/ThreefishEngine;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
