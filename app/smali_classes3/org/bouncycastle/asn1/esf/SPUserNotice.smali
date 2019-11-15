.class public Lorg/bouncycastle/asn1/esf/SPUserNotice;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

.field private noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v2, v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    if-nez v2, :cond_0

    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    if-nez v2, :cond_2

    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/NoticeReference;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NoticeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid element in \'SPUserNotice\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/NoticeReference;Lorg/bouncycastle/asn1/x509/DisplayText;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SPUserNotice;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/esf/SPUserNotice;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SPUserNotice;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getExplicitText()Lorg/bouncycastle/asn1/x509/DisplayText;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    return-object v0
.end method

.method public getNoticeRef()Lorg/bouncycastle/asn1/x509/NoticeReference;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
