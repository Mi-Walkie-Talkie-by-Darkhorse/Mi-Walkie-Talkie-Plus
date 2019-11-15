.class public interface abstract Lorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;
.super Ljava/lang/Object;


# static fields
.field public static final proofOfApproval:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final proofOfCreation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final proofOfDelivery:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final proofOfOrigin:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final proofOfReceipt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final proofOfSender:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfOrigin:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfOrigin:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfReceipt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfReceipt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfDelivery:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfDelivery:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfSender:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfSender:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfApproval:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfApproval:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfCreation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfCreation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
