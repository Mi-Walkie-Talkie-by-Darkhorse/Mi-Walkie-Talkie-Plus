.class public Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/CertStoreParameters;
.implements Lorg/bouncycastle/x509/X509StoreParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$1;,
        Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;
    }
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
.method private constructor <init>(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$100(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapURL:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$200(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->baseDN:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$300(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$400(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$500(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$600(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$700(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$800(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$900(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1000(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1100(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1200(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1300(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1400(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapUserCertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1500(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCACertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1600(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1700(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1800(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$1900(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2000(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2100(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAACertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2200(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2300(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2400(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2500(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2600(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2700(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2800(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$2900(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3000(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3100(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3200(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3300(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3400(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3500(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-static {p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->access$3600(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->searchForSerialNumberIn:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;-><init>(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;)V

    return-void
.end method

.method private addHashCode(ILjava/lang/Object;)I
    .locals 2

    mul-int/lit8 v1, p1, 0x1d

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private checkField(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getInstance(Ljava/security/cert/LDAPCertStoreParameters;)Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ldap://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/LDAPCertStoreParameters;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/LDAPCertStoreParameters;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->build()Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public equal(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapURL:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapURL:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->baseDN:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->baseDN:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapUserCertificateAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapUserCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCACertificateAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCACertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAACertificateAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAACertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateSubjectAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateSubjectAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateSubjectAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->searchForSerialNumberIn:Ljava/lang/String;

    iget-object v3, p1, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->searchForSerialNumberIn:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->checkField(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public getAACertificateAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAACertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeAuthorityRevocationListAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeCertificateAttributeAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeCertificateAttributeSubjectAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeCertificateRevocationListAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeCertificateRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeDescriptorCertificateAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeDescriptorCertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorityRevocationListAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseDN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->baseDN:Ljava/lang/String;

    return-object v0
.end method

.method public getCACertificateAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getCACertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateRevocationListAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossCertificateAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossCertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaRevocationListAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaRevocationListIssuerAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAACertificateAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAACertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAttributeAuthorityRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAttributeCertificateAttributeAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAttributeCertificateRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAttributeDescriptorCertificateAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapAuthorityRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapCACertificateAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCACertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapCertificateRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapCrossCertificateAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapDeltaRevocationListAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapURL:Ljava/lang/String;

    return-object v0
.end method

.method public getLdapUserCertificateAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapUserCertificateAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchForSerialNumberIn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->searchForSerialNumberIn:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCertificateAttribute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCertificateSubjectAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateSubjectAttributeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListAttribute:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapUserCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCACertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCrossCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapDeltaRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateAttributeAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAACertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeDescriptorCertificateAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeCertificateRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->ldapAttributeAuthorityRevocationListAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->userCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->cACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->crossCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->certificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->deltaRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->authorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateAttributeSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->aACertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeDescriptorCertificateSubjectAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeCertificateRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->attributeAuthorityRevocationListIssuerAttributeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->searchForSerialNumberIn:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->addHashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method
