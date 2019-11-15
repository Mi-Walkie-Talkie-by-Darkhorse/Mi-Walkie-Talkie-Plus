.class Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;
.super Lcom/ifengyu/intercom/node/b;
.source "BluetoothGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)Lcom/ifengyu/intercom/node/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/b;->getBleService()Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->access$002(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;Lcom/ifengyu/intercom/node/btle/BtleCentralService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)V

    goto :goto_0
.end method

.method public onBleServiceDisconnected()V
    .locals 0

    return-void
.end method
