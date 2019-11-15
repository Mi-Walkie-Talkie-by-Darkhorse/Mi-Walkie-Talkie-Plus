.class public final Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final keySizeInBits:I

.field private otherInfo:[B

.field private parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->algorithmName:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->keySizeInBits:I

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_kdf_kdf3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->otherInfo:[B

    return-void

    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
    .locals 7

    new-instance v0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->algorithmName:Ljava/lang/String;

    iget v2, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->keySizeInBits:I

    iget-object v3, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->otherInfo:[B

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;-><init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/jcajce/spec/KTSParameterSpec$1;)V

    return-object v0
.end method

.method public withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public withParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method
