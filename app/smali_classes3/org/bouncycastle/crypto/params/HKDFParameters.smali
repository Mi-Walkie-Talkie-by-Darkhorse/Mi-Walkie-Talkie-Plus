.class public Lorg/bouncycastle/crypto/params/HKDFParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final ikm:[B

.field private final info:[B

.field private final salt:[B

.field private final skipExpand:Z


# direct methods
.method private constructor <init>([BZ[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IKM (input keying material) should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->ikm:[B

    iput-boolean p2, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExpand:Z

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    :goto_0
    if-nez p4, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    :goto_1
    return-void

    :cond_2
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    goto :goto_0

    :cond_3
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    goto :goto_1
.end method

.method public constructor <init>([B[B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-void
.end method

.method public static defaultParameters([B)Lorg/bouncycastle/crypto/params/HKDFParameters;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method

.method public static skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method


# virtual methods
.method public getIKM()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->ikm:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getInfo()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->info:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public skipExtract()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExpand:Z

    return v0
.end method
