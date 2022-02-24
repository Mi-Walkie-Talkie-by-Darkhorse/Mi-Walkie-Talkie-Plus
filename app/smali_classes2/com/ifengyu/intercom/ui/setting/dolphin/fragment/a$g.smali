.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;
.super Ljava/lang/Object;
.source "DolphinChannelBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v2, "state response: final"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v2, "state response: not support"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v1, "state response: param error"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v2, "state response: failed"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne v1, v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->e(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v2, "state response: success"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    :goto_0
    return-void
.end method
