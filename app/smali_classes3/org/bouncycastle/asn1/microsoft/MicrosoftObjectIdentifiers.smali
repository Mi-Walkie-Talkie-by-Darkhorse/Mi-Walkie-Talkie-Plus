.class public interface abstract Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final microsoft:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftAppPolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftCaVersion:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftCertTemplateV1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftCertTemplateV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftCrlNextPublish:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final microsoftPrevCaCertHash:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.311"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "20.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftCertTemplateV1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftCaVersion:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftPrevCaCertHash:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21.4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftCrlNextPublish:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21.7"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftCertTemplateV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoft:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21.10"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/microsoft/MicrosoftObjectIdentifiers;->microsoftAppPolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
