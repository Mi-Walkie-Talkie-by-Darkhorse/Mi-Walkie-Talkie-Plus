.class public abstract Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcHashCode(Lorg/bouncycastle/asn1/ASN1Encodable;)I
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private foundMatch(ZLorg/bouncycastle/asn1/x500/RDN;[Lorg/bouncycastle/asn1/x500/RDN;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v3, p3, v0

    if-eqz v3, :cond_1

    aget-object v3, p3, v0

    invoke-virtual {p0, p2, v3}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_1

    aput-object v4, p3, v0

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    array-length v3, p3

    if-eq v0, v3, :cond_0

    aget-object v3, p3, v0

    if-eqz v3, :cond_3

    aget-object v3, p3, v0

    invoke-virtual {p0, p2, v3}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_3

    aput-object v4, p3, v0

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public areEqual(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x500/X500Name;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v5

    array-length v0, v4

    array-length v3, v5

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    aget-object v0, v4, v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_4

    aget-object v0, v5, v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_4

    aget-object v0, v4, v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    aget-object v3, v5, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v3, v2

    :goto_2
    array-length v6, v4

    if-eq v3, v6, :cond_3

    aget-object v6, v4, v3

    invoke-direct {p0, v0, v6, v5}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->foundMatch(ZLorg/bouncycastle/asn1/x500/RDN;[Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public calculateHashCode(Lorg/bouncycastle/asn1/x500/X500Name;)I
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, v4

    if-eq v0, v3, :cond_2

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    move v3, v2

    move v2, v1

    :goto_1
    array-length v6, v5

    if-eq v2, v6, :cond_0

    aget-object v6, v5, v2

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v6

    xor-int/2addr v3, v6

    aget-object v6, v5, v2

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v6

    xor-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v3, v4, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    xor-int/2addr v2, v3

    goto :goto_2

    :cond_2
    return v2
.end method

.method protected encodeStringValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected rdnAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v0

    return v0
.end method

.method public stringToValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p2, v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueFromHexString(Ljava/lang/String;I)Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t recode value for oid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    goto :goto_0
.end method
