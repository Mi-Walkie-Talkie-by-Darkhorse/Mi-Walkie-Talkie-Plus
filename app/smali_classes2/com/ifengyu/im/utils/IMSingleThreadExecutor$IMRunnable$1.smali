.class Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable$1;
.super Ljava/lang/Object;
.source "IMSingleThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;

.field final synthetic val$res:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable$1;->this$1:Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;

    iput-object p2, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable$1;->val$res:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable$1;->this$1:Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;

    invoke-static {v0}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;->access$100(Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;)Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable$1;->val$res:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method
