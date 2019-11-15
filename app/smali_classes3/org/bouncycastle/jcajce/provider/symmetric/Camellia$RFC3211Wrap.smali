.class public Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$RFC3211Wrap;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RFC3211Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;

    new-instance v1, Lorg/bouncycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/Wrapper;I)V

    return-void
.end method
