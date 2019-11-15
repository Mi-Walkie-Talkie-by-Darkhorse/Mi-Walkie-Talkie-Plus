.class Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$1;
.super Ljava/lang/Object;
.source "SealBleEarConnectActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->e(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SealBtEarHelpActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
