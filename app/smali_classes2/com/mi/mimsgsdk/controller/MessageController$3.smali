.class Lcom/mi/mimsgsdk/controller/MessageController$3;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$3;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventGetServiceToken()V
    .locals 0

    return-void
.end method

.method public onEventInvalidPacket()V
    .locals 0

    return-void
.end method

.method public onEventKickedByServer(IJLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEventServiceTokenExpired()V
    .locals 0

    return-void
.end method

.method public onEventShouldCheckUpdate()V
    .locals 0

    return-void
.end method
