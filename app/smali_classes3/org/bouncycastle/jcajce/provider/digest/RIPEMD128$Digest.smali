.class public Lorg/bouncycastle/jcajce/provider/digest/RIPEMD128$Digest;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/RIPEMD128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;-><init>()V

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

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD128$Digest;

    new-instance v2, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD128$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;-><init>(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD128$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
