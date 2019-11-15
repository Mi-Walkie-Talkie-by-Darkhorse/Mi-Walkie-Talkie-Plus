.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final $instance:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$$Lambda$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$$Lambda$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$$Lambda$1;->$instance:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    check-cast p2, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->lambda$static$1$MessageListPanelEx(Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/im/imservice/model/MessageEntity;)I

    move-result v0

    return v0
.end method
