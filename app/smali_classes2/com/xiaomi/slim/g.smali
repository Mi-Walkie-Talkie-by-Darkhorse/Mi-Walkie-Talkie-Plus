.class Lcom/xiaomi/slim/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/slim/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/slim/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/slim/g;->a:Lcom/xiaomi/slim/f;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/slim/g;->a:Lcom/xiaomi/slim/f;

    invoke-static {v0}, Lcom/xiaomi/slim/f;->a(Lcom/xiaomi/slim/f;)Lcom/xiaomi/slim/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/slim/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/slim/g;->a:Lcom/xiaomi/slim/f;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/slim/f;->c(ILjava/lang/Exception;)V

    goto :goto_0
.end method
