.class public Lorg/bouncycastle/asn1/x500/DirectoryString;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;
.implements Lorg/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:Lorg/bouncycastle/asn1/ASN1String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/DERBMPString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/DERPrintableString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/DERT61String;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/DERUTF8String;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/DERUniversalString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERT61String;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/DERT61String;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/DERT61String;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERPrintableString;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/DERPrintableString;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERUniversalString;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/DERUniversalString;)V

    move-object p0, v0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/DERUTF8String;)V

    move-object p0, v0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERBMPString;

    if-eqz v0, :cond_6

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/DERBMPString;)V

    move-object p0, v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
