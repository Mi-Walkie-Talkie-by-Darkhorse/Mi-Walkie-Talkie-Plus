.class public Lcom/huawei/hms/scankit/p/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/scankit/p/i;


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/J;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/J;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/e;->a:[B

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/scankit/p/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/scankit/p/e;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/huawei/hms/scankit/p/e;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/huawei/hms/scankit/p/e;->f:Ljava/util/List;

    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/e;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/e;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/scankit/p/ka;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    new-instance v0, Lcom/huawei/hms/scankit/p/h;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/e;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/e;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/e;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hms/scankit/p/h;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/huawei/hms/scankit/p/j;->a:Lcom/huawei/hms/scankit/p/j;

    .line 2
    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/j;->a(Lcom/huawei/hms/scankit/p/i;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "DataSendTask"

    const-string v1, "send data running"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/e;->a()Ljava/util/Map;

    move-result-object v1

    .line 1
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/e;->a:[B

    const-string v4, "POST"

    .line 2
    invoke-static {v2, v3, v1, v4}, Lcom/huawei/hms/scankit/p/W;->a(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/X;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/X;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/e;->b()V

    goto :goto_0

    :cond_0
    const-string v2, "events PostRequest sendevent TYPE : %s, TAG : %s, resultCode: %d ,reqID:"

    invoke-static {v2}, Lcom/huawei/hms/scankit/p/Oa;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/e;->e:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/e;->c:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/huawei/hms/scankit/p/T;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
