.class public Lcom/huawei/hms/scankit/p/qa;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/huawei/hms/scankit/p/F;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    new-instance v0, Lcom/huawei/hms/scankit/p/F;

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/F;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hms/scankit/p/B;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/F;)V

    return-void
.end method

.method private b(I)Lcom/huawei/hms/scankit/p/D;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/F;->d()Lcom/huawei/hms/scankit/p/D;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/F;->c()Lcom/huawei/hms/scankit/p/D;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/F;->a()Lcom/huawei/hms/scankit/p/D;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/F;->b()Lcom/huawei/hms/scankit/p/D;

    move-result-object p1

    return-object p1
.end method

.method private c(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "hmsSdk"

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    const-string v3, "_default_config_tag"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "verifyURL(): type: preins. Only default config can report Pre-install data."

    :goto_0
    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/qa;->b(I)Lcom/huawei/hms/scankit/p/D;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/D;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyURL(): URL check failed. type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "hmsSdk"

    const-string v2, "HiAnalyticsInstance.onReport() is execute.TAG: %s,TYPE: %d"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/scankit/p/T;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/pa;->a()Lcom/huawei/hms/scankit/p/pa;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/hms/scankit/p/pa;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "hmsSdk"

    const-string v2, "HiAnalyticsInstance.onEvent(int type, String eventId, Map<String, String> mapValue) is execute.TAG: %s,TYPE: %d"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/scankit/p/T;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/l;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ", TYPE: "

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/qa;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/huawei/hms/scankit/p/l;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p3, "onEvent() parameter mapValue will be cleared.TAG: "

    invoke-static {p3}, Lcom/huawei/hms/scankit/p/Oa;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/p/pa;->a()Lcom/huawei/hms/scankit/p/pa;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/huawei/hms/scankit/p/pa;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void

    :cond_2
    :goto_0
    const-string p2, "onEvent() parameters check fail. Nothing will be recorded.TAG: "

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/Oa;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/D;)V
    .locals 2

    const-string v0, "HiAnalyticsInstanceImpl.setMaintConf() is executed.TAG : "

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/Oa;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "HiAnalyticsInstanceImpl.setMaintConf(): config for maint is null!"

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/F;->a(Lcom/huawei/hms/scankit/p/D;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/F;->a(Lcom/huawei/hms/scankit/p/D;)V

    return-void
.end method

.method public b(Lcom/huawei/hms/scankit/p/D;)V
    .locals 2

    const-string v0, "HiAnalyticsInstanceImpl.setOperConf() is executed.TAG: "

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/Oa;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/qa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/F;->b(Lcom/huawei/hms/scankit/p/D;)V

    const-string p1, "HiAnalyticsInstanceImpl.setOperConf(): config for oper is null!"

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/qa;->b:Lcom/huawei/hms/scankit/p/F;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/F;->b(Lcom/huawei/hms/scankit/p/D;)V

    return-void
.end method
