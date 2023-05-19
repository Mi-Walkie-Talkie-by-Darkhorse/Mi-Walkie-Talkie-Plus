.class public final synthetic Lcom/ifengyu/intercom/ui/talk/g2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/g2;->a:Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/g2;->a:Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->I3(Ljava/lang/Long;)V

    return-void
.end method
