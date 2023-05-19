.class public Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/security/cert/PKIXParameters;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v3, v0

    check-cast v3, Ljava/security/cert/PKIXParameters;

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    instance-of v3, v0, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v2, :cond_17

    check-cast v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v13, 0x0

    if-nez v2, :cond_15

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v14

    const/4 v15, 0x1

    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v9
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v9, :cond_14

    new-instance v2, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v2, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v2, v9}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    add-int/lit8 v2, v12, 0x1

    new-array v8, v2, [Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "2.5.29.32.0"

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    const/16 v20, 0x0

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    const/16 v23, 0x0

    const-string v22, "2.5.29.32.0"

    move-object/from16 v16, v5

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    aget-object v4, v8, v7

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v6}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    goto :goto_3

    :cond_5
    move/from16 v17, v2

    :goto_3
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v18

    if-eqz v18, :cond_6

    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v18

    if-eqz v18, :cond_7

    :try_start_1
    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v20

    goto :goto_4

    :cond_7
    invoke-static {v9}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v19

    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v20
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    :try_start_2
    invoke-static/range {v20 .. v20}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v3

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    check-cast v15, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v15}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Target certificate in certification path does not match targetConstraints."

    invoke-direct {v0, v2, v13, v10, v7}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_9
    :goto_5
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v13, v21

    check-cast v13, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v13, v7}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    const/4 v13, 0x0

    goto :goto_6

    :cond_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    move/from16 v25, v12

    const/16 v24, 0x0

    move-object/from16 v33, v5

    move v5, v2

    move/from16 v2, v17

    move-object/from16 v17, v33

    move/from16 v34, v4

    move v4, v3

    move/from16 v3, v34

    :goto_7
    if-ltz v4, :cond_10

    sub-int v13, v12, v4

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v24, v21

    check-cast v24, Ljava/security/cert/X509Certificate;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v21

    const/16 v23, 0x1

    add-int/lit8 v7, v21, -0x1

    move-object/from16 v21, v9

    if-ne v4, v7, :cond_b

    const/4 v7, 0x1

    goto :goto_8

    :cond_b
    const/4 v7, 0x0

    :goto_8
    iget-object v9, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move/from16 v23, v2

    move-object/from16 v2, p1

    move-object/from16 v27, v11

    move v11, v3

    move-object v3, v0

    move/from16 v28, v4

    move-object/from16 v29, v14

    move v14, v5

    move-object/from16 v5, v20

    move-object/from16 v30, v0

    move-object v0, v6

    move v6, v7

    const/16 v26, 0x0

    move-object/from16 v7, v19

    move-object/from16 v31, v8

    move-object/from16 v8, v18

    move-object/from16 v32, v21

    invoke-static/range {v2 .. v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;ILjava/security/PublicKey;ZLorg/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    move/from16 v9, v28

    invoke-static {v10, v9, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v31

    move/from16 v7, v23

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    invoke-static {v10, v9, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    invoke-static {v10, v9, v2, v11}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    if-eq v13, v12, :cond_f

    if-eqz v24, :cond_d

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    goto :goto_9

    :cond_c
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Version 1 certificates can\'t be used as CA ones."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v10, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_d
    :goto_9
    invoke-static {v10, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    move-object/from16 v6, v31

    invoke-static {v10, v9, v6, v2, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    invoke-static {v10, v9, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    invoke-static {v10, v9, v11}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v3

    invoke-static {v10, v9, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v4

    move/from16 v5, v23

    invoke-static {v10, v9, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v5

    invoke-static {v10, v9, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v3

    invoke-static {v10, v9, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v4

    invoke-static {v10, v9, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v5

    invoke-static {v10, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    move/from16 v7, v25

    invoke-static {v10, v9, v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v7

    invoke-static {v10, v9, v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v25

    invoke-static {v10, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    if-eqz v7, :cond_e

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    :goto_a
    invoke-static {v10, v9, v8, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v8

    iget-object v11, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v8, v9, v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v8
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v8}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-object/from16 v17, v2

    move v2, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v18, v24

    move v5, v4

    goto :goto_b

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Next working key could not be retrieved."

    invoke-direct {v2, v3, v0, v10, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_f
    move/from16 v5, v23

    move/from16 v7, v25

    move-object/from16 v6, v31

    move-object/from16 v17, v2

    move v2, v5

    move v3, v11

    move v5, v14

    :goto_b
    add-int/lit8 v4, v9, -0x1

    move-object v8, v6

    move-object/from16 v11, v27

    move-object/from16 v14, v29

    move-object/from16 v9, v32

    const/4 v7, 0x0

    const/4 v13, 0x1

    move-object v6, v0

    move-object/from16 v0, v30

    goto/16 :goto_7

    :cond_10
    move-object/from16 v30, v0

    move v11, v3

    move-object v6, v8

    move-object/from16 v32, v9

    move-object/from16 v29, v14

    move-object/from16 v13, v24

    move v9, v4

    invoke-static {v11, v13}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v0

    add-int/lit8 v5, v9, 0x1

    invoke-static {v10, v5, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v0

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    if-eqz v2, :cond_11

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_11
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :goto_c
    invoke-static {v10, v5, v15, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    move-object/from16 v2, p1

    move-object/from16 v3, v30

    move-object/from16 v4, v29

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    if-gtz v0, :cond_13

    if-eqz v2, :cond_12

    goto :goto_d

    :cond_12
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Path processing failed on policy."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v10, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_13
    :goto_d
    new-instance v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v4, v32

    invoke-direct {v0, v4, v2, v3}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v0

    :catch_1
    move-exception v0

    move-object v2, v0

    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Algorithm identifier of public key of trust anchor could not be read."

    invoke-direct {v0, v4, v2, v10, v3}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v2, v4, v0, v10, v3}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_14
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Trust anchor for certification path not found."

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v10, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_3
    move-exception v0

    move-object/from16 v27, v11

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v0, v10, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_15
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Certification path is empty."

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v10, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_16
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameters must be a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " instance."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
