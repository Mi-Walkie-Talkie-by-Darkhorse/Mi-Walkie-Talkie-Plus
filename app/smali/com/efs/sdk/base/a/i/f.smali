.class public final Lcom/efs/sdk/base/a/i/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/i/f$a;
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/a/i/c;

.field public b:Lcom/efs/sdk/base/a/d/a;

.field public c:Lcom/efs/sdk/base/a/i/d;

.field public d:Lcom/efs/sdk/base/a/i/g;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/efs/sdk/base/a/i/c;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/i/c;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    new-instance v0, Lcom/efs/sdk/base/a/i/d;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/i/d;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    new-instance v0, Lcom/efs/sdk/base/a/i/g;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/i/g;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/f;->d:Lcom/efs/sdk/base/a/i/g;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/a/i/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;
    .locals 3

    new-instance v0, Lcom/efs/sdk/base/a/i/b;

    iget-object v1, p0, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    iget-object v1, v1, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    const-string v2, "efs_core"

    invoke-direct {v0, v2, p1, v1}, Lcom/efs/sdk/base/a/i/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "cver"

    invoke-virtual {v0, p2, p1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-eqz v0, :cond_0

    const-string v1, "flow_limit"

    invoke-virtual {p0, v1, p1}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "flow_limit_type"

    invoke-virtual {p0, v0, p1}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p1, v0, p2}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/f;->d:Lcom/efs/sdk/base/a/i/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/efs/sdk/base/a/i/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
