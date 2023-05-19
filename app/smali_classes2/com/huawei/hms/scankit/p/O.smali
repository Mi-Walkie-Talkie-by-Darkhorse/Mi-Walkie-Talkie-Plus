.class public Lcom/huawei/hms/scankit/p/O;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/J;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/J;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/O;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/O;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/scankit/p/O;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/scankit/p/O;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/huawei/hms/scankit/p/O;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "DataReportHandler"

    const-string p2, "No report address,TAG : %s,TYPE: %s "

    invoke-static {p1, p2, v0}, Lcom/huawei/hms/scankit/p/T;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const-string p1, "oper"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "{url}"

    if-eqz p1, :cond_1

    const-string p1, "{url}/common/hmshioperqrt"

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string p1, "maint"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "{url}/common/hmshimaintqrt"

    goto :goto_0

    :cond_2
    const-string p1, "diffprivacy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "{url}/common/common2"

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2
.end method

.method private a(Lcom/huawei/hms/scankit/p/K;)[B
    .locals 3

    const-string v0, "DataReportHandler"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/K;->a()Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-string p1, "uploadEvents is null"

    :try_start_1
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "UTF-8"

    :try_start_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/m;->a([B)[B

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    const-string p1, "sendData(): getBytes - Unsupported coding format!!"

    goto :goto_0

    :catch_1
    const-string p1, "uploadEvents to json error"

    :goto_0
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B

    return-object p1
.end method

.method private b()Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/O;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/J;

    :try_start_0
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/J;->d()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    const-string v2, "DataReportHandler"

    const-string v3, "handleEvents: json error,Abandon this data"

    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "backup_event"

    const/high16 v2, 0x500000

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/scankit/p/k;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "DataReportHandler"

    if-eqz v0, :cond_0

    const-string v0, "backup file reach max limited size, discard new event "

    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/O;->b()Lorg/json/JSONArray;

    move-result-object v0

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/O;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/O;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/O;->e:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/huawei/hms/scankit/p/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update data cached into backup,spKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v3, v0}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()Lcom/huawei/hms/scankit/p/K;
    .locals 5

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/O;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/O;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/O;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/O;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/O;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hms/scankit/p/ka;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/K;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/O;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/O;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/huawei/hms/scankit/p/O;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DataReportHandler"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/O;->b:Ljava/lang/String;

    const-string v2, "preins"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "collectUrl is empty"

    :goto_0
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/O;->a:Ljava/lang/String;

    const-string v2, "_hms_config_tag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/O;->a:Ljava/lang/String;

    const-string v2, "_openness_config_tag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/O;->c()V

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/O;->d()Lcom/huawei/hms/scankit/p/K;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/O;->a(Lcom/huawei/hms/scankit/p/K;)[B

    move-result-object v3

    array-length v0, v3

    if-nez v0, :cond_2

    const-string v0, "request body is empty"

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/huawei/hms/scankit/p/e;

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/O;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/scankit/p/O;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/hms/scankit/p/O;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/huawei/hms/scankit/p/O;->d:Ljava/util/List;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hms/scankit/p/e;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1
    sget-object v1, Lcom/huawei/hms/scankit/p/j;->b:Lcom/huawei/hms/scankit/p/j;

    .line 2
    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/j;->a(Lcom/huawei/hms/scankit/p/i;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/huawei/hms/scankit/p/h;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/O;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/O;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/O;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/O;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hms/scankit/p/h;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/huawei/hms/scankit/p/j;->a:Lcom/huawei/hms/scankit/p/j;

    .line 4
    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/j;->a(Lcom/huawei/hms/scankit/p/i;)V

    :goto_1
    return-void
.end method
