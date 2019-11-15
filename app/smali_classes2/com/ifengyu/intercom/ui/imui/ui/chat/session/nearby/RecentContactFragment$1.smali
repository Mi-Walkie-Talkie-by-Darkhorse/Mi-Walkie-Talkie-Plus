.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;
.super Ljava/lang/Object;
.source "RecentContactFragment.java"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/q",
        "<",
        "Lcom/ifengyu/im/DB/entity/UserEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;

.field final synthetic val$userEntityMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;->val$userEntityMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;->val$userEntityMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;->val$userEntityMap:Ljava/util/Map;

    iget v1, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;->onNext(Lcom/ifengyu/im/DB/entity/UserEntity;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    return-void
.end method
