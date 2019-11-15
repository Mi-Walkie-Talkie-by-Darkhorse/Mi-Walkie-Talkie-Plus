.class public Lcom/ksyun/ks3/exception/a;
.super Ljava/lang/Object;
.source "Ks3Error.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/ksyun/ks3/exception/b;


# direct methods
.method public constructor <init>(I[BLjava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const-string v0, "ks3_sdk_android"

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, p2}, Lcom/ksyun/ks3/exception/a;->a([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/ksyun/ks3/exception/a;->a(ILjava/lang/Throwable;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/ks3/exception/a;->a:I

    iget-object v0, p0, Lcom/ksyun/ks3/exception/a;->c:Lcom/ksyun/ks3/exception/b;

    invoke-virtual {v0}, Lcom/ksyun/ks3/exception/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/exception/a;->b:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-string v0, "ks3_sdk_android"

    const-string v1, "response string is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "ks3_sdk_android"

    const-string v1, "Parse Ks3Error Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(ILjava/lang/Throwable;)I
    .locals 2

    iget-object v0, p0, Lcom/ksyun/ks3/exception/a;->c:Lcom/ksyun/ks3/exception/b;

    invoke-virtual {v0}, Lcom/ksyun/ks3/exception/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :sswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_1
    const-string v1, "BadDigest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "InvalidACLString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "InvalidAuthorizationString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "InvalidBucketName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v1, "InvalidDateFormat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const-string v1, "InvalidDigest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const-string v1, "InvalidEncryptionAlgorithm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const-string v1, "InvalidHostHeader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    const-string v1, "InvalidParameter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    const-string v1, "InvalidPath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    const-string v1, "InvalidQueryString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    :cond_b
    const-string v1, "MetadataTooLarge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v0, 0xb

    goto :goto_0

    :cond_c
    const-string v1, "MissingDateHeader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_d
    const-string v1, "MissingHostHeader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_e
    const-string v1, "TooManyBuckets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_f
    const-string v1, "BadParams"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_10
    const-string v1, "ImageTypeNotSupport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_11
    const-string v1, "MissingFormArgs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_12
    const-string v1, "ContentRangeError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_13
    const-string v1, "ContentLengthOutOfRange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_14
    const-string v1, "PolicyError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_15
    const-string v1, "ExpirationError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_16
    const-string v1, "FormUnmatchPolicy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "AccessDenied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_17
    const-string v1, "InvalidAccessKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_18
    const-string v1, "RequestTimeTooSkewed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x19

    goto/16 :goto_0

    :cond_19
    const-string v1, "SignatureDoesNotMatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_1a
    const-string v1, "URLExpired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "NoSuchBucket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_1b
    const-string v1, "NoSuchKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "MethodNotAllowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "BucketAlreadyExists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v0, 0x1f

    goto/16 :goto_0

    :cond_1c
    const-string v1, "BucketAlreadyOwnedByYou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v0, 0x20

    goto/16 :goto_0

    :cond_1d
    const-string v1, "BucketNotEmpty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "InvalidRange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "InternalError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "NotImplemented"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x190 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x195 -> :sswitch_4
        0x199 -> :sswitch_5
        0x1a0 -> :sswitch_6
        0x1f4 -> :sswitch_7
        0x1f5 -> :sswitch_8
    .end sparse-switch
.end method

.method private a([B)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    if-eq v0, v2, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/ksyun/ks3/exception/b;

    invoke-direct {v2}, Lcom/ksyun/ks3/exception/b;-><init>()V

    iput-object v2, p0, Lcom/ksyun/ks3/exception/a;->c:Lcom/ksyun/ks3/exception/b;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v1

    :cond_1
    :goto_2
    return v0

    :pswitch_2
    :try_start_1
    const-string v2, "Code"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ksyun/ks3/exception/a;->c:Lcom/ksyun/ks3/exception/b;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ksyun/ks3/exception/b;->a(Ljava/lang/String;)V

    :cond_2
    const-string v2, "Message"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ksyun/ks3/exception/a;->c:Lcom/ksyun/ks3/exception/b;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ksyun/ks3/exception/b;->b(Ljava/lang/String;)V

    :cond_3
    const-string v2, "Resource"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ksyun/ks3/exception/a;->c:Lcom/ksyun/ks3/exception/b;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ksyun/ks3/exception/b;->c(Ljava/lang/String;)V

    :cond_4
    const-string v2, "RequestId"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ksyun/ks3/exception/a;->c:Lcom/ksyun/ks3/exception/b;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ksyun/ks3/exception/b;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ksyun/ks3/exception/a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/exception/a;->b:Ljava/lang/String;

    return-object v0
.end method
