.class Lcom/shenma/speechrecognition/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:[B

.field private final c:Ljava/lang/Integer;

.field private d:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(I[BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/speechrecognition/f;->a:Ljava/lang/Integer;

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/shenma/speechrecognition/f;->b:[B

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->b:[B

    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/speechrecognition/f;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a(Lcom/shenma/speechrecognition/f;)I
    .locals 2

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p1, Lcom/shenma/speechrecognition/f;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const-string v0, "build http."

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/shenma/speechrecognition/af;->a()Lcom/shenma/speechrecognition/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/af;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const-string v1, "Cookie"

    invoke-static {}, Lcom/shenma/speechrecognition/af;->a()Lcom/shenma/speechrecognition/af;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shenma/speechrecognition/af;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v4, "close"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const-string v0, "The %d-th packet build http %dms."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/shenma/speechrecognition/f;->a:Ljava/lang/Integer;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "URL create failure."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "URL Connection create failure."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->b:[B

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/shenma/speechrecognition/f;

    invoke-virtual {p0, p1}, Lcom/shenma/speechrecognition/f;->a(Lcom/shenma/speechrecognition/f;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/f;->d:Ljava/net/HttpURLConnection;

    return-object v0
.end method
