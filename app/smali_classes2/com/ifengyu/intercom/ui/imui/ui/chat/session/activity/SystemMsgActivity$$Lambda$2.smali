.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/internal/util/a$a;


# static fields
.field static final $instance:Lio/reactivex/internal/util/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$2;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$2;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$2;->$instance:Lio/reactivex/internal/util/a$a;

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

    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->lambda$initData$0$SystemMsgActivity(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    return v0
.end method
