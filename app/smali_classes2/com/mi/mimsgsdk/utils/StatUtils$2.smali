.class final Lcom/mi/mimsgsdk/utils/StatUtils$2;
.super Ljava/lang/Object;
.source "StatUtils.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/utils/StatUtils;->statis(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$type:Lcom/mi/mimsgsdk/utils/LogType;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/utils/StatUtils$2;->val$type:Lcom/mi/mimsgsdk/utils/LogType;

    iput-object p2, p0, Lcom/mi/mimsgsdk/utils/StatUtils$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/utils/StatUtils$2;->call(Lrx/e;)V

    return-void
.end method

.method public call(Lrx/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;->newBuilder()Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;->setBizType(I)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/utils/StatUtils$2;->val$type:Lcom/mi/mimsgsdk/utils/LogType;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/utils/LogType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;->setLogType(I)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/proto/Statis$Platform;->ANDROID:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;->setPlatform(Lcom/mi/mimsgsdk/proto/Statis$Platform;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;->setDate(J)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/utils/StatUtils$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;->setExtStr(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem$Builder;->build()Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->newBuilder()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;->addItems(Lcom/mi/mimsgsdk/proto/Statis$ActionLogItem;)Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq$Builder;->build()Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/utils/StatUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullOldGroupMessage request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;-><init>()V

    const-string v2, "appData.recommend.actionLog"

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Statis$ActionLogReq;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setData([B)V

    invoke-static {v1}, Lcom/mi/mimsgsdk/utils/StatUtils;->access$100(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;)V

    return-void
.end method
