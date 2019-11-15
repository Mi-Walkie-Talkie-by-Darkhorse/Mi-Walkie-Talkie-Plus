.class public Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private A1inv:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

.field private vi:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;)V
    .locals 7

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA1()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB1()[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB2()[S

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getVi()[I

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getLayers()[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;)V
    .locals 7

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->getInvA1()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->getB1()[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->getInvA2()[[S

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->getB2()[S

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->getVi()[I

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->getLayers()[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;)V

    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A1inv:[[S

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b1:[S

    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A2inv:[[S

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b2:[S

    iput-object p5, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->vi:[I

    iput-object p6, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    if-nez v2, :cond_1

    :cond_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A1inv:[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getInvA1()[[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A2inv:[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getInvA2()[[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b1:[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getB1()[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b2:[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getB2()[S

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_3
    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->vi:[I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getVi()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    array-length v2, v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getLayers()[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_5
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getLayers()[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getB1()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b1:[S

    return-object v0
.end method

.method public getB2()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b2:[S

    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A1inv:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b1:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A2inv:[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b2:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->vi:[I

    iget-object v6, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;)V

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->rainbow:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getInvA1()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A1inv:[[S

    return-object v0
.end method

.method public getInvA2()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A2inv:[[S

    return-object v0
.end method

.method public getLayers()[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    return-object v0
.end method

.method public getVi()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->vi:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A1inv:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b1:[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->A2inv:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->b2:[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->vi:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method
