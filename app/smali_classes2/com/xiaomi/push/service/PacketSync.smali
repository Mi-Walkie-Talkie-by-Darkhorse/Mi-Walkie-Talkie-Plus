.class public Lcom/xiaomi/push/service/PacketSync;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/PacketSync$PacketReceiveHandler;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method private a(Lcom/xiaomi/smack/packet/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/smack/b;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/xiaomi/network/Fallback;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_0
    return-void
.end method

.method private b(Lcom/xiaomi/smack/packet/d;)V
    .locals 7

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/am;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/am$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v1, Lcom/xiaomi/push/service/am$b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/util/g;->a(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/util/g;->a(Landroid/content/Context;Ljava/lang/String;JZJ)V

    :cond_0
    return-void
.end method

.method private c(Lcom/xiaomi/slim/b;)V
    .locals 7

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/push/service/am;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/am$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v1, Lcom/xiaomi/push/service/am$b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->l()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/util/g;->a(Landroid/content/Context;Ljava/lang/String;JZJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/slim/b;)V
    .locals 3

    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->c()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->c(Lcom/xiaomi/slim/b;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->b(Lcom/xiaomi/slim/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Blob chid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packetid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/smack/packet/d;)V
    .locals 12

    const/4 v2, 0x3

    const-string v0, "5"

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->b(Lcom/xiaomi/smack/packet/d;)V

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v7, "1"

    invoke-virtual {p1, v7}, Lcom/xiaomi/smack/packet/d;->l(Ljava/lang/String;)V

    :cond_1
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received wrong packet with chid = 0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_2
    instance-of v0, p1, Lcom/xiaomi/smack/packet/b;

    if-eqz v0, :cond_5

    const-string v0, "kick"

    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/d;->p(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->m()Ljava/lang/String;

    move-result-object v8

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kicked by server, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const-string v0, "wait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/xiaomi/push/service/am;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/am$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/am$b;)V

    sget-object v1, Lcom/xiaomi/push/service/am$c;->a:Lcom/xiaomi/push/service/am$c;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$c;IILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v6, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    move v9, v2

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/xiaomi/push/service/am;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/xiaomi/smack/packet/c;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/smack/packet/c;

    const-string v1, "redir"

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "hosts"

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/packet/c;->p(Ljava/lang/String;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/PacketSync;->a(Lcom/xiaomi/smack/packet/a;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->e()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1, v7, p1}, Lcom/xiaomi/push/service/b;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/smack/packet/d;)V

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/slim/b;)V
    .locals 11

    const/4 v3, 0x7

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "SECMSG"

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->d()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->e()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1, v6, p1}, Lcom/xiaomi/push/service/b;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/slim/b;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "PING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->k()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/xiaomi/push/protobuf/b$j;->b([B)Lcom/xiaomi/push/protobuf/b$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$j;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/push/service/av;->a()Lcom/xiaomi/push/service/av;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$j;->g()Lcom/xiaomi/push/protobuf/b$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/av;->a(Lcom/xiaomi/push/protobuf/b$b;)V

    :cond_1
    const-string v0, "1"

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->a()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/stats/h;->b()V

    goto :goto_0

    :cond_3
    const-string v1, "SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "CONF"

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->k()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/protobuf/b$b;->b([B)Lcom/xiaomi/push/protobuf/b$b;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/av;->a()Lcom/xiaomi/push/service/av;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/av;->a(Lcom/xiaomi/push/protobuf/b$b;)V

    goto :goto_0

    :cond_4
    const-string v0, "U"

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->k()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/protobuf/b$k;->b([B)Lcom/xiaomi/push/protobuf/b$k;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/log/b;->a(Landroid/content/Context;)Lcom/xiaomi/push/log/b;

    move-result-object v0

    invoke-virtual {v6}, Lcom/xiaomi/push/protobuf/b$k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/xiaomi/push/protobuf/b$k;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v6}, Lcom/xiaomi/push/protobuf/b$k;->h()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v6}, Lcom/xiaomi/push/protobuf/b$k;->j()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Lcom/xiaomi/push/protobuf/b$k;->n()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    invoke-virtual {v6}, Lcom/xiaomi/push/protobuf/b$k;->l()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/log/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V

    new-instance v0, Lcom/xiaomi/slim/b;

    invoke-direct {v0}, Lcom/xiaomi/slim/b;-><init>()V

    invoke-virtual {v0, v10}, Lcom/xiaomi/slim/b;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UCA"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/au;

    iget-object v3, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/push/service/au;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/b;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "P"

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->k()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/protobuf/b$i;->b([B)Lcom/xiaomi/push/protobuf/b$i;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/slim/b;

    invoke-direct {v1}, Lcom/xiaomi/slim/b;-><init>()V

    invoke-virtual {v1, v10}, Lcom/xiaomi/slim/b;->a(I)V

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PCA"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/push/protobuf/b$i;

    invoke-direct {v2}, Lcom/xiaomi/push/protobuf/b$i;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$i;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$i;->d()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/b$i;->a(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/protobuf/b$i;

    :cond_6
    invoke-virtual {v2}, Lcom/xiaomi/push/protobuf/b$i;->c()[B

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/xiaomi/slim/b;->a([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/au;

    iget-object v3, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, v3, v1}, Lcom/xiaomi/push/service/au;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/b;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACK msgP: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "NOTIFY"

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->k()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/protobuf/b$h;->b([B)Lcom/xiaomi/push/protobuf/b$h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify by server err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$h;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recv SECMSG errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "BIND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->k()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/protobuf/b$d;->b([B)Lcom/xiaomi/push/protobuf/b$d;

    move-result-object v7

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->j()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/am;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/am$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/b$d;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: channel bind succeeded, chid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/push/service/am$c;->c:Lcom/xiaomi/push/service/am$c;

    move v3, v10

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$c;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/b$d;->f()Ljava/lang/String;

    move-result-object v5

    const-string v1, "auth"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "invalid-sig"

    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/b$d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: bind error invalid-sig token = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/push/service/am$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sec = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/push/service/am$b;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/push/thrift/a;->Q:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    invoke-static {v10, v1, v2, v4, v10}, Lcom/xiaomi/stats/h;->a(IIILjava/lang/String;I)V

    :cond_b
    sget-object v1, Lcom/xiaomi/push/service/am$c;->a:Lcom/xiaomi/push/service/am$c;

    const/4 v3, 0x5

    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/b$d;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$c;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/am;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind failed, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/b$d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "cancel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/xiaomi/push/service/am$c;->a:Lcom/xiaomi/push/service/am$c;

    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/b$d;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$c;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/push/service/am;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    const-string v1, "wait"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/am$b;)V

    sget-object v1, Lcom/xiaomi/push/service/am$c;->a:Lcom/xiaomi/push/service/am$c;

    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/b$d;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$c;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    const-string v1, "KICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->k()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/protobuf/b$g;->b([B)Lcom/xiaomi/push/protobuf/b$g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$g;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/b$g;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kicked by server, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const-string v0, "wait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/xiaomi/push/service/am;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/am$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/am$b;)V

    sget-object v1, Lcom/xiaomi/push/service/am$c;->a:Lcom/xiaomi/push/service/am$c;

    move v2, v7

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$c;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    move-object v1, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/xiaomi/push/service/am;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
