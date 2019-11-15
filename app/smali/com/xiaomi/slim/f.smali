.class public Lcom/xiaomi/slim/f;
.super Lcom/xiaomi/smack/h;


# instance fields
.field private w:Ljava/lang/Thread;

.field private x:Lcom/xiaomi/slim/c;

.field private y:Lcom/xiaomi/slim/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/h;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/slim/f;)Lcom/xiaomi/slim/c;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/slim/f;->x:Lcom/xiaomi/slim/c;

    return-object v0
.end method

.method private c(Z)Lcom/xiaomi/slim/b;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/slim/b;

    invoke-direct {v0}, Lcom/xiaomi/slim/b;-><init>()V

    const-string v1, "PING"

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/xiaomi/push/protobuf/b$j;

    invoke-direct {v1}, Lcom/xiaomi/push/protobuf/b$j;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/slim/f;->c()Lcom/xiaomi/smack/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/smack/b;->a()[B

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/push/protobuf/b$b;->b([B)Lcom/xiaomi/push/protobuf/b$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/protobuf/b$j;->a(Lcom/xiaomi/push/protobuf/b$b;)Lcom/xiaomi/push/protobuf/b$j;
    :try_end_0
    .catch Lcom/google/protobuf/micro/d; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Lcom/xiaomi/stats/h;->c()[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/google/protobuf/micro/a;->a([B)Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/protobuf/b$j;->a(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/protobuf/b$j;

    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/b$j;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/slim/b;->a([BLjava/lang/String;)V

    return-object v0

    :cond_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private w()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/xiaomi/slim/c;

    iget-object v1, p0, Lcom/xiaomi/slim/f;->q:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/slim/c;-><init>(Ljava/io/InputStream;Lcom/xiaomi/slim/f;)V

    iput-object v0, p0, Lcom/xiaomi/slim/f;->x:Lcom/xiaomi/slim/c;

    new-instance v0, Lcom/xiaomi/slim/d;

    iget-object v1, p0, Lcom/xiaomi/slim/f;->q:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/slim/d;-><init>(Ljava/io/OutputStream;Lcom/xiaomi/smack/a;)V

    iput-object v0, p0, Lcom/xiaomi/slim/f;->y:Lcom/xiaomi/slim/d;

    new-instance v0, Lcom/xiaomi/slim/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/slim/f;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/slim/g;-><init>(Lcom/xiaomi/slim/f;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/slim/f;->w:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/xiaomi/slim/f;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/smack/l;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected declared-synchronized a(ILjava/lang/Exception;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/slim/f;->x:Lcom/xiaomi/slim/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/slim/f;->x:Lcom/xiaomi/slim/c;

    invoke-virtual {v0}, Lcom/xiaomi/slim/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/slim/f;->x:Lcom/xiaomi/slim/c;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/slim/f;->y:Lcom/xiaomi/slim/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/slim/f;->y:Lcom/xiaomi/slim/d;

    invoke-virtual {v0}, Lcom/xiaomi/slim/d;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/xiaomi/slim/f;->y:Lcom/xiaomi/slim/d;

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/smack/h;->a(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/am$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/slim/f;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/xiaomi/slim/a;->a(Lcom/xiaomi/push/service/am$b;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/xiaomi/slim/b;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV blob chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->c()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PING"

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV ping id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/slim/f;->v()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/slim/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/a$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a$a;->a(Lcom/xiaomi/slim/b;)V

    goto :goto_1

    :cond_4
    const-string v0, "CLOSE"

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/slim/f;->c(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/smack/packet/d;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/slim/b;->a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/slim/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/slim/f;->b(Lcom/xiaomi/slim/b;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p0}, Lcom/xiaomi/slim/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/slim/f;->y:Lcom/xiaomi/slim/d;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/slim/f;->c(Z)Lcom/xiaomi/slim/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] SND ping id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/slim/f;->b(Lcom/xiaomi/slim/b;)V

    invoke-virtual {p0}, Lcom/xiaomi/slim/f;->u()V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/smack/l;

    const-string v1, "The BlobWriter is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([Lcom/xiaomi/slim/b;)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/slim/f;->b(Lcom/xiaomi/slim/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([Lcom/xiaomi/smack/packet/d;)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/slim/f;->a(Lcom/xiaomi/smack/packet/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/slim/f;->w()V

    iget-object v0, p0, Lcom/xiaomi/slim/f;->y:Lcom/xiaomi/slim/d;

    invoke-virtual {v0}, Lcom/xiaomi/slim/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/xiaomi/slim/b;)V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/slim/f;->y:Lcom/xiaomi/slim/d;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/slim/f;->y:Lcom/xiaomi/slim/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/slim/d;->a(Lcom/xiaomi/slim/b;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/slim/f;->o:J

    invoke-virtual {p1}, Lcom/xiaomi/slim/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/slim/f;->n:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/util/g;->a(Landroid/content/Context;Ljava/lang/String;JZJ)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/slim/f;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/a$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a$a;->a(Lcom/xiaomi/slim/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/smack/l;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/xiaomi/smack/l;

    const-string v1, "the writer is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method b(Lcom/xiaomi/smack/packet/d;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/slim/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/a$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/a$a;->a(Lcom/xiaomi/smack/packet/d;)V

    goto :goto_0
.end method
