.class Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;->c:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;->a:Z

    iput p3, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;->c:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;->c:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;->c:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;->b:I

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;->b(I)V

    goto :goto_0
.end method
