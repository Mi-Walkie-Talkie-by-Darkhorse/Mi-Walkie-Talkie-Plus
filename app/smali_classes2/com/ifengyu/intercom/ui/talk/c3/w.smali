.class public final synthetic Lcom/ifengyu/intercom/ui/talk/c3/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/c3/j0;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;JJLcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/w;->a:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    iput-wide p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/w;->b:J

    iput-wide p4, p0, Lcom/ifengyu/intercom/ui/talk/c3/w;->c:J

    iput-object p6, p0, Lcom/ifengyu/intercom/ui/talk/c3/w;->d:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/w;->a:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    iget-wide v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/w;->b:J

    iget-wide v3, p0, Lcom/ifengyu/intercom/ui/talk/c3/w;->c:J

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/talk/c3/w;->d:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    move-object v6, p1

    check-cast v6, Lcom/ifengyu/talk/http/entity/SpeechMsg;

    invoke-virtual/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->V(JJLcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;Lcom/ifengyu/talk/http/entity/SpeechMsg;)V

    return-void
.end method
