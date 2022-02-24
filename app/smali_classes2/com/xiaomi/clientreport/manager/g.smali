.class Lcom/xiaomi/clientreport/manager/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/clientreport/manager/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/clientreport/manager/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/g;->a:Lcom/xiaomi/clientreport/manager/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/g;->a:Lcom/xiaomi/clientreport/manager/f;

    iget-object v0, v0, Lcom/xiaomi/clientreport/manager/f;->a:Lcom/xiaomi/clientreport/manager/a;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->b(Lcom/xiaomi/clientreport/manager/a;)V

    return-void
.end method
