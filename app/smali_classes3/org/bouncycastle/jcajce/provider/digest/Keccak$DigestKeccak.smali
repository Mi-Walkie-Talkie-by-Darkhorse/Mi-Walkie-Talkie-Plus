.class public Lorg/bouncycastle/jcajce/provider/digest/Keccak$DigestKeccak;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Keccak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestKeccak"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/KeccakDigest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

    new-instance v2, Lorg/bouncycastle/crypto/digests/KeccakDigest;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/digest/Keccak$DigestKeccak;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/crypto/digests/KeccakDigest;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(Lorg/bouncycastle/crypto/digests/KeccakDigest;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
