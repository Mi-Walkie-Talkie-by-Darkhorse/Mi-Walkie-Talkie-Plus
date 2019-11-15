.class Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;
.super Landroid/os/Handler;
.source "MiVoipSdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;->onJoinRes(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;->onWriteLog(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$108(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)I

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;->onUserJoin(I)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$200(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    const-string v1, "joinVoipRoom"

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$300(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/mi/mimsgsdk/utils/StatUtils;->isFastDoubleOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$108(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)I

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;->onUserJoin(I)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    const-string v1, "rejoinVoipRoom"

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$300(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$110(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)I

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;->onUserLeave(I)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    const-string v1, "exitVoipRoom"

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$300(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$110(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)I

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;->onUserLeave(I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lio/agora/rtc/a$a;

    check-cast v0, [Lio/agora/rtc/a$a;

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;->onSpeakers([Lio/agora/rtc/a$a;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$000(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;->onUserMute(IZ)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$1;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    const-string v1, "offlineVoipRoom"

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$300(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_8
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_7
    .end sparse-switch
.end method
