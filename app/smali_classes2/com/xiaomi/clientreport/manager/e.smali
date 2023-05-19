.class Lcom/xiaomi/clientreport/manager/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/clientreport/manager/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/clientreport/manager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/e;->a:Lcom/xiaomi/clientreport/manager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/e;->a:Lcom/xiaomi/clientreport/manager/d;

    iget-object v0, v0, Lcom/xiaomi/clientreport/manager/d;->a:Lcom/xiaomi/clientreport/manager/a;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->a(Lcom/xiaomi/clientreport/manager/a;)V

    return-void
.end method
