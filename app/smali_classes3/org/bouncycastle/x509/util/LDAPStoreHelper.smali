.class public Lorg/bouncycastle/x509/util/LDAPStoreHelper;
.super Ljava/lang/Object;


# static fields
.field private static LDAP_PROVIDER:Ljava/lang/String; = null

.field private static REFERRALS_IGNORE:Ljava/lang/String; = null

.field private static final SEARCH_SECURITY_LEVEL:Ljava/lang/String; = "none"

.field private static final URL_CONTEXT_PREFIX:Ljava/lang/String; = "com.sun.jndi.url"

.field private static cacheSize:I

.field private static lifeTime:J


# instance fields
.field private cacheMap:Ljava/util/Map;

.field private params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sun.jndi.ldap.LdapCtxFactory"

    sput-object v0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->LDAP_PROVIDER:Ljava/lang/String;

    const-string v0, "ignore"

    sput-object v0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->REFERRALS_IGNORE:Ljava/lang/String;

    const/16 v0, 0x20

    sput v0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    const-wide/32 v0, 0xea60

    sput-wide v0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->lifeTime:J

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    sget v1, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    iput-object p1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    return-void
.end method

.method private declared-synchronized addToCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sget v2, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-virtual {v0}, Ljava/sql/Date;->getTime()J

    move-result-wide v6

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/sql/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-wide v2, v4

    :goto_2
    move-wide v6, v2

    move-object v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v2

    move-wide v2, v6

    goto :goto_2
.end method

