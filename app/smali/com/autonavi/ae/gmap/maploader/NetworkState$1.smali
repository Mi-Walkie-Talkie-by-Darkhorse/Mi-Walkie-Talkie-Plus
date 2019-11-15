.class Lcom/autonavi/ae/gmap/maploader/NetworkState$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/maploader/NetworkState;->initNetworkReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/maploader/NetworkState;


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/maploader/NetworkState;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState$1;->this$0:Lcom/autonavi/ae/gmap/maploader/NetworkState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState$1;->this$0:Lcom/autonavi/ae/gmap/maploader/NetworkState;

    invoke-static {v0, p1}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->access$000(Lcom/autonavi/ae/gmap/maploader/NetworkState;Landroid/content/Context;)V

    return-void
.end method
