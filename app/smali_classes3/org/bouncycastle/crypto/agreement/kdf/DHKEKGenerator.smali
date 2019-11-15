.class public Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private keySize:I

.field private partyAInfo:[B

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, p3

    move/from16 v0, p2

    if-ge v2, v0, :cond_0

    new-instance v2, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v3, "output buffer too small"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move/from16 v0, p3

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    const-wide v2, 0x1ffffffffL

    cmp-long v2, v6, v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Output length too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    int-to-long v2, v8

    add-long/2addr v2, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, v8

    div-long/2addr v2, v4

    long-to-int v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v10, v2, [B

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v4, v2

    move v5, v3

    move/from16 v2, p3

    move/from16 v3, p2

    :goto_0
    if-ge v4, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    array-length v14, v14

    invoke-interface {v11, v12, v13, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {v5}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v11, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    if-eqz v12, :cond_2

    new-instance v12, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v12, v13, v14, v15}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v11, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v12, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v12, v13, v14, v15}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v11, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_0
    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v11, "DER"

    invoke-virtual {v12, v11}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v13, 0x0

    array-length v14, v11

    invoke-interface {v12, v11, v13, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v10, v12}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-le v2, v8, :cond_3

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v10, v11, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v8

    sub-int/2addr v2, v8

    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to encode parameter info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v10, v11, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    long-to-int v2, v6

    return v2
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getExtraInfo()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    return-void
.end method
