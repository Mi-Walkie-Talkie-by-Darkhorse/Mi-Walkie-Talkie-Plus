.class public Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;


# static fields
.field private static final C:[B


# instance fields
.field private final cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

.field private counter:J

.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x0t
        0x72t
        0x22t
        0x64t
        -0x37t
        0x4t
        0x23t
        -0x73t
        0x3at
        -0x25t
        -0x6at
        0x46t
        -0x17t
        0x2at
        -0x3ct
        0x18t
        -0x2t
        -0x54t
        -0x6ct
        0x0t
        -0x13t
        0x7t
        0x12t
        -0x40t
        -0x7at
        -0x24t
        -0x3et
        -0x11t
        0x4ct
        -0x57t
        0x2bt
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    new-instance v0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v7, 0x18

    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    const-wide/16 v2, 0x400

    rem-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/16 v1, 0x20

    new-array v1, v1, [B

    sget-object v2, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    invoke-interface {v0, v2, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sget-object v2, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    invoke-interface {v0, v2, v5, v1, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sget-object v2, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    invoke-interface {v0, v2, v6, v1, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sget-object v2, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->C:[B

    invoke-interface {v0, v2, v7, v1, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getCurrentIV()[B

    move-result-object v1

    invoke-interface {v0, v1, v4, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->forEncryption:Z

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->calculateByte(B)B

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2f

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/G"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :cond_1
    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/bouncycastle/crypto/params/KeyParameter;

    return-void

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBytes([BII[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->counter:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    return-void
.end method
