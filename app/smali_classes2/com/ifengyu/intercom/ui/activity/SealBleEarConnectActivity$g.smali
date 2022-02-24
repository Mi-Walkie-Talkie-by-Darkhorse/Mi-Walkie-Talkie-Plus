.class Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$g;
.super Lcom/ifengyu/intercom/ui/baseui/b;
.source "SealBleEarConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/b<",
        "Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$g;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
    .locals 2

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sort list and refresh bt ear recycler"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->k(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$g$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$g$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$g;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->l(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Lcom/ifengyu/intercom/ui/adapter/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$g;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V

    return-void
.end method
