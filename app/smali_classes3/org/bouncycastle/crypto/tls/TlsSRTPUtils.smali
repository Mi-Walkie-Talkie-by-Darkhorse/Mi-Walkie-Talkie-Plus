.class public Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;
.super Ljava/lang/Object;


# static fields
.field public static final EXT_use_srtp:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->EXT_use_srtp:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUseSRTPExtension(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/tls/UseSRTPData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->EXT_use_srtp:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->createUseSRTPExtension(Lorg/bouncycastle/crypto/tls/UseSRTPData;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createUseSRTPExtension(Lorg/bouncycastle/crypto/tls/UseSRTPData;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'useSRTPData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/UseSRTPData;->getProtectionProfiles()[I

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/UseSRTPData;->getMki()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static getUseSRTPExtension(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/UseSRTPData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->EXT_use_srtp:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsSRTPUtils;->readUseSRTPExtension([B)Lorg/bouncycastle/crypto/tls/UseSRTPData;

    move-result-object v0

    goto :goto_0
.end method

.method public static readUseSRTPExtension([B)Lorg/bouncycastle/crypto/tls/UseSRTPData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'extensionData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/UseSRTPData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/UseSRTPData;-><init>([I[B)V

    return-object v0
.end method
