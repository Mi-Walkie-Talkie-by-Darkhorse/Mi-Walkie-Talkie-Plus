.class public interface abstract Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final UaOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu4145be:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu4145le:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.804.2.1.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.1.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.1.1.1.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145be:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
