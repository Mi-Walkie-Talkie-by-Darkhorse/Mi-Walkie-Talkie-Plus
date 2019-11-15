.class public interface abstract Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final id_icao:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_aaProtocolObject:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_cscaMasterList:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_cscaMasterListSigningKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_documentTypeList:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_extensions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_extensions_namechangekeyrollover:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_ldsSecurityObject:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_mrtd:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_mrtd_security:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.23.136"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_ldsSecurityObject:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_cscaMasterList:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_cscaMasterListSigningKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_documentTypeList:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_aaProtocolObject:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_extensions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_extensions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_extensions_namechangekeyrollover:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
