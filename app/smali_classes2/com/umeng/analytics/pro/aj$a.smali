.class Lcom/umeng/analytics/pro/aj$a;
.super Lcom/umeng/analytics/pro/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/bz<",
        "Lcom/umeng/analytics/pro/aj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/aj$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/pro/aj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->k()V

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->G()V

    return-void

    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-short v0, v0, Lcom/umeng/analytics/pro/bk;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_1

    :pswitch_0
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/aj;->j:I

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->j(Z)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->i(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->h(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->g(Z)V

    goto/16 :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    :pswitch_4
    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/aj;->f:I

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->f(Z)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    :pswitch_5
    if-ne v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/aj;->e:I

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->e(Z)V

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    :pswitch_6
    if-ne v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/aj;->d:I

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->d(Z)V

    goto :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    :pswitch_7
    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->c(Z)V

    goto :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v3, :cond_c

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->b(Z)V

    goto :goto_1

    :cond_c
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    :pswitch_9
    if-ne v1, v3, :cond_d

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->a(Z)V

    goto :goto_1

    :cond_d
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    check-cast p2, Lcom/umeng/analytics/pro/aj;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/aj$a;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->G()V

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->H()Lcom/umeng/analytics/pro/bu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->I()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->J()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    :cond_1
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->K()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->L()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget v0, p2, Lcom/umeng/analytics/pro/aj;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->M()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget v0, p2, Lcom/umeng/analytics/pro/aj;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->N()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget v0, p2, Lcom/umeng/analytics/pro/aj;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->O()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    :cond_3
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->P()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    :cond_4
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->Q()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    :cond_5
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->F()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/umeng/analytics/pro/aj;->R()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    iget p2, p2, Lcom/umeng/analytics/pro/aj;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bp;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    :cond_6
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    check-cast p2, Lcom/umeng/analytics/pro/aj;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/aj$a;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V

    return-void
.end method
