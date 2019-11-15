.class public Lorg/bouncycastle/asn1/DLTaggedObject;
.super Lorg/bouncycastle/asn1/ASN1TaggedObject;


# static fields
.field private static final ZERO_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->empty:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeImplicitObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    sget-object v2, Lorg/bouncycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    goto :goto_0
.end method

.method encodedLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->empty:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method isConstructed()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->empty:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v0

    goto :goto_0
.end method
