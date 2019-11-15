.class public Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final VALUE_OCTETS:I = 0x1

.field public static final VALUE_OID:I = 0x2

.field public static final VALUE_UTF8:I = 0x3


# instance fields
.field policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field valueChoice:I

.field values:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-IetfAttrSyntax encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v3, :cond_8

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Primitive;

    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iget v5, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    if-gez v5, :cond_2

    iput v2, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    :cond_2
    iget v5, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    if-eq v2, v5, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mix of value types in IetfAttrSyntax"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v2, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    :cond_4
    instance-of v2, v0, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad value type encoding IetfAttrSyntax"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    return-void

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPolicyAuthority()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getValueType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    return v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getValueType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lorg/bouncycastle/asn1/ASN1OctetString;

    move v1, v0

    :goto_0
    array-length v0, v2

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getValueType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v1, v0

    :goto_2
    array-length v0, v2

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lorg/bouncycastle/asn1/DERUTF8String;

    move v1, v0

    :goto_3
    array-length v0, v2

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERUTF8String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
