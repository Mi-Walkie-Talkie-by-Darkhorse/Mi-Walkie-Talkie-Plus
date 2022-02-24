.class public final Lcom/sina/weibo/sdk/utils/AidTask$c;
.super Ljava/lang/Object;
.source "AidTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/AidTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "AidTask"

    const-string v2, "loadAidFromNet has error !!!"

    .line 1
    new-instance v3, Lcom/sina/weibo/sdk/utils/AidTask$c;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/utils/AidTask$c;-><init>()V

    .line 2
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    .line 3
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "error_code"

    .line 4
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "aid"

    .line 5
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/sina/weibo/sdk/utils/AidTask$c;->a:Ljava/lang/String;

    const-string p0, "sub"

    .line 6
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/sina/weibo/sdk/utils/AidTask$c;->b:Ljava/lang/String;

    return-object v3

    .line 7
    :cond_0
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p0, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {p0, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "loadAidFromNet JSONException Msg : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p0, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {p0, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a()Lcom/sina/weibo/sdk/utils/AidTask$c;
    .locals 2

    .line 11
    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask$c;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/utils/AidTask$c;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$c;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/utils/AidTask$c;->a:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$c;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/utils/AidTask$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$c;->a:Ljava/lang/String;

    return-object v0
.end method
