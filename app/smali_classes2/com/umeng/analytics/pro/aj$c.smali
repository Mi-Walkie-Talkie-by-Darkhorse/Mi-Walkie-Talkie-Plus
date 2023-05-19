.class Lcom/umeng/analytics/pro/aj$c;
.super Lcom/umeng/analytics/pro/ca;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/ca<",
        "Lcom/umeng/analytics/pro/aj;",
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

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/aj$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aj$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/umeng/analytics/pro/bv;

    .line 3
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bj;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bj;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bj;->a(Ljava/lang/String;)V

    .line 6
    iget v0, p2, Lcom/umeng/analytics/pro/aj;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bj;->a(I)V

    .line 7
    iget v0, p2, Lcom/umeng/analytics/pro/aj;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bj;->a(I)V

    .line 8
    iget v0, p2, Lcom/umeng/analytics/pro/aj;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bj;->a(I)V

    .line 9
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bj;->a(Ljava/nio/ByteBuffer;)V

    .line 10
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bj;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bj;->a(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 13
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bv;->a(Ljava/util/BitSet;I)V

    .line 16
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget p2, p2, Lcom/umeng/analytics/pro/aj;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bj;->a(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/analytics/pro/aj;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/aj$c;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/umeng/analytics/pro/bv;

    .line 3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->a(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->b(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->c(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/pro/aj;->d:I

    .line 10
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->d(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/pro/aj;->e:I

    .line 12
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->e(Z)V

    .line 13
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/analytics/pro/aj;->f:I

    .line 14
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->f(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->A()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->g(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    .line 18
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->h(Z)V

    .line 19
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    .line 20
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->i(Z)V

    .line 21
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bv;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bj;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/analytics/pro/aj;->j:I

    .line 24
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/aj;->j(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/analytics/pro/aj;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/aj$c;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V

    return-void
.end method
