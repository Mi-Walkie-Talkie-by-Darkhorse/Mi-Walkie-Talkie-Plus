.class public Lorg/bouncycastle/asn1/eac/CVCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static bodyValid:I

.field private static signValid:I


# instance fields
.field private certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

.field private signature:[B

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    const/4 v0, 0x2

    sput v0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificate;->initFrom(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CertificateBody;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    iput-object p2, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v1, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v1, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CVCertificate;
    .locals 4

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/CVCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private initFrom(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Input Stream for creating an Iso7816CertificateStructure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private setPrivateData(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tag, not an Iso7816CertificateStructure :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CertificateBody;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Object, not an Iso7816CertificateStructure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a CARDHOLDER_CERTIFICATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v1, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid CARDHOLDER_CERTIFICATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_1
        0x4e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificationAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/bouncycastle/asn1/eac/CertificateBody;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    return-object v0
.end method

.method public getCertificateType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateType()I

    move-result v0

    return v0
.end method

.method public getEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorization()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorizationRights()Lorg/bouncycastle/asn1/eac/Flags;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/eac/Flags;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/Flags;-><init>(I)V

    return-object v0
.end method

.method public getHolderAuthorizationRole()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public getHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    move-result-object v0

    return-object v0
.end method

.method public getRole()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    return v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/4 v2, 0x0

    const/16 v3, 0x37

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x21

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ILorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to convert signature!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
