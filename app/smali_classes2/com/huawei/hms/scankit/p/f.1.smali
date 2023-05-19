.class public Lcom/huawei/hms/scankit/p/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/scankit/p/i;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lorg/json/JSONObject;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/f;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/f;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/f;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/huawei/hms/scankit/p/f;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/scankit/p/f;->e:Ljava/lang/String;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/f;->f:Ljava/lang/String;

    const-string p1, "oper"

    invoke-static {p3, p1}, Lcom/huawei/hms/scankit/p/a;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/huawei/hms/scankit/p/ba;->a()Lcom/huawei/hms/scankit/p/ba;

    move-result-object p1

    invoke-virtual {p1, p3, p5, p6}, Lcom/huawei/hms/scankit/p/ba;->a(Ljava/lang/String;J)Lcom/huawei/hms/scankit/p/ca;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ca;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/f;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ca;->b()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/f;->h:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "EventRecordTask"

    const-string v1, "Begin to run EventRecordTask..."

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->h()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/f;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/f;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/c;->n(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/f;->a:Landroid/content/Context;

    const/high16 v4, 0x100000

    mul-int v1, v1, v4

    const-string v4, "stat_v2_1"

    invoke-static {v3, v4, v1}, Lcom/huawei/hms/scankit/p/k;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_0

    const-string v0, "hmsSdk"

    const-string v1, "stat sp file reach max limited size, discard new event"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/huawei/hms/scankit/p/d;->a()Lcom/huawei/hms/scankit/p/d;

    move-result-object v0

    const-string v1, "alltype"

    .line 2
    invoke-virtual {v0, v3, v1}, Lcom/huawei/hms/scankit/p/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/huawei/hms/scankit/p/J;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/J;-><init>()V

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/huawei/hms/scankit/p/J;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/f;->c:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huawei/hms/scankit/p/J;->c(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/huawei/hms/scankit/p/J;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/huawei/hms/scankit/p/J;->d(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/huawei/hms/scankit/p/J;->e(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/f;->h:Ljava/lang/Boolean;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v5}, Lcom/huawei/hms/scankit/p/J;->f(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/J;->d()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/f;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/scankit/p/f;->e:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/huawei/hms/scankit/p/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/hms/scankit/p/f;->a:Landroid/content/Context;

    invoke-static {v6, v4, v5, v3}, Lcom/huawei/hms/scankit/p/da;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "Cached data corrupted: stat_v2_1"

    invoke-static {v0, v3}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/f;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v5, v1}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit16 v2, v2, 0x400

    if-le v0, v2, :cond_2

    .line 3
    invoke-static {}, Lcom/huawei/hms/scankit/p/d;->a()Lcom/huawei/hms/scankit/p/d;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/f;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/scankit/p/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_1
    const-string v1, "eventRecord toJson error! The record failed."

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
