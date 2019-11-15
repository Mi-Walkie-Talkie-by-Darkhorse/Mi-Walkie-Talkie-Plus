.class Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeedGenerator"
.end annotation


# instance fields
.field private volatile counter:I

.field private volatile stop:Z

.field final synthetic this$0:Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->this$0:Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;-><init>(Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;)V

    return-void
.end method


# virtual methods
.method public generateSeed(IZ)[B
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-array v2, p1, [B

    iput v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    if-eqz p2, :cond_0

    :goto_0
    move v1, v0

    :goto_1
    if-ge v0, p1, :cond_3

    :goto_2
    iget v3, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    if-ne v3, v1, :cond_1

    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    mul-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    if-eqz p2, :cond_2

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    div-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v3

    shl-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v1, 0x1

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    return-object v2
.end method

.method public run()V
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    goto :goto_0

    :cond_0
    return-void
.end method
