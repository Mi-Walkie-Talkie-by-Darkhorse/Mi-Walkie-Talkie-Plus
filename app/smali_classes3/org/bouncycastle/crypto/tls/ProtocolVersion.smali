.class public final Lorg/bouncycastle/crypto/tls/ProtocolVersion;
.super Ljava/lang/Object;


# static fields
.field public static final DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x300

    const-string v2, "SSL 3.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x301

    const-string v2, "TLS 1.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x302

    const-string v2, "TLS 1.1"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x303

    const-string v2, "TLS 1.2"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const v1, 0xfeff

    const-string v2, "DTLS 1.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const v1, 0xfefd

    const-string v2, "DTLS 1.2"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(II)Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x2f

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    packed-switch p1, :pswitch_data_0

    const-string v0, "TLS"

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getUnknownVersion(IILjava/lang/String;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    :sswitch_1
    packed-switch p1, :pswitch_data_1

    const-string v0, "DTLS"

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getUnknownVersion(IILjava/lang/String;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_6
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xfe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfd
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static getUnknownVersion(IILjava/lang/String;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    const/high16 v1, 0x10000

    or-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    iget v1, p1, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_0
.end method

.method public getFullVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public isDTLS()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_3

    if-gtz v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    if-gez v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public isLaterVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_3

    if-lez v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public isSSL()Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTLS()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method
