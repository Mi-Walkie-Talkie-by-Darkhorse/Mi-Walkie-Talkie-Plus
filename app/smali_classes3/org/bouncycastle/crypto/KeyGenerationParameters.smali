.class public Lorg/bouncycastle/crypto/KeyGenerationParameters;
.super Ljava/lang/Object;


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private strength:I


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    iput p2, p0, Lorg/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    return-void
.end method


# virtual methods
.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getStrength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    return v0
.end method
