.class public Lcom/mi/mimsgsdk/upload/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.java"


# static fields
.field private static final FEED_BACK_URL:Ljava/lang/String; = "http://dzb.g.mi.com/vuf.do?"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/upload/UploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/upload/UploadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/upload/UploadTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;)Z
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/upload/UploadTask;->parseResult(Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;)Z

    move-result v0

    return v0
.end method

.method public static notifyServerUploadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    new-instance v0, Lcom/mi/mimsgsdk/upload/UploadTask$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/mi/mimsgsdk/upload/UploadTask$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/e/e;->b()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/d;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/upload/UploadTask$1;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/upload/UploadTask$1;-><init>()V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/e;)Lrx/f;

    return-void
.end method

.method private static parseResult(Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "body"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ok"

    const-string v4, "body"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadTask;->TAG:Ljava/lang/String;

    const-string v3, "parse json fail"

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
