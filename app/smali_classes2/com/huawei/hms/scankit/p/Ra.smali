.class public Lcom/huawei/hms/scankit/p/Ra;
.super Ljava/lang/Object;
.source "HianalyticsLogExecutor.java"


# static fields
.field public static volatile a:Lcom/huawei/hms/scankit/p/Ra;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/Ra;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Ra;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Ra;->a:Lcom/huawei/hms/scankit/p/Ra;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 13
    invoke-static {}, Lcom/huawei/hms/scankit/p/sa;->b()V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 2
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

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mapValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HaLogExecutor"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/Qa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p1, p2, p3}, Lcom/huawei/hms/scankit/p/sa;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "HaLogExecutor"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 2
    invoke-static {v2}, Lcom/huawei/hms/scankit/p/ua;->a(I)V

    .line 3
    new-instance v2, Lcom/huawei/hms/scankit/p/ta;

    invoke-direct {v2, p1}, Lcom/huawei/hms/scankit/p/ta;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v2, v1}, Lcom/huawei/hms/scankit/p/ta;->a(Z)Lcom/huawei/hms/scankit/p/ta;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/ta;->b(Z)Lcom/huawei/hms/scankit/p/ta;

    move-result-object p1

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/huawei/hms/scankit/p/ta;->a(ILjava/lang/String;)Lcom/huawei/hms/scankit/p/ta;

    move-result-object p1

    .line 7
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/huawei/hms/scankit/p/ta;->a(ILjava/lang/String;)Lcom/huawei/hms/scankit/p/ta;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ta;->a()V

    const-string p1, "HianalyticsLogExecutor executeInitialize init success"

    .line 9
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/p/Qa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    :goto_0
    const-string p1, "HianalyticsLogExecutor executeInitialize failed, context or haServiceUrls is empty."

    .line 10
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
