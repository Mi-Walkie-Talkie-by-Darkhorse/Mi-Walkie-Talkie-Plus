.class Lio/agora/rtc/internal/a$e;
.super Lio/agora/rtc/internal/a$c;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic b:Lio/agora/rtc/internal/a;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/a;)V
    .locals 3

    iput-object p1, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/a$c;-><init>(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$1;)V

    invoke-static {p1}, Lio/agora/rtc/internal/a;->j(Lio/agora/rtc/internal/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/agora/rtc/internal/a;->f(Lio/agora/rtc/internal/a;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lio/agora/rtc/internal/a;->k(Lio/agora/rtc/internal/a;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lio/agora/rtc/internal/a;->l(Lio/agora/rtc/internal/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/agora/rtc/internal/a;->f(Lio/agora/rtc/internal/a;I)I

    :cond_0
    :goto_0
    invoke-static {p1}, Lio/agora/rtc/internal/a;->m(Lio/agora/rtc/internal/a;)V

    const-string v0, "AudioRoute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitor start: default routing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtc/internal/a;->f(Lio/agora/rtc/internal/a;)I

    move-result v2

    invoke-static {p1, v2}, Lio/agora/rtc/internal/a;->g(Lio/agora/rtc/internal/a;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current routing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/rtc/internal/a;->n(Lio/agora/rtc/internal/a;)I

    move-result v2

    invoke-static {p1, v2}, Lio/agora/rtc/internal/a;->g(Lio/agora/rtc/internal/a;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lio/agora/rtc/internal/a;->f(Lio/agora/rtc/internal/a;I)I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(II)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "AudioRoute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartState: onEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/a$c;->a(II)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v2, p2}, Lio/agora/rtc/internal/a;->c(Lio/agora/rtc/internal/a;I)I

    iget-object v2, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    if-ltz p2, :cond_1

    :goto_1
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->a(Lio/agora/rtc/internal/a;Z)Z

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->o(Lio/agora/rtc/internal/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->p(Lio/agora/rtc/internal/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->q(Lio/agora/rtc/internal/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->n(Lio/agora/rtc/internal/a;)I

    move-result v0

    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0, p2}, Lio/agora/rtc/internal/a;->k(Lio/agora/rtc/internal/a;I)I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->m(Lio/agora/rtc/internal/a;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0, p2}, Lio/agora/rtc/internal/a;->h(Lio/agora/rtc/internal/a;I)I

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->o(Lio/agora/rtc/internal/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->m(Lio/agora/rtc/internal/a;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0, p2}, Lio/agora/rtc/internal/a;->e(Lio/agora/rtc/internal/a;I)I

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->o(Lio/agora/rtc/internal/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    iget-object v1, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v1}, Lio/agora/rtc/internal/a;->n(Lio/agora/rtc/internal/a;)I

    move-result v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/a;->l(Lio/agora/rtc/internal/a;I)I

    goto :goto_0

    :sswitch_3
    if-nez p2, :cond_3

    iget-object v2, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v2}, Lio/agora/rtc/internal/a;->p(Lio/agora/rtc/internal/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    if-ne p2, v0, :cond_4

    :goto_2
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->b(Lio/agora/rtc/internal/a;Z)Z

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->o(Lio/agora/rtc/internal/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->p(Lio/agora/rtc/internal/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lio/agora/rtc/internal/a;->k(Lio/agora/rtc/internal/a;I)I

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->m(Lio/agora/rtc/internal/a;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v3, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    if-ne p2, v0, :cond_6

    move v2, v0

    :goto_3
    invoke-static {v3, v2}, Lio/agora/rtc/internal/a;->m(Lio/agora/rtc/internal/a;I)I

    iget-object v2, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v2}, Lio/agora/rtc/internal/a;->o(Lio/agora/rtc/internal/a;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v2}, Lio/agora/rtc/internal/a;->h(Lio/agora/rtc/internal/a;)Landroid/media/AudioManager;

    iget-object v2, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    if-ne p2, v0, :cond_7

    :goto_4
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->h(Lio/agora/rtc/internal/a;Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :sswitch_5
    const-string v2, "AudioRoute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    if-lez p2, :cond_8

    :goto_5
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->g(Lio/agora/rtc/internal/a;Z)Z

    if-nez p2, :cond_9

    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->m(Lio/agora/rtc/internal/a;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lio/agora/rtc/internal/a$e;->b:Lio/agora/rtc/internal/a;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/a;->i(Lio/agora/rtc/internal/a;I)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0xb -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_5
    .end sparse-switch
.end method
