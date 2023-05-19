.class public final Lcom/amap/api/col/l3/hn;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static a()Ljava/security/PublicKey;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "X.509"

    .line 29
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    const-string v2, "MIIDRzCCAi+gAwIBAgIEeuDbsDANBgkqhkiG9w0BAQsFADBTMQswCQYDVQQGEwJjbjELMAkGA1UECBMCYmoxCzAJBgNVBAcTAmJqMQ0wCwYDVQQKEwRvcGVuMQ4wDAYDVQQLEwVnYW9kZTELMAkGA1UEAxMCUWkwIBcNMTYwODAxMDE0ODMwWhgPMjA3MTA1MDUwMTQ4MzBaMFMxCzAJBgNVBAYTAmNuMQswCQYDVQQIEwJiajELMAkGA1UEBxMCYmoxDTALBgNVBAoTBG9wZW4xDjAMBgNVBAsTBWdhb2RlMQswCQYDVQQDEwJRaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKpL13mZm4q6AFP5csQE7130Lwq8m+HICy3rBARd9vbw5Cb1wFF96KdhC5P/aASlrPb+6MSyP1nE97p3ygKJWsgxExyvVuOvh1KUqOFuK15oY7JKTk6L4eLCbkBJZV2DLffpW0HGiRpmFG8LJR0sjNOoubSd5R/6XoBwyRglsyVHprjrK2qDRvT3Edgtfvxp4HnUzMsDD3CJRtgsaDw6ECyF7fhYKEz9I6OEEVsPlpbgzRmhSeFDL77/k1mhPve1ZyKGlPcxvSSdLSAlV0hzr5NKlujHll7BbouwDnr6l/0O44AzZ0V/ieft1iBkSLirnlm56uI/8jdh8ANrD1fW4ZUCAwEAAaMhMB8wHQYDVR0OBBYEFBzudtI5UKRvHGDV+VQRzItIj3PqMA0GCSqGSIb3DQEBCwUAA4IBAQBS2EGndgvIBnf7Ce4IhDbm7F5h4L+6TYGmT9acnQbEFY8oUoFblMDgg+cETT44jU/elwbJJVmKhj/WRQl+AdSALBAgDvxq1AcjlGg+c8H3pa2BWlrxNJP9MFLIEI5bA8m5og/Epjut50uemZ9ggoNmJeW0N/a6D8euhYJKOYngUQqDu6cwLj1Ec0ptwrNRbvRXXgzjfJMPE/ii4K/b8JZ+QN2d/bl7QEvKWBSzVueZifV659qAbMh6C9TCVstWWfV53Z3Vyt+duDNU5ed7aWao42Ppw4VHslrJW0V6BXDUhhzgXx28UWY78W7LmYGCtC8PfDId2+k4tPoTNPM6HHP5"

    .line 30
    invoke-static {v2}, Lcom/amap/api/col/l3/gc;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 31
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 33
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    invoke-static {v3}, Lcom/amap/api/col/l3/hn;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v3, v0

    :goto_1
    :try_start_3
    const-string v2, "DyLoader"

    const-string v4, "init"

    .line 36
    invoke-static {v1, v2, v4}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 37
    :try_start_4
    invoke-static {v3}, Lcom/amap/api/col/l3/hn;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0

    :catchall_4
    move-exception v0

    .line 39
    :try_start_5
    invoke-static {v3}, Lcom/amap/api/col/l3/hn;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :goto_3
    throw v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 57
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/hk;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 43
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 44
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/hk;

    .line 45
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3/hk;

    .line 46
    invoke-virtual {v3}, Lcom/amap/api/col/l3/hk;->e()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {v4}, Lcom/amap/api/col/l3/hk;->e()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-static {v6, v5}, Lcom/amap/api/col/l3/hn;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 49
    invoke-interface {p0, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/hk;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)Z
    .locals 9

    .line 13
    iget-object v0, p3, Lcom/amap/api/col/l3/hg;->c:Ljava/lang/String;

    .line 14
    iget-object v1, p3, Lcom/amap/api/col/l3/hg;->d:Ljava/lang/String;

    .line 15
    iget-object v7, p3, Lcom/amap/api/col/l3/hg;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lcom/amap/api/col/l3/hk;->f()Ljava/lang/String;

    move-result-object p2

    const-string v2, "errorstatus"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v8, 0x1

    if-eqz p2, :cond_2

    .line 17
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-virtual {p4}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/amap/api/col/l3/hh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0, p1, p4}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/gh;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/hm;->b()Lcom/amap/api/col/l3/hm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/hm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/amap/api/col/l3/hn$2;

    invoke-direct {p2, p0, p4}, Lcom/amap/api/col/l3/hn$2;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return v8

    .line 18
    :cond_2
    iget-object p2, p3, Lcom/amap/api/col/l3/hg;->b:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 19
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p0, 0x0

    return p0

    .line 21
    :cond_3
    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, v1, v7}, Lcom/amap/api/col/l3/hk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/amap/api/col/l3/hk;

    .line 22
    invoke-virtual {p1, p2, p3}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    return v8

    .line 24
    :cond_4
    invoke-virtual {p4}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3/hm;->b()Lcom/amap/api/col/l3/hm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/api/col/l3/hm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p3, Lcom/amap/api/col/l3/hn$1;

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/l3/hn$1;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return v8
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)Z
    .locals 2

    .line 9
    new-instance v0, Lcom/amap/api/col/l3/gz;

    invoke-static {}, Lcom/amap/api/col/l3/hj;->a()Lcom/amap/api/col/l3/hj;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/gz;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gy;)V

    .line 10
    invoke-static {v0, p1}, Lcom/amap/api/col/l3/hn;->a(Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/hg;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 11
    :cond_0
    iget-object v1, p1, Lcom/amap/api/col/l3/hg;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/hh$a;->a(Lcom/amap/api/col/l3/gz;Ljava/lang/String;)Lcom/amap/api/col/l3/hk;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-static {p0, v0, v1, p1, p2}, Lcom/amap/api/col/l3/hn;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/hk;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static a(Landroid/content/Context;Z)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 26
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->r(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method static a(Lcom/amap/api/col/l3/gh;Lcom/amap/api/col/l3/hg;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/amap/api/col/l3/hg;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/amap/api/col/l3/hg;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static a(Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/hg;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p1, Lcom/amap/api/col/l3/hg;->c:Ljava/lang/String;

    const-string v2, "used"

    .line 2
    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3/hh$a;->a(Lcom/amap/api/col/l3/gz;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3/hk;

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/col/l3/hk;->e()Ljava/lang/String;

    move-result-object p0

    .line 6
    iget-object p1, p1, Lcom/amap/api/col/l3/hg;->e:Ljava/lang/String;

    .line 7
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/hn;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "dDownLoad"

    const-string v1, "isUsed"

    .line 8
    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method static a(Lcom/amap/api/col/l3/gz;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/col/l3/gh;)Z
    .locals 1

    .line 53
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/hh$a;->a(Lcom/amap/api/col/l3/gz;Ljava/lang/String;)Lcom/amap/api/col/l3/hk;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p3}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/amap/api/col/l3/hk;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    return p1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/hk;->b()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p2, p0}, Lcom/amap/api/col/l3/hn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method static a(Lcom/amap/api/col/l3/hg;)Z
    .locals 2

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/amap/api/col/l3/hg;->g:I

    if-lt v0, v1, :cond_0

    iget p0, p0, Lcom/amap/api/col/l3/hg;->f:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/amap/api/col/l3/ge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, "\\."

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-nez v2, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    return v2

    .line 6
    :cond_1
    array-length p0, p0

    array-length p1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p0, p1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Utils"

    const-string v0, "compareVersion"

    .line 7
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method
