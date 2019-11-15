.class public abstract Lcom/ksyun/ks3/services/a/d;
.super Lcom/ksyun/ks3/services/a/c;
.source "ListPartsResponseHandler.java"


# static fields
.field private static RESPONSE_TAG_PRIFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ns2:"

    sput-object v0, Lcom/ksyun/ks3/services/a/d;->RESPONSE_TAG_PRIFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/c;-><init>()V

    return-void
.end method

.method private parseXml([Lorg/apache/http/Header;[B)Lcom/ksyun/ks3/model/a/c;
    .locals 13

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "UTF-8"

    invoke-interface {v8, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    move v6, v0

    move-object v7, v3

    move-object v3, v5

    move-object v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v1, v6, :cond_11

    :try_start_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-object v5, Lcom/ksyun/ks3/services/a/d;->RESPONSE_TAG_PRIFIX:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    move-object v5, v1

    :goto_1
    packed-switch v6, :pswitch_data_0

    move-object v5, v3

    move-object v1, v0

    move-object v3, v7

    :goto_2
    :try_start_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    move v6, v0

    move-object v7, v3

    move-object v3, v5

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    move-object v5, v3

    move-object v1, v0

    move-object v3, v7

    goto :goto_2

    :pswitch_1
    :try_start_3
    const-string v1, "ListPartsResult"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lcom/ksyun/ks3/model/a/c;

    invoke-direct {v1}, Lcom/ksyun/ks3/model/a/c;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    const-string v0, "Bucket"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ksyun/ks3/model/a/c;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Key"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ksyun/ks3/model/a/c;->b(Ljava/lang/String;)V

    :cond_1
    const-string v0, "UploadId"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ksyun/ks3/model/a/c;->c(Ljava/lang/String;)V

    :cond_2
    const-string v0, "Initiator"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/ksyun/ks3/model/Owner;

    invoke-direct {v0}, Lcom/ksyun/ks3/model/Owner;-><init>()V

    move-object v4, v0

    :cond_3
    const-string v0, "Owner"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v2, 0x1

    new-instance v0, Lcom/ksyun/ks3/model/Owner;

    invoke-direct {v0}, Lcom/ksyun/ks3/model/Owner;-><init>()V

    :goto_4
    const-string v3, "ID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_10

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ksyun/ks3/model/Owner;->a(Ljava/lang/String;)V

    :cond_4
    :goto_5
    const-string v3, "DisplayName"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_12

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ksyun/ks3/model/Owner;->b(Ljava/lang/String;)V

    :cond_5
    :goto_6
    const-string v3, "StorageClass"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_6
    const-string v3, "PartNumberMarker"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ksyun/ks3/model/a/c;->d(Ljava/lang/String;)V

    :cond_7
    const-string v3, "NextPartNumberMarker"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ksyun/ks3/model/a/c;->e(Ljava/lang/String;)V

    :cond_8
    const-string v3, "MaxParts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ksyun/ks3/model/a/c;->f(Ljava/lang/String;)V

    :cond_9
    const-string v3, "IsTruncated"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ksyun/ks3/model/a/c;->a(Z)V

    :cond_a
    const-string v3, "Part"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v7, Lcom/ksyun/ks3/model/c;

    invoke-direct {v7}, Lcom/ksyun/ks3/model/c;-><init>()V

    :cond_b
    const-string v3, "PartNumber"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/ksyun/ks3/model/c;->a(I)V

    :cond_c
    const-string v3, "LastModified"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {v3}, Lcom/ksyun/ks3/a/b;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/ksyun/ks3/model/c;->a(Ljava/util/Date;)V

    :cond_d
    const-string v3, "ETag"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/ksyun/ks3/model/c;->a(Ljava/lang/String;)V

    :cond_e
    const-string v3, "Size"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/ksyun/ks3/model/c;->a(J)V

    :cond_f
    const-string v3, "Encoding-Type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ksyun/ks3/model/a/c;->g(Ljava/lang/String;)V

    move-object v3, v7

    move-object v5, v0

    goto/16 :goto_2

    :cond_10
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ksyun/ks3/model/Owner;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_7
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_11
    :goto_8
    return-object v0

    :cond_12
    :try_start_5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ksyun/ks3/model/Owner;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_9
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :pswitch_2
    :try_start_6
    const-string v1, "ListPartsResult"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_13
    const-string v1, "Initiator"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v4}, Lcom/ksyun/ks3/model/a/c;->a(Lcom/ksyun/ks3/model/Owner;)V

    :cond_14
    const-string v1, "Owner"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v3}, Lcom/ksyun/ks3/model/a/c;->b(Lcom/ksyun/ks3/model/Owner;)V

    :goto_a
    const-string v2, "Part"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/a/c;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move v2, v1

    move-object v5, v3

    move-object v3, v7

    move-object v1, v0

    goto/16 :goto_2

    :pswitch_3
    move-object v5, v3

    move-object v1, v0

    move-object v3, v7

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_b
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_7

    :cond_15
    move v2, v1

    move-object v5, v3

    move-object v3, v7

    move-object v1, v0

    goto/16 :goto_2

    :cond_16
    move v1, v2

    goto :goto_a

    :cond_17
    move-object v0, v3

    goto/16 :goto_4

    :cond_18
    move-object v1, v0

    goto/16 :goto_3

    :cond_19
    move-object v5, v1

    goto/16 :goto_1

    :cond_1a
    move-object v3, v7

    move-object v5, v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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

    invoke-virtual/range {v0 .. v5}, Lcom/ksyun/ks3/services/a/d;->onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

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

.method public abstract onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/c;)V
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/ksyun/ks3/services/a/d;->parseXml([Lorg/apache/http/Header;[B)Lcom/ksyun/ks3/model/a/c;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ksyun/ks3/services/a/d;->onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/c;)V

    return-void
.end method
