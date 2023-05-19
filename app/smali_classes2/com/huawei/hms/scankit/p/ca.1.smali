.class public Lcom/huawei/hms/scankit/p/ca;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/ca$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public volatile c:Z

.field public volatile d:J

.field public e:Lcom/huawei/hms/scankit/p/ca$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/ca;->a:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/ca;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/ca;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/ca;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ca;->e:Lcom/huawei/hms/scankit/p/ca$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ca;->e:Lcom/huawei/hms/scankit/p/ca$a;

    if-nez v0, :cond_0

    const-string v0, "SessionWrapper"

    const-string v1, "getSessionName(): session not prepared. onEvent() must be called first."

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/huawei/hms/scankit/p/ca$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ca;->e:Lcom/huawei/hms/scankit/p/ca$a;

    if-nez v0, :cond_0

    const-string v0, "SessionWrapper"

    const-string v1, "Session is first flush"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/hms/scankit/p/ca$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hms/scankit/p/ca$a;-><init>(Lcom/huawei/hms/scankit/p/ca;J)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ca;->e:Lcom/huawei/hms/scankit/p/ca$a;

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/ca$a;->a(J)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ca;->e:Lcom/huawei/hms/scankit/p/ca$a;

    if-nez v0, :cond_0

    const-string v0, "SessionWrapper"

    const-string v1, "isFirstEvent(): session not prepared. onEvent() must be called first."

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/huawei/hms/scankit/p/ca$a;->b:Z

    return v0
.end method
