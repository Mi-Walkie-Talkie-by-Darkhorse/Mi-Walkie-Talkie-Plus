.class Lcom/xiaomi/push/service/ak;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/xiaomi/push/service/au;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/xiaomi/push/service/au;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/ak;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/service/ak;->a:Lcom/xiaomi/push/service/au;

    iput p3, p0, Lcom/xiaomi/push/service/ak;->a:I

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->a:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/ak;->a:Lcom/xiaomi/push/service/au;

    iget v1, p0, Lcom/xiaomi/push/service/ak;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/au;->a(I)V

    return-void
.end method
