.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$$Lambda$0;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$$Lambda$0;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->lambda$onStoped$0$AudioPlayer$3()V

    return-void
.end method
