.class Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread$1;
.super Landroid/os/Handler;
.source "CustomHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread$1;->this$0:Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread$1;->this$0:Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->processMessage(Landroid/os/Message;)V

    return-void
.end method
