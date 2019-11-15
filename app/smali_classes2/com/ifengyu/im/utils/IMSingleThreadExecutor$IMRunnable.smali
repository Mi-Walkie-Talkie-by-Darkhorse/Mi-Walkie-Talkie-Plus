.class Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;
.super Ljava/lang/Object;
.source "IMSingleThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/utils/IMSingleThreadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IMRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private task:Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ifengyu/im/utils/IMSingleThreadExecutor;


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/utils/IMSingleThreadExecutor;Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;->this$0:Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;->task:Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;

    return-void
.end method

.method static synthetic access$100(Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;)Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;->task:Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;->task:Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;

    invoke-interface {v0}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;->runInBackground()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;->this$0:Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    invoke-static {v1}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->access$000(Lcom/ifengyu/im/utils/IMSingleThreadExecutor;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;->this$0:Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    invoke-static {v1}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->access$000(Lcom/ifengyu/im/utils/IMSingleThreadExecutor;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable$1;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable$1;-><init>(Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
