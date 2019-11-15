.class Lcom/mi/mimsgsdk/controller/MessageController$21;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->sendAsyncWithResponse(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$callback:Lcom/mi/mimsgsdk/service/aidl/ISendCallback;

.field final synthetic val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$21;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-object p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$21;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    iput p3, p0, Lcom/mi/mimsgsdk/controller/MessageController$21;->val$timeout:I

    iput-object p4, p0, Lcom/mi/mimsgsdk/controller/MessageController$21;->val$callback:Lcom/mi/mimsgsdk/service/aidl/ISendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$21;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$21;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    iget v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$21;->val$timeout:I

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$21;->val$callback:Lcom/mi/mimsgsdk/service/aidl/ISendCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->sendAsyncWithResponse(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
