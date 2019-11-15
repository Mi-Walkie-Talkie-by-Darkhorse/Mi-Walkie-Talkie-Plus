.class public interface abstract Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final RoleSyntax:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_accessIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_authenticationInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_chargingIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_encAttrs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aca_group:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_clearance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_role:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ce_targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pe_aaControls:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pe_ac_auditIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pe_ac_proxying:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.72"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->RoleSyntax:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_pe_ac_auditIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_pe_aaControls:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_pe_ac_proxying:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "55"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_ce_targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_authenticationInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_accessIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_chargingIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_group:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_aca_encAttrs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.72"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_at_role:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.1.5.55"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509AttributeIdentifiers;->id_at_clearance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
