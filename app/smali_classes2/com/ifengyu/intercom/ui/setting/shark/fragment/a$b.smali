.class Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$f;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->g:Ljava/lang/String;

    const-string v1, "state response: SHARK_FORBIDE"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->g:Ljava/lang/String;

    const-string v1, "state response: SHARK_EMPTY"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->g:Ljava/lang/String;

    const-string v2, "state response: failed"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->g:Ljava/lang/String;

    const-string v2, "state response: success"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a$b;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    :goto_0
    return-void
.end method
