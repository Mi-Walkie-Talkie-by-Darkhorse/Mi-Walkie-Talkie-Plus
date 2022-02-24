.class public Lcom/xiaomi/push/gj$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/push/go;

.field private a:Lcom/xiaomi/push/gw;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/go;Lcom/xiaomi/push/gw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/gj$a;->a:Lcom/xiaomi/push/go;

    iput-object p2, p0, Lcom/xiaomi/push/gj$a;->a:Lcom/xiaomi/push/gw;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/fy;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/gj$a;->a:Lcom/xiaomi/push/go;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/go;->a(Lcom/xiaomi/push/fy;)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/ha;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/gj$a;->a:Lcom/xiaomi/push/gw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/push/gw;->a(Lcom/xiaomi/push/ha;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/gj$a;->a:Lcom/xiaomi/push/go;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/go;->a(Lcom/xiaomi/push/ha;)V

    :cond_1
    return-void
.end method
