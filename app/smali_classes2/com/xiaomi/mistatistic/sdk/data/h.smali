.class public Lcom/xiaomi/mistatistic/sdk/data/h;
.super Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;
.source "CustomStringPropertyEvent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/xiaomi/mistatistic/sdk/data/h;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/h;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->mTS:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    const-string v1, "property"

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public valueToJSon()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "category"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "key"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "property"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
