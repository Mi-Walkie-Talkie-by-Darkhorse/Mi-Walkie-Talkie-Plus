.class Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/DRBGProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CTRDRBGProvider"
.end annotation


# instance fields
.field private final blockCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private final keySizeInBits:I

.field private final nonce:[B

.field private final personalizationString:[B

.field private final securityStrength:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->blockCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput p2, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->keySizeInBits:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->nonce:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->personalizationString:[B

    iput p5, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->securityStrength:I

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/crypto/prng/EntropySource;)Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;
    .locals 7

    new-instance v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->blockCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->keySizeInBits:I

    iget v3, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->securityStrength:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->personalizationString:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->nonce:[B

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V

    return-object v0
.end method
