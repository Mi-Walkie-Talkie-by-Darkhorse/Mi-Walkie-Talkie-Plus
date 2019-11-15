.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$OldIESwithDESede;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$OldIESwithCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldIESwithDESede"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$OldIESwithCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
