.class Lcom/xiaomi/push/log/b$a;
.super Lcom/xiaomi/push/log/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/log/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/log/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/log/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/log/b$a;->a:Lcom/xiaomi/push/log/b;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/log/b$b;-><init>(Lcom/xiaomi/push/log/b;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/log/b$a;->a:Lcom/xiaomi/push/log/b;

    invoke-static {v0}, Lcom/xiaomi/push/log/b;->c(Lcom/xiaomi/push/log/b;)V

    return-void
.end method
