.class public Lcom/xiaomi/network/AccessHistory;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/network/AccessHistory;-><init>(IJJLjava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(IJJLjava/lang/Exception;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/network/AccessHistory;->a:I

    iput-wide p2, p0, Lcom/xiaomi/network/AccessHistory;->b:J

    iput-wide p4, p0, Lcom/xiaomi/network/AccessHistory;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/network/AccessHistory;->c:J

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/network/AccessHistory;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/network/AccessHistory;->a:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/xiaomi/network/AccessHistory;
    .locals 2

    const-string v0, "cost"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/network/AccessHistory;->b:J

    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/network/AccessHistory;->e:J

    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/network/AccessHistory;->c:J

    const-string v0, "wt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/network/AccessHistory;->a:I

    const-string v0, "expt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/network/AccessHistory;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cost"

    iget-wide v2, p0, Lcom/xiaomi/network/AccessHistory;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "size"

    iget-wide v2, p0, Lcom/xiaomi/network/AccessHistory;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ts"

    iget-wide v2, p0, Lcom/xiaomi/network/AccessHistory;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "wt"

    iget v2, p0, Lcom/xiaomi/network/AccessHistory;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "expt"

    iget-object v2, p0, Lcom/xiaomi/network/AccessHistory;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
