.class public Lcom/huawei/hms/scankit/p/ta;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/huawei/hms/scankit/p/D;

.field public b:Lcom/huawei/hms/scankit/p/D;

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/ta;->c:Landroid/content/Context;

    :cond_0
    new-instance p1, Lcom/huawei/hms/scankit/p/D;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/p/D;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/ta;->a:Lcom/huawei/hms/scankit/p/D;

    new-instance p1, Lcom/huawei/hms/scankit/p/D;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/p/D;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/ta;->b:Lcom/huawei/hms/scankit/p/D;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lcom/huawei/hms/scankit/p/ta;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder.setCollectURL(int type,String collectURL) is execute.TYPE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, ""

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string p1, "Builder.setCollectURL(int type,String collectURL): invalid type!"

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/ta;->b:Lcom/huawei/hms/scankit/p/D;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/ta;->a:Lcom/huawei/hms/scankit/p/D;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/D;->b(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public a(Z)Lcom/huawei/hms/scankit/p/ta;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setEnableImei(boolean isReportAndroidImei) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ta;->a:Lcom/huawei/hms/scankit/p/D;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/D;->j()Lcom/huawei/hms/scankit/p/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/C;->a(Z)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ta;->b:Lcom/huawei/hms/scankit/p/D;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/D;->j()Lcom/huawei/hms/scankit/p/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/C;->a(Z)V

    return-object p0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ta;->c:Landroid/content/Context;

    const-string v1, "hmsSdk"

    if-nez v0, :cond_0

    const-string v0, "analyticsConf create(): context is null,create failed!"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/T;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Builder.create() is execute."

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/hms/scankit/p/qa;

    const-string v1, "_hms_config_tag"

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/qa;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/hms/scankit/p/D;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/ta;->a:Lcom/huawei/hms/scankit/p/D;

    invoke-direct {v1, v2}, Lcom/huawei/hms/scankit/p/D;-><init>(Lcom/huawei/hms/scankit/p/D;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/qa;->b(Lcom/huawei/hms/scankit/p/D;)V

    new-instance v1, Lcom/huawei/hms/scankit/p/D;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/ta;->b:Lcom/huawei/hms/scankit/p/D;

    invoke-direct {v1, v2}, Lcom/huawei/hms/scankit/p/D;-><init>(Lcom/huawei/hms/scankit/p/D;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/qa;->a(Lcom/huawei/hms/scankit/p/D;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/oa;->a()Lcom/huawei/hms/scankit/p/oa;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/ta;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/hms/scankit/p/oa;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/pa;->a()Lcom/huawei/hms/scankit/p/pa;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/ta;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/hms/scankit/p/pa;->a(Landroid/content/Context;)V

    .line 1
    sget-object v1, Lcom/huawei/hms/scankit/p/va;->a:Lcom/huawei/hms/scankit/p/va;

    .line 2
    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/va;->a(Lcom/huawei/hms/scankit/p/qa;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/oa;->a()Lcom/huawei/hms/scankit/p/oa;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/ta;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/oa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)Lcom/huawei/hms/scankit/p/ta;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setEnableUUID() is executed."

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ta;->a:Lcom/huawei/hms/scankit/p/D;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/D;->c(Z)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ta;->b:Lcom/huawei/hms/scankit/p/D;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/D;->c(Z)V

    return-object p0
.end method
