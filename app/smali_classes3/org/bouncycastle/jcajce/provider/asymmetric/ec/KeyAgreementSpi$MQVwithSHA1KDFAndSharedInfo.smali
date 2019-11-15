.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA1KDFAndSharedInfo;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MQVwithSHA1KDFAndSharedInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "ECMQVwithSHA1KDF"

    new-instance v1, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method
