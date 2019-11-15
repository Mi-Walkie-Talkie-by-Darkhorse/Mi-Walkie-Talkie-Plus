.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/b/f;


# instance fields
.field private final arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader$$Lambda$3;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader$$Lambda$3;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->onMessageLoaded(Ljava/util/List;)V

    return-void
.end method
