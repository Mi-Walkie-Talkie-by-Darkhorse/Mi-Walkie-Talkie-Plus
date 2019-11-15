.class public abstract Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MiPushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MiPushClientCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private category:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->category:Ljava/lang/String;

    return-object v0
.end method

.method public onCommandResult(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceiveMessage(Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 0

    return-void
.end method

.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onSubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnsubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->category:Ljava/lang/String;

    return-void
.end method
