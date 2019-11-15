.class public Lorg/bouncycastle/jcajce/provider/digest/Blake2b$Blake2b256;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Blake2b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blake2b256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

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

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/Blake2b$Blake2b256;

    new-instance v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/digest/Blake2b$Blake2b256;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(Lorg/bouncycastle/crypto/digests/Blake2bDigest;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/digest/Blake2b$Blake2b256;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
