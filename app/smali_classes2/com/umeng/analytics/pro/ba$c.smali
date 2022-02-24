.class Lcom/umeng/analytics/pro/ba$c;
.super Lcom/umeng/analytics/pro/ca;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/ca<",
        "Lcom/umeng/analytics/pro/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/ba$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ba$c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/analytics/pro/ba;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/ba$c;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput-object v0, p2, Lcom/umeng/analytics/pro/ba;->b:Lcom/umeng/analytics/pro/ax;

    .line 3
    iput-object v0, p2, Lcom/umeng/analytics/pro/ba;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->v()S

    move-result v0

    .line 5
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/ba;->a(Lcom/umeng/analytics/pro/bp;S)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/pro/ba;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/ba;->a(S)Lcom/umeng/analytics/pro/ax;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/pro/ba;->b:Lcom/umeng/analytics/pro/ax;

    :cond_0
    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/analytics/pro/ba;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/ba$c;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ba;->a()Lcom/umeng/analytics/pro/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ba;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p2, Lcom/umeng/analytics/pro/ba;->b:Lcom/umeng/analytics/pro/ax;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/ax;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(S)V

    .line 4
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/ba;->b(Lcom/umeng/analytics/pro/bp;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1
.end method
