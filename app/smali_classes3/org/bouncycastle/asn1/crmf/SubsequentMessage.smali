.class public Lorg/bouncycastle/asn1/crmf/SubsequentMessage;
.super Lorg/bouncycastle/asn1/ASN1Integer;


# static fields
.field public static final challengeResp:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

.field public static final encrCert:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->encrCert:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    new-instance v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->challengeResp:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-void
.end method

.method public static valueOf(I)Lorg/bouncycastle/asn1/crmf/SubsequentMessage;
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->encrCert:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->challengeResp:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
