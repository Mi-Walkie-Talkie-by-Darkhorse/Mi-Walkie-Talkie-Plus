.class public Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;,
        Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;,
        Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$DualECDRBGProvider;,
        Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;,
        Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;
    }
.end annotation


# instance fields
.field private entropyBitsRequired:I

.field private final entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

.field private personalizationString:[B

.field private final random:Ljava/security/SecureRandom;

.field private securityStrength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 2

    const/16 v0, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    iput v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    new-instance v0, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/prng/EntropySourceProvider;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    iput v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method


# virtual methods
.method public buildCTR(Lorg/bouncycastle/crypto/BlockCipher;I[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 9

    new-instance v6, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v8

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I[B[BI)V

    invoke-direct {v6, v7, v8, v0, p4}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v6
.end method

.method public buildDualEC(Lorg/bouncycastle/crypto/Digest;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$DualECDRBGProvider;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$DualECDRBGProvider;-><init>(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public buildDualEC([Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;Lorg/bouncycastle/crypto/Digest;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 9

    new-instance v6, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v8

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;-><init>([Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;Lorg/bouncycastle/crypto/Digest;[B[BI)V

    invoke-direct {v6, v7, v8, v0, p4}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v6
.end method

.method public buildHMAC(Lorg/bouncycastle/crypto/Mac;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;-><init>(Lorg/bouncycastle/crypto/Mac;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public buildHash(Lorg/bouncycastle/crypto/Digest;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;-><init>(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public setEntropyBitsRequired(I)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    return-object p0
.end method

.method public setPersonalizationString([B)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    return-object p0
.end method

.method public setSecurityStrength(I)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    return-object p0
.end method
