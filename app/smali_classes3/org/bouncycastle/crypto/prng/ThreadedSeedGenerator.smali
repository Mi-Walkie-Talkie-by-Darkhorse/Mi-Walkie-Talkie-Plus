.class public Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$1;,
        Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSeed(IZ)[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;-><init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$1;)V

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->generateSeed(IZ)[B

    move-result-object v0

    return-object v0
.end method
