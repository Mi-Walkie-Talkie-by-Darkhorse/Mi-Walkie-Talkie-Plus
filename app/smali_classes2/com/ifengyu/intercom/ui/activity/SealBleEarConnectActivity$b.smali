.class Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;
.super Lcom/ifengyu/intercom/ui/baseui/a;
.source "SealBleEarConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/a",
        "<",
        "Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sort list and refresh bt ear recycler"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->d(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/adapter/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/b;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    return-void
.end method
