.class public Lorg/bouncycastle/asn1/ASN1Boolean;
.super Lorg/bouncycastle/asn1/ASN1Primitive;


# static fields
.field public static final FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:[B

.field public static final TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:[B


# instance fields
.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    goto :goto_0
.end method

.method constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-byte v0, p1, v2

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    :goto_0
    return-void

    :cond_1
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_0
.end method

.method static fromOctetString([B)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-byte v0, p0, v2

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0

    :cond_1
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    goto :goto_0
.end method

.method public static getInstance(I)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    check-cast p0, [B

    check-cast p0, [B

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Boolean;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct boolean from byte[]: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0
.end method


# virtual methods
.method protected asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v1, v1, v0

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Boolean;

    iget-object v2, p1, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTrue()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method
