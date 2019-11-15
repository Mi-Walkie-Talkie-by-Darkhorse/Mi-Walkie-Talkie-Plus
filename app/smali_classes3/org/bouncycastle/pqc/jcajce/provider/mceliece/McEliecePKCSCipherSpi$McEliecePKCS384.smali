.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi$McEliecePKCS384;
.super Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McEliecePKCS384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;)V

    return-void
.end method
