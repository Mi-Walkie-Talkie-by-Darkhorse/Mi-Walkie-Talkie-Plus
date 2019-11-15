.class public Lorg/bouncycastle/asn1/x500/X500Name;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field private static defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# instance fields
.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private rdns:[Lorg/bouncycastle/asn1/x500/RDN;

.field private style:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1, p2}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>([Lorg/bouncycastle/asn1/x500/RDN;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iget-object v0, p2, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;[Lorg/bouncycastle/asn1/x500/RDN;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x500/RDN;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;[Lorg/bouncycastle/asn1/x500/RDN;)V

    return-void
.end method

.method public static getDefaultStyle()Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x500/X500Name;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    check-cast p1, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500Name;)V

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultStyle(Lorg/bouncycastle/asn1/x500/X500NameStyle;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set style to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/x500/X500Name;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    new-instance v1, Lorg/bouncycastle/asn1/x500/X500Name;

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-interface {v0, p0, v1}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->areEqual(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x500/X500Name;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public getAttributeTypes()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 8

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v3, v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v2, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v0, v1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v3, v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v6

    move v3, v2

    move v2, v1

    :goto_2
    array-length v4, v6

    if-eq v2, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v7, v6, v2

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    aput-object v7, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_2

    :cond_1
    move v2, v3

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x500/RDN;->size()I

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    aput-object v4, v5, v2

    move v2, v3

    goto :goto_3

    :cond_4
    return-object v5
.end method

.method public getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getRDNs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/x500/RDN;
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v4, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v3, v3

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v6

    move v3, v1

    :goto_1
    array-length v7, v6

    if-eq v3, v7, :cond_0

    aget-object v7, v6, v3

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v3, v2, 0x1

    aput-object v5, v4, v2

    move v2, v3

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-object v5, v4, v2

    move v2, v3

    goto :goto_2

    :cond_3
    new-array v0, v2, [Lorg/bouncycastle/asn1/x500/RDN;

    array-length v2, v0

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lorg/bouncycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    iget v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->toString(Lorg/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
