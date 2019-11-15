.class Lcom/ifengyu/im/imservice/services/NearbyService$1;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "NearbyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/services/NearbyService;->onNearbyInfoSearched(Lcom/amap/api/services/nearby/NearbySearchResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/services/NearbyService;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/services/NearbyService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/NearbyService$1;->this$0:Lcom/ifengyu/im/imservice/services/NearbyService;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 4

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/event/NearbyEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->QUERY_FAILED:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/im/imservice/event/NearbyEvent;-><init>(Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/im/imservice/services/NearbyService;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/event/NearbyEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->QUERY_SUCCESS:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    invoke-direct {v1, v2, p1}, Lcom/ifengyu/im/imservice/event/NearbyEvent;-><init>(Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 4

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/event/NearbyEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->QUERY_FAILED:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/im/imservice/event/NearbyEvent;-><init>(Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    return-void
.end method
