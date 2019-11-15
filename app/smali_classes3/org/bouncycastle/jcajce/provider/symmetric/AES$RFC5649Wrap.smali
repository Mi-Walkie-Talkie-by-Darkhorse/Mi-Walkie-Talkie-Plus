.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$RFC5649Wrap;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RFC5649Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    return-void
.end method
