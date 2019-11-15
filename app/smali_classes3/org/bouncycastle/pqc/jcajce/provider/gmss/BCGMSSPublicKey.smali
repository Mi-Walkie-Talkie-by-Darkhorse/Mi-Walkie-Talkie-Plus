.class public Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

.field private publicKeyBytes:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->getPublicKey()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;-><init>([BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/pqc/jcajce/spec/GMSSPublicKeySpec;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPublicKeySpec;->getPublicKey()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPublicKeySpec;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;-><init>([BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->publicKeyBytes:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "GMSS"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->gmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/asn1/ParSet;

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/bouncycastle/pqc/asn1/ParSet;-><init>(I[I[I[I)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/ParSet;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/pqc/asn1/GMSSPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->publicKeyBytes:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/asn1/GMSSPublicKey;-><init>([B)V

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameterSet()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    return-object v0
.end method

.method public getPublicKeyBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->publicKeyBytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMSS public key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->publicKeyBytes:[B

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Height of Trees: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Layer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WinternitzParameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " K: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
