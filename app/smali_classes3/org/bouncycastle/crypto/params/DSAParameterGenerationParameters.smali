.class public Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;
.super Ljava/lang/Object;


# static fields
.field public static final DIGITAL_SIGNATURE_USAGE:I = 0x1

.field public static final KEY_ESTABLISHMENT_USAGE:I = 0x2


# instance fields
.field private final certainty:I

.field private final l:I

.field private final n:I

.field private final random:Ljava/security/SecureRandom;

.field private final usageIndex:I


# direct methods
.method public constructor <init>(IIILjava/security/SecureRandom;)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;I)V

    return-void
.end method

.method public constructor <init>(IIILjava/security/SecureRandom;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    iput p2, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    iput p5, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    iput-object p4, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public getCertainty()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    return v0
.end method

.method public getL()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    return v0
.end method

.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getUsageIndex()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    return v0
.end method
