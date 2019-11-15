.class public Lorg/bouncycastle/asn1/dvcs/DVCSResponse;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private dvCertInfo:Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

.field private dvErrorNote:Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSResponse;
    .locals 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct sequence from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    move-result-object v0

    new-instance p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;

    move-result-object v0

    new-instance p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t convert from object to DVCSResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/DVCSResponse;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertInfo()Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    return-object v0
.end method

.method public getErrorNotice()Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DVCSResponse {\ndvCertInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DVCSResponse {\ndvErrorNote: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSErrorNotice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