.method private attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    aget-object v1, v0, v2

    instance-of v1, v1, Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_5

    aget-object v0, v0, v2

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_6

    move v0, v2

    :goto_2
    array-length v2, p4

    if-ge v0, v2, :cond_6

    aget-object v2, p4, v0

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v2, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_7
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    const-string v0, "*"

    invoke-direct {p0, p3, v0, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-object v3

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->getCertificateIssuer(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getAttrCertificateChecking()Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getAttrCertificateChecking()Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v5

    move v0, v1

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_3

    aget-object v6, v5, v0

    instance-of v6, v6, Ljavax/security/auth/x500/X500Principal;

    if-eqz v6, :cond_2

    aget-object v6, v5, v0

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    const-string v2, "RFC1779"

    invoke-virtual {v0, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_2
    array-length v5, p4

    if-ge v0, v5, :cond_4

    aget-object v5, p4, v0

    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v5, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    const-string v0, "*"

    invoke-direct {p0, p3, v0, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v3
.end method

.method private certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->getSubjectAsString(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    array-length v4, p4

    if-ge v0, v4, :cond_1

    aget-object v4, p4, v0

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3, v4, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    const-string v0, "*"

    invoke-direct {p0, p3, v0, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v3

    :cond_4
    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method private connectLDAP()Ljavax/naming/directory/DirContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "java.naming.factory.initial"

    sget-object v2, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->LDAP_PROVIDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.batchsize"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.provider.url"

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.factory.url.pkgs"

    const-string v2, "com.sun.jndi.url"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.referral"

    sget-object v2, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->REFERRALS_IGNORE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.security.authentication"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v1, v0}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    return-object v1
.end method

.method private createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/jce/provider/X509AttrCertParser;

    invoke-direct {v3}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->engineInit(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bouncycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lorg/bouncycastle/jce/provider/X509CRLParser;

    invoke-direct {v2}, Lorg/bouncycastle/jce/provider/X509CRLParser;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/jce/provider/X509CRLParser;->engineInit(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/X509CRLParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bouncycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/jce/provider/X509CertParser;

    invoke-direct {v3}, Lorg/bouncycastle/jce/provider/X509CertParser;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private createCrossCertificatePairs(Ljava/util/List;Lorg/bouncycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    :try_start_0
    new-instance v1, Lorg/bouncycastle/jce/provider/X509CertPairParser;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/X509CertPairParser;-><init>()V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/jce/provider/X509CertPairParser;->engineInit(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/X509CertPairParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509CertificatePair;
    :try_end_0
    .catch Lorg/bouncycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    move v0, v2

    :goto_1
    :try_start_1
    invoke-virtual {p2, v1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    new-instance v3, Lorg/bouncycastle/x509/X509CertificatePair;

    new-instance v5, Lorg/bouncycastle/asn1/x509/CertificatePair;

    new-instance v6, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    new-instance v6, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lorg/bouncycastle/asn1/x509/CertificatePair;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {v3, v5}, Lorg/bouncycastle/x509/X509CertificatePair;-><init>(Lorg/bouncycastle/asn1/x509/CertificatePair;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v2, 0x1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v4

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    move v0, v2

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private crossCertificatePairSubjectSearch(Lorg/bouncycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getForwardSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getForwardSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->getSubjectAsString(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/bouncycastle/x509/X509CertificatePair;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/bouncycastle/x509/X509CertificatePair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/bouncycastle/x509/X509CertificatePair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    array-length v3, p4

    if-ge v0, v3, :cond_1

    aget-object v3, p4, v0

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3, v3, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "*"

    invoke-direct {p0, p3, v0, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private getCertificateIssuer(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method private getFromCache(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/sql/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->lifeTime:J

    sub-long/2addr v4, v8

    cmp-long v1, v6, v4

    if-gez v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private getSubjectAsString(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->getSubjectAsBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    const-string v0, "RFC1779"

    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/util/StoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/StoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x2c

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v3

    :goto_0
    const-string v2, ""

    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p3, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=*)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-string v0, ""

    const-string v2, "**"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "*"

    :cond_1
    move-object v2, v0

    move v0, v1

    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_9

    :goto_3
    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->getFromCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_4
    return-object v0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->connectLDAP()Ljavax/naming/directory/DirContext;

    move-result-object v3

    new-instance v0, Ljavax/naming/directory/SearchControls;

    invoke-direct {v0}, Ljavax/naming/directory/SearchControls;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljavax/naming/directory/SearchControls;->setCountLimit(J)V

    invoke-virtual {v0, p3}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    iget-object v4, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getBaseDN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1, v0}, Ljavax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/SearchResult;

    invoke-virtual {v0}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v0

    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/directory/Attribute;

    invoke-interface {v0}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    if-eqz v3, :cond_6

    :try_start_1
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    :goto_6
    move-object v0, v2

    goto :goto_4

    :cond_7
    :try_start_2
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->addToCache(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_6

    :try_start_3
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_8

    :try_start_4
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_8
    :goto_7
    throw v0

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_7

    :cond_9
    move-object v1, v2

    goto :goto_3
.end method

.method private splitString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAACertificates(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAACertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAACertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAttributeAuthorityRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeAuthorityRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeAuthorityRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAttributeCertificateAttributes(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateAttributeAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeCertificateAttributeAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateAttributeSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAttributeCertificateRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeCertificateRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAttributeDescriptorCertificates(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeDescriptorCertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeDescriptorCertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeDescriptorCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAuthorityRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAuthorityRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAuthorityRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getCACertificates(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCACertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapCACertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getCertificateRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapCertificateRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getCrossCertificatePairs(Lorg/bouncycastle/x509/X509CertPairStoreSelector;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapCrossCertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->crossCertificatePairSubjectSearch(Lorg/bouncycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCrossCertificatePairs(Ljava/util/List;Lorg/bouncycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    new-instance v5, Lorg/bouncycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v5}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;-><init>()V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    invoke-direct {p0, v5, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->crossCertificatePairSubjectSearch(Lorg/bouncycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCrossCertificatePairs(Ljava/util/List;Lorg/bouncycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getDeltaCertificateRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getDeltaRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapDeltaRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getDeltaRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getUserCertificates(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapUserCertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method
