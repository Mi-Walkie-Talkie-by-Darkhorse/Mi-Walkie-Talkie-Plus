.class Lcom/xiaomi/stats/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/am$b$a;


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:Lcom/xiaomi/push/service/am$b;

.field private c:Lcom/xiaomi/smack/a;

.field private d:Lcom/xiaomi/push/service/am$c;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/am$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stats/a;->f:Z

    iput-object p1, p0, Lcom/xiaomi/stats/a;->a:Lcom/xiaomi/push/service/XMPushService;

    sget-object v0, Lcom/xiaomi/push/service/am$c;->b:Lcom/xiaomi/push/service/am$c;

    iput-object v0, p0, Lcom/xiaomi/stats/a;->d:Lcom/xiaomi/push/service/am$c;

    iput-object p2, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/am$b;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stats/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/stats/a;->c()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/am$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/am$b;->b(Lcom/xiaomi/push/service/am$b$a;)V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/stats/a;->b()V

    iget-boolean v0, p0, Lcom/xiaomi/stats/a;->f:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xiaomi/stats/a;->e:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stats/f;->f()Lcom/xiaomi/push/thrift/b;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/stats/c;->a:[I

    iget-object v2, p0, Lcom/xiaomi/stats/a;->d:Lcom/xiaomi/push/service/am$c;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/am$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stats/a;->c:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->b(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    iget-object v1, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/am$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/am$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->d(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/thrift/b;->c:I

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/am$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/am$b;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(B)Lcom/xiaomi/push/thrift/b;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/f;->a(Lcom/xiaomi/push/thrift/b;)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/xiaomi/stats/a;->e:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->I:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/push/thrift/b;->b:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/xiaomi/stats/a;->e:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/xiaomi/push/thrift/a;->P:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/push/thrift/b;->b:I

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stats/f;->b()Lcom/xiaomi/stats/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/e;->a()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stats/d;->c(Ljava/lang/Exception;)Lcom/xiaomi/stats/d$a;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/stats/d$a;->a:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v2

    iput v2, v0, Lcom/xiaomi/push/thrift/b;->b:I

    iget-object v1, v1, Lcom/xiaomi/stats/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->c(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/xiaomi/push/thrift/a;->E:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/push/thrift/b;->b:I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/am$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$b$a;)V

    iget-object v0, p0, Lcom/xiaomi/stats/a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->h()Lcom/xiaomi/smack/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stats/a;->c:Lcom/xiaomi/smack/a;

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/am$c;Lcom/xiaomi/push/service/am$c;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/stats/a;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/am$c;->b:Lcom/xiaomi/push/service/am$c;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/xiaomi/stats/a;->d:Lcom/xiaomi/push/service/am$c;

    iput p3, p0, Lcom/xiaomi/stats/a;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/stats/a;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stats/a;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/stats/b;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/stats/b;-><init>(Lcom/xiaomi/stats/a;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    return-void
.end method
