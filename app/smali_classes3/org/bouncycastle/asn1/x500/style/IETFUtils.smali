.class public Lorg/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRDN(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-eq v0, v4, :cond_2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_1
    aget-object v4, v3, v0

    invoke-static {p0, v4, p2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x2b

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    :cond_2
    return-void
.end method

.method public static appendTypeAndValue(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static atvAreEqual(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 3

    array-length v0, p0

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x5c

    const/16 v4, 0x20

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_4

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v3, v0, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    move v1, v2

    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    :cond_1
    if-gtz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private static convertHex(C)I
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - passed to distinguished name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeObject(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findAttrNamesForOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move v0, v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method private static isHexDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rDNAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    array-length v0, v2

    array-length v4, v3

    if-eq v0, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v4, v2

    if-eq v0, v4, :cond_3

    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static rDNsFromString(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/X500NameStyle;)[Lorg/bouncycastle/asn1/x500/RDN;
    .locals 10

    const/16 v9, 0x2b

    const/16 v8, 0x3d

    new-instance v0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;)V

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v3, v2, v9}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    new-instance v2, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v8}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v8}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v6}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_0

    :cond_4
    new-instance v3, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v3, v2, v8}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/X500NameBuilder;->build()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    return-object v0
.end method

.method public static stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v4, :cond_0

    if-eq v2, v4, :cond_1

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toOIDArray(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const/16 v14, 0x22

    const/16 v13, 0x5c

    const/16 v12, 0x20

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    aget-char v0, v9, v1

    if-ne v0, v13, :cond_d

    aget-char v0, v9, v7

    const/16 v2, 0x23

    if-ne v0, v2, :cond_d

    const/4 v0, 0x2

    const-string v2, "\\#"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    :goto_2
    array-length v8, v9

    if-eq v0, v8, :cond_b

    aget-char v8, v9, v0

    if-eq v8, v12, :cond_2

    move v4, v7

    :cond_2
    if-ne v8, v14, :cond_6

    if-nez v6, :cond_5

    if-nez v5, :cond_4

    move v5, v7

    :goto_3
    move v6, v1

    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v5, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    if-ne v8, v13, :cond_7

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move v6, v7

    goto :goto_4

    :cond_7
    if-ne v8, v12, :cond_8

    if-nez v6, :cond_8

    if-eqz v4, :cond_3

    :cond_8
    if-eqz v6, :cond_a

    invoke-static {v8}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v2, :cond_9

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-static {v8}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v6

    add-int/2addr v2, v6

    int-to-char v2, v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    move v6, v1

    goto :goto_4

    :cond_9
    move v2, v8

    goto :goto_4

    :cond_a
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v1

    goto :goto_4

    :cond_b
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    :goto_5
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_c

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_c

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_5

    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_1
.end method

.method public static valueFromHexString(Ljava/lang/String;I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static valueToString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x23

    const/16 v7, 0x20

    const/4 v0, 0x2

    const/16 v6, 0x5c

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v1, p0, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v1, :cond_3

    instance-of v1, p0, Lorg/bouncycastle/asn1/DERUniversalString;

    if-nez v1, :cond_3

    check-cast p0, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v4, v0, :cond_7

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_7

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_7

    :goto_1
    if-eq v0, v1, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1

    :cond_0
    const-string v4, "\\"

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Other value has no encoded form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v2

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v0, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_5

    const-string v1, "\\"

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_6

    invoke-virtual {v3, v0, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v2

    goto/16 :goto_1
.end method
