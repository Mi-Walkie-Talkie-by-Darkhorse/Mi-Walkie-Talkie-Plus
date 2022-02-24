.class Lcom/umeng/analytics/pro/ba$a;
.super Lcom/umeng/analytics/pro/bz;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/bz<",
        "Lcom/umeng/analytics/pro/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/ba$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ba$a;-><init>()V

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

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/ba$a;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V
    .locals 2
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
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 5
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/ba;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/bk;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/ba;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 7
    iget-short v0, v0, Lcom/umeng/analytics/pro/bk;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/ba;->a(S)Lcom/umeng/analytics/pro/ax;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/ba;->b:Lcom/umeng/analytics/pro/ax;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->m()V

    .line 9
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    .line 10
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->k()V

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

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/ba$a;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V

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
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ba;->d()Lcom/umeng/analytics/pro/bu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    .line 4
    iget-object v0, p2, Lcom/umeng/analytics/pro/ba;->b:Lcom/umeng/analytics/pro/ax;

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/ba;->c(Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/ba;->a(Lcom/umeng/analytics/pro/bp;)V

    .line 6
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 7
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    .line 8
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1
.end method
