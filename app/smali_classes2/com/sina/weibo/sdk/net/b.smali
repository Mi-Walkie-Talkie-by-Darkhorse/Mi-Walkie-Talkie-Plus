.class public abstract Lcom/sina/weibo/sdk/net/b;
.super Ljava/lang/Object;
.source "CustomRedirectHandler.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/sina/weibo/sdk/net/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/net/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract b()V
.end method

.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/sina/weibo/sdk/net/b;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CustomRedirectHandler getLocationURI getRedirectUrl : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/net/b;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/sina/weibo/sdk/net/b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sina/weibo/sdk/net/b;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    const/16 v0, 0x12d

    if-eq p2, v0, :cond_2

    const/16 v0, 0x12e

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc8

    if-ne p2, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/sina/weibo/sdk/net/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/sina/weibo/sdk/net/b;->b:Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/net/b;->b()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "Location"

    .line 4
    invoke-interface {p1, p2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/net/b;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/sina/weibo/sdk/net/b;->a:I

    const/16 p2, 0xf

    if-ge p1, p2, :cond_3

    .line 6
    iget-object p1, p0, Lcom/sina/weibo/sdk/net/b;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/net/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget p1, p0, Lcom/sina/weibo/sdk/net/b;->a:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sina/weibo/sdk/net/b;->a:I

    return p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
