.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARC4$PBEWithSHAAnd128Bit;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd128Bit"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/StreamCipher;III)V

    return-void
.end method
