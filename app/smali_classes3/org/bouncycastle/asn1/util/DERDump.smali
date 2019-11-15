.class public Lorg/bouncycastle/asn1/util/DERDump;
.super Lorg/bouncycastle/asn1/util/ASN1Dump;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/util/ASN1Dump;-><init>()V

    return-void
.end method

.method public static dumpAsString(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpAsString(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v0}, Lorg/bouncycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
