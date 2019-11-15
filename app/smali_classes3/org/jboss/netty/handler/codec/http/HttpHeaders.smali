.class public Lorg/jboss/netty/handler/codec/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;,
        Lorg/jboss/netty/handler/codec/http/HttpHeaders$Values;,
        Lorg/jboss/netty/handler/codec/http/HttpHeaders$Names;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x11


# instance fields
.field private final entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

.field private final head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    return-void
.end method

.method public static addHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addHeader0(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    aget-object v0, v0, p2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    invoke-direct {v2, p1, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, p2

    iput-object v0, v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    invoke-virtual {v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->addBefore(Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;)V

    return-void
.end method

.method public static addIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

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

.method public static getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J
    .locals 3

    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    instance-of v0, p0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMethod;->GET:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Key1"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Key2"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x8

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const-string v0, "Sec-WebSocket-Origin"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Location"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x10

    goto :goto_0
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static getHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .locals 1

    const-string v0, "Host"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Host"

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
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

.method public static is100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    sget-object v3, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    invoke-virtual {v0, v3}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->compareTo(Lorg/jboss/netty/handler/codec/http/HttpVersion;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "Expect"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "100-continue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "Expect"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "100-continue"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static isKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Connection"

    invoke-interface {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "close"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private removeHeader0(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->hash:I

    if-ne v1, p1, :cond_3

    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-static {p3, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->remove()V

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    aput-object v0, v1, p2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    goto :goto_0

    :cond_2
    iget v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->hash:I

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-static {p3, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->remove()V

    :cond_3
    :goto_2
    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static set100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->set100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V

    return-void
.end method

.method public static set100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Expect"

    const-string v1, "100-continue"

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Expect"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V
    .locals 3

    const-string v0, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Host"

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public static setKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "Connection"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "Connection"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
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
    .locals 3

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method clearHeaders()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    return-void
.end method

.method containsHeader(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

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
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    iget v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->hash:I

    if-ne v2, v1, :cond_1

    iget-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->value:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

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

    sget-object v0, Lorg/jboss/netty/util/internal/CaseIgnoringComparator;->INSTANCE:Lorg/jboss/netty/util/internal/CaseIgnoringComparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    if-eq v0, v2, :cond_0

    iget-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    if-eq v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

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

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v0

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_2

    iget v3, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->hash:I

    if-ne v3, v2, :cond_1

    iget-object v3, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method removeHeader(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader0(IILjava/lang/String;)V

    return-void
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 4
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
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader0(IILjava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1, v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader0(IILjava/lang/String;)V

    invoke-direct {p0, v1, v2, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method validateHeaderName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderName(Ljava/lang/String;)V

    return-void
.end method
