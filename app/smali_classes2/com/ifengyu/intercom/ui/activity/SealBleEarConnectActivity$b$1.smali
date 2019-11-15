.class Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b$1;
.super Ljava/lang/Object;
.source "SealBleEarConnectActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Lcom/ifengyu/intercom/bean/BtEarBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b$1;->a:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/bean/BtEarBean;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BtEarBean;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BtEarBean;->getRssi()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BtEarBean;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BtEarBean;->getRssi()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$b$1;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method
