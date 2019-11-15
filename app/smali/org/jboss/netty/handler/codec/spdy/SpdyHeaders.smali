.class public Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;
.super Ljava/lang/Object;
.source "SpdyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;,
        Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Spdy2HttpNames;,
        Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HttpNames;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x11


# instance fields
.field private final entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

.field private final head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iput-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    return-void
.end method

.method public static addHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addHeader0(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    aget-object v0, v0, p2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    invoke-direct {v2, p1, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, p2

    iput-object v0, v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    invoke-virtual {v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->addBefore(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;)V

    return-void
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_4

    if-lt v2, v4, :cond_2

    if-gt v2, v5, :cond_2

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    :cond_2
    if-lt v1, v4, :cond_3

    if-gt v1, v5, :cond_3

    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    :cond_3
    if-ne v2, v1, :cond_0

    :cond_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static getHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .locals 1

    const-string v0, ":host"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpMethod;
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    :try_start_0
    const-string v0, "method"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ":method"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMethod;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMethod(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpMethod;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public static getScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "scheme"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ":scheme"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getScheme(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .locals 4

    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    :try_start_0
    const-string v0, "status"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v0, ":status"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    return-object v0
.end method

.method public static getUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "url"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ":path"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUrl(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    :try_start_0
    const-string v0, "version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ":version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpVersion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVersion(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    return-object v0
.end method

.method private static hash(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_3

    const v0, 0x7fffffff

    goto :goto_1

    :cond_3
    neg-int v0, v1

    goto :goto_1
.end method

.method private static index(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0x11

    return v0
.end method

.method private removeHeader0(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->hash:I

    if-ne v1, p1, :cond_3

    iget-object v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-static {p3, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->remove()V

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    aput-object v0, v1, p2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    goto :goto_0

    :cond_2
    iget v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->hash:I

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-static {p3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->remove()V

    :cond_3
    :goto_2
    iget-object v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static removeHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1

    const-string v0, ":host"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public static removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "method"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":method"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeMethod(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    return-void
.end method

.method public static removeScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const-string v0, "scheme"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":scheme"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeScheme(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    return-void
.end method

.method public static removeStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "status"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":status"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    return-void
.end method

.method public static removeUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "url"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":path"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeUrl(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    return-void
.end method

.method public static removeVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeVersion(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .locals 1

    const-string v0, ":host"

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpMethod;)V
    .locals 2

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "method"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":method"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setMethod(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpMethod;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpMethod;)V

    return-void
.end method

.method public static setScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "scheme"

    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":scheme"

    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setScheme(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    return-void
.end method

.method public static setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V
    .locals 2

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "status"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":status"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    return-void
.end method

.method public static setUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "url"

    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":path"

    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setUrl(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    return-void
.end method

.method public static setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .locals 2

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "version"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ":version"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setVersion(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderName(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v3

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method clearHeaders()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iput-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    return-void
.end method

.method containsHeader(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    iget v2, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->hash:I

    if-ne v2, v1, :cond_1

    iget-object v2, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->value:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getHeaderNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    if-eq v0, v2, :cond_0

    iget-object v2, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method getHeaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    if-eq v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method getHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v0

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_2

    iget v3, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->hash:I

    if-ne v3, v2, :cond_1

    iget-object v3, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HeaderEntry;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method removeHeader(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHeader0(IILjava/lang/String;)V

    return-void
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderName(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHeader0(IILjava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v0, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderName(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHeader0(IILjava/lang/String;)V

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
