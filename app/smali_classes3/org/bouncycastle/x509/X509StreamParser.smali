.class public Lorg/bouncycastle/x509/X509StreamParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/x509/util/StreamParser;


# instance fields
.field private _provider:Ljava/security/Provider;

.field private _spi:Lorg/bouncycastle/x509/X509StreamParserSpi;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Lorg/bouncycastle/x509/X509StreamParserSpi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/X509StreamParser;->_provider:Ljava/security/Provider;

    iput-object p2, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    return-void
.end method

.method private static createParser(Lorg/bouncycastle/x509/X509Util$Implementation;)Lorg/bouncycastle/x509/X509StreamParser;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509Util$Implementation;->getEngine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509StreamParserSpi;

    new-instance v1, Lorg/bouncycastle/x509/X509StreamParser;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509Util$Implementation;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/X509StreamParser;-><init>(Ljava/security/Provider;Lorg/bouncycastle/x509/X509StreamParserSpi;)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/bouncycastle/x509/X509StreamParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchParserException;
        }
    .end annotation

    :try_start_0
    const-string v0, "X509StreamParser"

    invoke-static {v0, p0}, Lorg/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/x509/X509Util$Implementation;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/x509/X509StreamParser;->createParser(Lorg/bouncycastle/x509/X509Util$Implementation;)Lorg/bouncycastle/x509/X509StreamParser;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/x509/NoSuchParserException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/NoSuchParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/x509/X509StreamParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchParserException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/x509/X509StreamParser;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509StreamParser;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509StreamParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchParserException;
        }
    .end annotation

    :try_start_0
    const-string v0, "X509StreamParser"

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509Util$Implementation;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/x509/X509StreamParser;->createParser(Lorg/bouncycastle/x509/X509Util$Implementation;)Lorg/bouncycastle/x509/X509StreamParser;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/x509/NoSuchParserException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/NoSuchParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_provider:Ljava/security/Provider;

    return-object v0
.end method

.method public init(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509StreamParserSpi;->engineInit(Ljava/io/InputStream;)V

    return-void
.end method

.method public init([B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509StreamParserSpi;->engineInit(Ljava/io/InputStream;)V

    return-void
.end method

.method public read()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509StreamParserSpi;->engineRead()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/X509StreamParser;->_spi:Lorg/bouncycastle/x509/X509StreamParserSpi;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509StreamParserSpi;->engineReadAll()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
