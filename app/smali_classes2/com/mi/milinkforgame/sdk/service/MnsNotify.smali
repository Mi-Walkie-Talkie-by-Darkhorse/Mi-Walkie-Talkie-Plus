.class public Lcom/mi/milinkforgame/sdk/service/MnsNotify;
.super Ljava/lang/Object;
.source "MnsNotify.java"


# static fields
.field private static CLIENT_MESSENGER:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/service/MnsNotify;->CLIENT_MESSENGER:Landroid/os/Messenger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessenger()Landroid/os/Messenger;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/service/MnsNotify;->CLIENT_MESSENGER:Landroid/os/Messenger;

    return-object v0
.end method

.method public static final sendEvent(I)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/mi/milinkforgame/sdk/service/MnsNotify;->sendEvent(IILjava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final sendEvent(II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/mi/milinkforgame/sdk/service/MnsNotify;->sendEvent(IILjava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final sendEvent(IILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mi/milinkforgame/sdk/service/MnsNotify;->sendEvent(IILjava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static sendEvent(IILjava/lang/Object;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/service/MnsNotify;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput p0, v2, Landroid/os/Message;->what:I

    iput p1, v2, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "event.extra"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "event.extra2"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0

    :cond_3
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg2:I

    goto :goto_0

    :cond_4
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "event.extra"

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    instance-of v3, p2, Ljava/io/Serializable;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "event.extra"

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static setMessenger(Landroid/os/Messenger;)V
    .locals 0

    sput-object p0, Lcom/mi/milinkforgame/sdk/service/MnsNotify;->CLIENT_MESSENGER:Landroid/os/Messenger;

    return-void
.end method
