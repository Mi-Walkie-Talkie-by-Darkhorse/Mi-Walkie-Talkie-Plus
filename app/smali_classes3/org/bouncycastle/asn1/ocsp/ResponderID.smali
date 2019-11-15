.class public Lorg/bouncycastle/asn1/ocsp/ResponderID;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .locals 2

    const/4 v1, 0x1

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    check-cast p0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeyHash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v3, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
