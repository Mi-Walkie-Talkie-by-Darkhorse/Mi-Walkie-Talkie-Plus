.class public final Lcom/sina/weibo/sdk/utils/AidTask$a;
.super Ljava/lang/Object;
.source "AidTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/AidTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask$a;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/utils/AidTask$a;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "AidTask"

    const-string v1, "loadAidFromNet has error !!!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v1, "loadAidFromNet has error !!!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AidTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadAidFromNet JSONException Msg : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v1, "loadAidFromNet has error !!!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    const-string v2, "aid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sina/weibo/sdk/utils/AidTask$a;->a:Ljava/lang/String;

    const-string v2, "sub"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/utils/AidTask$a;->b:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Lcom/sina/weibo/sdk/utils/AidTask$a;
    .locals 2

    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask$a;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/utils/AidTask$a;-><init>()V

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/utils/AidTask$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/utils/AidTask$a;->b:Ljava/lang/String;

    return-object v0
.end method
