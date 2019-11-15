.class Lcom/mi/mimsgsdk/service/MessageHandler$1;
.super Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/service/MessageHandler;->initHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/service/MessageHandler;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/service/MessageHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/service/MessageHandler$1;->this$0:Lcom/mi/mimsgsdk/service/MessageHandler;

    invoke-direct {p0, p2}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
