.class public abstract Lcom/ksyun/ks3/services/a/b;
.super Lcom/ksyun/ks3/services/a/c;
.source "InitiateMultipartUploadResponceHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/c;-><init>()V

    return-void
.end method

.method private parseXml([Lorg/apache/http/Header;[B)Lcom/ksyun/ks3/model/a/b;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "UTF-8"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    const/4 v3, 0x1

    if-eq v3, v1, :cond_1

    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    move-object v1, v0

    :goto_1
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    move v4, v0

    move-object v0, v1

    move v1, v4

    goto :goto_0

    :pswitch_0
    :try_start_3
    new-instance v1, Lcom/ksyun/ks3/model/a/b;

    invoke-direct {v1}, Lcom/ksyun/ks3/model/a/b;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    return-object v0

    :pswitch_1
    move-object v1, v0

    goto :goto_1

    :pswitch_2
    :try_start_4
    const-string v1, "Bucket"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/model/a/b;->a(Ljava/lang/String;)V

    :cond_2
    const-string v1, "Key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/model/a/b;->b(Ljava/lang/String;)V

    :cond_3
    const-string v1, "UploadId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/model/a/b;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v1, v0

    goto :goto_1

    :pswitch_3
    move-object v1, v0

    goto :goto_1

    :pswitch_4
    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_4
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_5
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public abstract onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 6

    new-instance v2, Lcom/ksyun/ks3/exception/a;

    invoke-direct {v2, p1, p3, p4}, Lcom/ksyun/ks3/exception/a;-><init>(I[BLjava/lang/Throwable;)V

    if-nez p3, :cond_0

    const-string v4, ""

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ksyun/ks3/services/a/b;->onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public final onFinish()V
    .locals 0

    return-void
.end method

.method public final onProgress(II)V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/b;)V
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/ksyun/ks3/services/a/b;->parseXml([Lorg/apache/http/Header;[B)Lcom/ksyun/ks3/model/a/b;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ksyun/ks3/services/a/b;->onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/b;)V

    return-void
.end method
