.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/b/p;


# static fields
.field static final $instance:Lio/reactivex/b/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$$Lambda$0;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$$Lambda$0;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$$Lambda$0;->$instance:Lio/reactivex/b/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->lambda$initData$0$RecentContactFragment(Lcom/ifengyu/im/DB/entity/GroupEntity;)Z

    move-result v0

    return v0
.end method
