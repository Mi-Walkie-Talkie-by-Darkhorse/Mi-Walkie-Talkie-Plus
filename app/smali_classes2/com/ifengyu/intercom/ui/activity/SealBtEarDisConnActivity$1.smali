.class Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity$1;
.super Ljava/lang/Object;
.source "SealBtEarDisConnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->receiveBtEarDisConnectStateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity$1;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity$1;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;->SEAL_BTEAR_DISCONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity$1;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;->SEAL_BTEAR_CONN_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    if-ne v0, v1, :cond_0

    const-string v0, "\u65ad\u5f00\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;->finish()V

    :cond_0
    return-void
.end method
