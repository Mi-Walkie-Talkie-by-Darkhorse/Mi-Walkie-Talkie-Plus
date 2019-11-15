.class public Lorg/bouncycastle/x509/CertPathReviewerException;
.super Lorg/bouncycastle/i18n/LocalizedException;


# instance fields
.field private certPath:Ljava/security/cert/CertPath;

.field private index:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    iput v1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    if-eqz p3, :cond_0

    if-ne p4, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-lt p4, v1, :cond_2

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_3
    iput-object p3, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    iput p4, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    iput v1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    if-eqz p2, :cond_0

    if-ne p3, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-lt p3, v1, :cond_2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_3
    iput-object p2, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    iput p3, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return v0
.end method
