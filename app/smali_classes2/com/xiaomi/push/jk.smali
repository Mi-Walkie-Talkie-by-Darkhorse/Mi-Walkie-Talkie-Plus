.class public Lcom/xiaomi/push/jk;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/xiaomi/push/jr;

.field private final a:Lcom/xiaomi/push/ka;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/jn$a;

    invoke-direct {v0}, Lcom/xiaomi/push/jn$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/jk;-><init>(Lcom/xiaomi/push/jt;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/jt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/push/ka;

    invoke-direct {v0}, Lcom/xiaomi/push/ka;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/jk;->a:Lcom/xiaomi/push/ka;

    invoke-interface {p1, v0}, Lcom/xiaomi/push/jt;->a(Lcom/xiaomi/push/kb;)Lcom/xiaomi/push/jr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/jk;->a:Lcom/xiaomi/push/jr;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/jg;[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/jk;->a:Lcom/xiaomi/push/ka;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/ka;->a([B)V

    iget-object p2, p0, Lcom/xiaomi/push/jk;->a:Lcom/xiaomi/push/jr;

    invoke-interface {p1, p2}, Lcom/xiaomi/push/jg;->a(Lcom/xiaomi/push/jr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/xiaomi/push/jk;->a:Lcom/xiaomi/push/jr;

    invoke-virtual {p1}, Lcom/xiaomi/push/jr;->k()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/xiaomi/push/jk;->a:Lcom/xiaomi/push/jr;

    invoke-virtual {p2}, Lcom/xiaomi/push/jr;->k()V

    throw p1
.end method
