.class Lcom/xiaomi/push/dz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/dz;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/push/dz;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/push/dz;->a:I

    iput-object p4, p0, Lcom/xiaomi/push/dz;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/dz;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/push/dz;->a:Ljava/lang/String;

    iget v2, p0, Lcom/xiaomi/push/dz;->a:I

    iget-object v3, p0, Lcom/xiaomi/push/dz;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/dy;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
