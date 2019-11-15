.class public Lorg/bouncycastle/asn1/x500/X500NameBuilder;
.super Ljava/lang/Object;


# instance fields
.field private rdns:Ljava/util/Vector;

.field private template:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->template:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method


# virtual methods
.method public addMultiValuedRDN([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 5

    array-length v0, p2

    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->template:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    aget-object v3, p1, v0

    aget-object v4, p2, v0

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addMultiValuedRDN([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 5

    array-length v0, p1

    new-array v1, v0, [Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    aget-object v3, p1, v0

    aget-object v4, p2, v0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addMultiValuedRDN([Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/asn1/x500/RDN;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x500/RDN;-><init>([Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addRDN(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->template:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    return-object p0
.end method

.method public addRDN(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/asn1/x500/RDN;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/asn1/x500/RDN;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addRDN(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/asn1/x500/RDN;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x500/RDN;-><init>(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x500/RDN;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->template:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;[Lorg/bouncycastle/asn1/x500/RDN;)V

    return-object v0
.end method
