.class public Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aACertificateAttribute:Ljava/lang/String;

.field private aACertificateSubjectAttributeName:Ljava/lang/String;

.field private attributeAuthorityRevocationListAttribute:Ljava/lang/String;

.field private attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

.field private attributeCertificateAttributeAttribute:Ljava/lang/String;

.field private attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

.field private attributeCertificateRevocationListAttribute:Ljava/lang/String;

.field private attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

.field private attributeDescriptorCertificateAttribute:Ljava/lang/String;

.field private attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

.field private authorityRevocationListAttribute:Ljava/lang/String;

.field private authorityRevocationListIssuerAttributeName:Ljava/lang/String;

.field private baseDN:Ljava/lang/String;

.field private cACertificateAttribute:Ljava/lang/String;

.field private cACertificateSubjectAttributeName:Ljava/lang/String;

.field private certificateRevocationListAttribute:Ljava/lang/String;

.field private certificateRevocationListIssuerAttributeName:Ljava/lang/String;

.field private crossCertificateAttribute:Ljava/lang/String;

.field private crossCertificateSubjectAttributeName:Ljava/lang/String;

.field private deltaRevocationListAttribute:Ljava/lang/String;

.field private deltaRevocationListIssuerAttributeName:Ljava/lang/String;

.field private ldapAACertificateAttributeName:Ljava/lang/String;

.field private ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

.field private ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

.field private ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

.field private ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

.field private ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

.field private ldapCACertificateAttributeName:Ljava/lang/String;

.field private ldapCertificateRevocationListAttributeName:Ljava/lang/String;

.field private ldapCrossCertificateAttributeName:Ljava/lang/String;

.field private ldapDeltaRevocationListAttributeName:Ljava/lang/String;

.field private ldapURL:Ljava/lang/String;

.field private ldapUserCertificateAttributeName:Ljava/lang/String;

.field private searchForSerialNumberIn:Ljava/lang/String;

.field private userCertificateAttribute:Ljava/lang/String;

.field private userCertificateSubjectAttributeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ldap://localhost:389"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapURL:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->baseDN:Ljava/lang/String;

    :goto_0
    const-string v0, "userCertificate"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateAttribute:Ljava/lang/String;

    const-string v0, "cACertificate"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateAttribute:Ljava/lang/String;

    const-string v0, "crossCertificatePair"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateAttribute:Ljava/lang/String;

    const-string v0, "certificateRevocationList"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListAttribute:Ljava/lang/String;

    const-string v0, "deltaRevocationList"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListAttribute:Ljava/lang/String;

    const-string v0, "authorityRevocationList"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListAttribute:Ljava/lang/String;

    const-string v0, "attributeCertificateAttribute"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    const-string v0, "aACertificate"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateAttribute:Ljava/lang/String;

    const-string v0, "attributeDescriptorCertificate"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    const-string v0, "attributeCertificateRevocationList"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    const-string v0, "attributeAuthorityRevocationList"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    const-string v0, "cn"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapUserCertificateAttributeName:Ljava/lang/String;

    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCACertificateAttributeName:Ljava/lang/String;

    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    const-string v0, "cn ou o"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    const-string v0, "cn"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAACertificateAttributeName:Ljava/lang/String;

    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    const-string v0, "cn o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    const-string v0, "cn"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateSubjectAttributeName:Ljava/lang/String;

    const-string v0, "o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateSubjectAttributeName:Ljava/lang/String;

    const-string v0, "o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    const-string v0, "o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    const-string v0, "o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    const-string v0, "o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    const-string v0, "cn"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    const-string v0, "o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateSubjectAttributeName:Ljava/lang/String;

    const-string v0, "o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    const-string v0, "o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    const-string v0, "o ou"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    const-string v0, "uid serialNumber cn"

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->searchForSerialNumberIn:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->baseDN:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapUserCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCACertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->baseDN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAACertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->searchForSerialNumberIn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapUserCertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCACertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAACertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Necessary parameters not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;-><init>(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$1;)V

    return-object v0
.end method

.method public setAACertificateAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setAACertificateSubjectAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->aACertificateSubjectAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributeAuthorityRevocationListAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributeAuthorityRevocationListIssuerAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributeCertificateAttributeAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributeCertificateAttributeSubjectAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributeCertificateRevocationListAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributeCertificateRevocationListIssuerAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributeDescriptorCertificateAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributeDescriptorCertificateSubjectAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthorityRevocationListAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthorityRevocationListIssuerAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setCACertificateAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setCACertificateSubjectAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->cACertificateSubjectAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setCertificateRevocationListAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setCertificateRevocationListIssuerAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setCrossCertificateAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setCrossCertificateSubjectAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setDeltaRevocationListAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setDeltaRevocationListIssuerAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapAACertificateAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAACertificateAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapAttributeAuthorityRevocationListAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapAttributeCertificateAttributeAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapAttributeCertificateRevocationListAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapAttributeDescriptorCertificateAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapAuthorityRevocationListAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapCACertificateAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCACertificateAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapCertificateRevocationListAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapCrossCertificateAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapDeltaRevocationListAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setLdapUserCertificateAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->ldapUserCertificateAttributeName:Ljava/lang/String;

    return-object p0
.end method

.method public setSearchForSerialNumberIn(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->searchForSerialNumberIn:Ljava/lang/String;

    return-object p0
.end method

.method public setUserCertificateAttribute(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateAttribute:Ljava/lang/String;

    return-object p0
.end method

.method public setUserCertificateSubjectAttributeName(Ljava/lang/String;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->userCertificateSubjectAttributeName:Ljava/lang/String;

    return-object p0
.end method
