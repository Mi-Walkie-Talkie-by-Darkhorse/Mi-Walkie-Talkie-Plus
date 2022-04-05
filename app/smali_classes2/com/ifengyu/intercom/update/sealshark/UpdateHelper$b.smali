.class Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/update/sealshark/e;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;->a(I)V

    return-void
.end method
